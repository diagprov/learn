

#[link(name="pvr")]
extern {
    fn pvr() -> u32;
}


fn main() {
    let pvr : u32 = unsafe { pvr() };

    println!("PVR: {}", pvr);
}
