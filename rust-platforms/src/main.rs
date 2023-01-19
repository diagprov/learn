
pub const PLATFORM_HOST: &str = env!("PLATFORM_HOST");
pub const PLATFORM_TARGET: &str = env!("PLATFORM_TARGET");
pub const CROSS : bool = cross_compiled();

use platforms::Platform;

const fn cross_compiled() -> bool {
    if PLATFORM_HOST.len() != PLATFORM_TARGET.len() {
        return true;
    }
    let ph = PLATFORM_HOST.as_bytes();
    let pt = PLATFORM_TARGET.as_bytes();
    let mut i : usize = 0;
    while i < ph.len() {
        if pt[i] != pt[i] {
            return true;
        }
        i = i + 1;
    }

    return false;
}

fn platforms_print(prefix: &'static str, p : &Platform) {
    println!("{} Architecture: {}", prefix, p.target_arch.as_str());
    println!("{} Endian: {}", prefix, p.target_endian.as_str());
    println!("{} OS: {}", prefix, p.target_os.as_str());
}

fn main() {
    println!("Compiler Host: {}", PLATFORM_HOST);
    println!("Target Architecture: {}", PLATFORM_TARGET);
    println!("Cross Compilation: {}", CROSS);

    let hinfo = match Platform::find(PLATFORM_HOST) {
        None => { eprintln!("Could not decode host information."); return; }
        Some(v) => v,
    };

    let pinfo = match Platform::find(PLATFORM_TARGET) {
        None => { eprintln!("Could not decode target information."); return; }
        Some(v) => v,
    };

    platforms_print("Host", &hinfo);
    platforms_print("Target", &pinfo);

}
