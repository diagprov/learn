package ch.vennard.antony.example.androidrust;

public class RustGreetings {

    public static native String greeting(final String pattern);

    public String sayHello(String to) {
        return greeting(to);
    }
}
