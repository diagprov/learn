
struct SomeObject(i64);

impl Drop for SomeObject {
    fn drop(&mut self) {
        println!("Dropping SomeObject with int {}", self.0);
    }
}


fn dropper<T: 'static + Drop>(t: T) {
    std::mem::drop(t);
}

fn main() {
    let x = SomeObject(7);
    let y = Box::new(SomeObject(11));
    dropper(x);
    dropper(y);
    println!("Hello, world!");
}
