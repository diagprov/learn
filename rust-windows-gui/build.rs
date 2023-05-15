
use winapi;
use winres;

const MANIFEST_BEGIN: &'static str = r#"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">"#;

const MANIFEST_END: &'static str = r#"
</assembly>"#;

const MANIFEST_REQUIRE_ADMIN: &'static str = r#"
<trustInfo xmlns="urn:schemas-microsoft-com:asm.v3">
    <security>
        <requestedPrivileges>
            <requestedExecutionLevel level="requireAdministrator" uiAccess="false" />
        </requestedPrivileges>
    </security>
</trustInfo>"#;

const MANIFEST_COMMON_CONTROLS: &'static str = r#"
<dependency>
    <dependentAssembly>
        <assemblyIdentity
            type="win32"
            name="Microsoft.Windows.Common-Controls"
            version="6.0.0.0"
            processorArchitecture="*"
            publicKeyToken="6595b64144ccf1df"
            language="*"
        />
    </dependentAssembly>
</dependency>"#;

const MANIFEST_ASSEMBLY_IDENTITY: &'static str = r#"
<assemblyIdentity
    version="1.0.0.0"
    processorArchitecture="X86"
    name="ch.vennard.win32.nativeguidemo"
    type="win32"
/>
<description>Your application description here.</description>"#;

fn main() {
    if cfg!(target_os = "windows") {
        let mut res = winres::WindowsResource::new();
        res.set_language(winapi::um::winnt::MAKELANGID(
            winapi::um::winnt::LANG_ENGLISH,
            winapi::um::winnt::SUBLANG_ENGLISH_UK
        ));

        let mut manifest = String::from(MANIFEST_BEGIN);
        manifest.push_str(MANIFEST_ASSEMBLY_IDENTITY);
        //manifest.push_str(MANIFEST_REQUIRE_ADMIN);
        manifest.push_str(MANIFEST_COMMON_CONTROLS);
        manifest.push_str(MANIFEST_END);
        res.set_manifest(manifest.as_str());
        res.compile().unwrap();
    }
}