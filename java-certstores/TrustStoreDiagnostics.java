import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Enumeration;

public class TrustStoreDiagnostics {

    public static void main(String[] args) {
        printSeparator(70);
        System.out.println("TRUST STORE SOURCE DIAGNOSTIC");
        System.out.println("Java Version: " + System.getProperty("java.version"));
        System.out.println("Java Home: " + System.getProperty("java.home"));
        printSeparator(70);

        TrustStoreSource source = analyzeSource();

        System.out.println("\n--- Source Determination ---");
        System.out.println("Source Type: " + source.type);
        System.out.println("Source Description: " + source.description);
        System.out.println("Effective Path: " + source.path);
        if (source.passwordSource != null) {
            System.out.println("Password Source: " + source.passwordSource);
        }

        System.out.println("\n");
        printSeparator(70);
        System.out.println("CERTIFICATE DETAILS");
        printSeparator(70);

        loadAndDisplayCerts(source);
    }

    static void printSeparator(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append('=');
        }
        System.out.println(sb.toString());
    }

    static TrustStoreSource analyzeSource() {
        String javaHome = System.getProperty("java.home");
        String defaultPath = javaHome + File.separator + "lib" + File.separator 
            + "security" + File.separator + "cacerts";

        String sysStore = System.getProperty("javax.net.ssl.trustStore");
        String sysPassword = System.getProperty("javax.net.ssl.trustStorePassword");

        String secStore = Security.getProperty("javax.net.ssl.trustStore");
        String secType = Security.getProperty("javax.net.ssl.trustStoreType");

        String effectivePath;
        SourceType sourceType;
        String description;
        String passwordSource = null;

        if (sysStore != null) {
            effectivePath = sysStore;
            sourceType = SourceType.COMMAND_LINE;
            description = "System property (-Djavax.net.ssl.trustStore or JAVA_TOOL_OPTIONS)";
            if (sysPassword != null) {
                passwordSource = "System property";
            }
        } else if (secStore != null && !secStore.equals(defaultPath) && !secStore.contains("${java.home}")) {
            effectivePath = resolvePath(secStore, javaHome);
            sourceType = SourceType.POLICY_FILE;
            description = "java.security policy file (" + findSecurityPropertiesPath() + ")";
            String secPassword = Security.getProperty("javax.net.ssl.trustStorePassword");
            if (secPassword != null && !secPassword.equals("changeit")) {
                passwordSource = "java.security policy file";
            }
        } else {
            effectivePath = defaultPath;
            File defaultFile = new File(defaultPath);
            if (defaultFile.exists()) {
                sourceType = SourceType.DEFAULT_JRE;
                description = "JRE default cacerts (no override configured)";
            } else {
                sourceType = SourceType.UNKNOWN;
                description = "Default path does not exist - trust store configuration unclear";
            }
        }

        if (sourceType == SourceType.DEFAULT_JRE && secStore != null) {
            if (secStore.contains("cacerts") || secStore.equals(defaultPath) || secStore.contains("${java.home}")) {
                sourceType = SourceType.POLICY_FILE_DEFAULT;
                description = "java.security policy file explicitly sets JRE default";
            }
        }

        String storeType;
        if (sysStore != null) {
            storeType = System.getProperty("javax.net.ssl.trustStoreType", "JKS");
        } else if (secType != null) {
            storeType = secType;
        } else {
            storeType = "JKS";
        }

        return new TrustStoreSource(sourceType, description, effectivePath, passwordSource, storeType);
    }

    static String findSecurityPropertiesPath() {
        String javaHome = System.getProperty("java.home");
        File confPath = new File(javaHome, "conf" + File.separator + "security" + File.separator + "java.security");
        if (confPath.exists()) {
            return confPath.getAbsolutePath();
        }

        File libPath = new File(javaHome, "lib" + File.separator + "security" + File.separator + "java.security");
        if (libPath.exists()) {
            return libPath.getAbsolutePath();
        }

        String customProps = System.getProperty("java.security.properties");
        if (customProps != null) {
            return customProps + " (custom)";
        }

        return "unknown location";
    }

    static String resolvePath(String path, String javaHome) {
        return path.replace("${java.home}", javaHome)
                   .replace("${user.home}", System.getProperty("user.home"));
    }

    static void loadAndDisplayCerts(TrustStoreSource source) {
        char[] password = "changeit".toCharArray();
        String sysPassword = System.getProperty("javax.net.ssl.trustStorePassword");
        String secPassword = Security.getProperty("javax.net.ssl.trustStorePassword");

        if (sysPassword != null) {
            password = sysPassword.toCharArray();
        } else if (secPassword != null) {
            password = secPassword.toCharArray();
        }

        try {
            KeyStore ks = KeyStore.getInstance(source.storeType);
            File storeFile = new File(source.path);

            if (!storeFile.exists()) {
                System.out.println("ERROR: Trust store file not found: " + source.path);
                return;
            }

            FileInputStream fis = new FileInputStream(storeFile);
            try {
                ks.load(fis, password);
            } finally {
                fis.close();
            }

            Enumeration<String> aliases = ks.aliases();
            int count = 0;

            while (aliases.hasMoreElements()) {
                String alias = aliases.nextElement();

                if (ks.isCertificateEntry(alias)) {
                    X509Certificate cert = (X509Certificate) ks.getCertificate(alias);
                    count++;
                    displayCertificateDetails(alias, cert);
                }
            }

            System.out.println("\n");
            printSeparator(70);
            System.out.println("Total certificates: " + count);
            printSeparator(70);

        } catch (Exception e) {
            System.out.println("ERROR loading trust store: " + e.getMessage());
        }
    }

    static void displayCertificateDetails(String alias, X509Certificate cert) {
        String subjectDN = cert.getSubjectX500Principal().getName();
        String commonName = extractCommonName(subjectDN);
        String serialNumber = cert.getSerialNumber().toString(16).toUpperCase();

        PublicKey publicKey = cert.getPublicKey();
        String keyAlgorithm = publicKey.getAlgorithm();
        String keyStrength = getKeyStrength(publicKey);

        System.out.println();
        System.out.println(alias + ":");
        System.out.println("    Common Name:  " + (commonName.isEmpty() ? "[No CN]" : commonName));
        System.out.println("    Serial:       " + serialNumber);
        System.out.println("    Valid From:   " + cert.getNotBefore());
        System.out.println("    Valid Until:  " + cert.getNotAfter());
        System.out.println("    Key Type:     " + keyAlgorithm);
        System.out.println("    Key Strength: " + keyStrength);
        System.out.println("    Sig Algorithm:" + cert.getSigAlgName());
        printDashes(70);
    }

    static void printDashes(int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append('-');
        }
        System.out.println(sb.toString());
    }

    static String getKeyStrength(PublicKey key) {
        try {
            if (key instanceof RSAPublicKey) {
                int bits = ((RSAPublicKey) key).getModulus().bitLength();
                return bits + " bits (RSA)";
            } else if (key instanceof ECPublicKey) {
                int bits = ((ECPublicKey) key).getParams().getCurve().getField().getFieldSize();
                return bits + " bits (ECC)";
            } else if (key instanceof DSAPublicKey) {
                int bits = ((DSAPublicKey) key).getParams().getP().bitLength();
                return bits + " bits (DSA)";
            } else {
                return "Unknown (" + key.getAlgorithm() + ")";
            }
        } catch (Exception e) {
            return "Unknown (error: " + e.getMessage() + ")";
        }
    }

    static String extractCommonName(String dn) {
        String[] parts = dn.split(",");
        for (String part : parts) {
            part = part.trim();
            if (part.startsWith("CN=")) {
                return unescapeDNValue(part.substring(3));
            }
            if (part.toUpperCase().startsWith("CN=")) {
                return unescapeDNValue(part.substring(3));
            }
        }
        return "";
    }

    static String unescapeDNValue(String value) {
        if (value.startsWith("\"") && value.endsWith("\"") && value.length() > 1) {
            value = value.substring(1, value.length() - 1);
        }
        return value.replace("\\,", ",")
                    .replace("\\=", "=")
                    .replace("\\+", "+")
                    .replace("\\\"", "\"")
                    .replace("\\\\", "\\");
    }

    enum SourceType {
        COMMAND_LINE,
        POLICY_FILE,
        POLICY_FILE_DEFAULT,
        DEFAULT_JRE,
        UNKNOWN
    }

    static class TrustStoreSource {
        final SourceType type;
        final String description;
        final String path;
        final String passwordSource;
        final String storeType;

        TrustStoreSource(SourceType type, String description, String path, 
                        String passwordSource, String storeType) {
            this.type = type;
            this.description = description;
            this.path = path;
            this.passwordSource = passwordSource;
            this.storeType = storeType;
        }
    }
}

