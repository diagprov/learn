
// +nightly needed for this.
#![feature(asm)]

use std::collections::VecDeque;

fn fibonacci(v: &mut VecDeque<u64>, a: u64, b: u64, max_depth: usize) {
   
    match max_depth {
        0 => {
            v.push_back(b); 
        },
        _ => {
            v.push_back(a);
            fibonacci(v, b, a+b, max_depth-1);
        }
    }
    
    // break the optimizer so it doesn't turn this into tail-recursion
    unsafe {
        asm!("nop");
    }
}


fn main() {

    let mut fib: VecDeque<u64> = VecDeque::new();

    fibonacci(&mut fib, 0, 0, 100000000000000);

    for x in fib.iter() {
        print!("{} ", x)
    }

}
