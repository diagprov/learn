#![no_std]

trait CallbackTrait {
    fn callback(&self, v: usize, w: usize) -> usize;
}

struct Test {}

impl CallbackTrait for Test {
    fn callback(&self, v: usize, w: usize) -> usize {
        v+w
    }
}

fn testfunc(cbt : &dyn CallbackTrait) -> usize {
    let mut t = cbt.callback(1,1);
    t = t + cbt.callback(1,2);
    t = t + cbt.callback(1,3);
    return t;
}

#[cfg(test)]
mod tests {
    extern crate std;
    use std::*;
    use super::*;
    #[test]
    fn test_callback() {
        let t = Test{};
        println!("Result {}", testfunc(&t));
    }
}
