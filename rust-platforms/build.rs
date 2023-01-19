
use std::env;

fn main () {
    for (key, value) in env::vars() {
        eprintln!("{}: {}", key, value);
    }
    eprintln!("");

    println!("cargo:rustc-env=PLATFORM_HOST={}", &env::var("HOST").unwrap());
    println!("cargo:rustc-env=PLATFORM_TARGET={}", &env::var("TARGET").unwrap());
    println!("cargo:rerun-if-changed-env=HOST");
    println!("cargo:rerun-if-changed-env=TARGET");
}
