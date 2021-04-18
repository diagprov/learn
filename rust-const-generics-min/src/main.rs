
// not needed since rust 1.51 #![feature(min_const_generics)]

struct BigInt<const N: usize> {
    inner: [u64; N],
}


impl<const N: usize> BigInt<N> {

    fn new(arr: [u64; N]) -> BigInt<N> {
        BigInt {
            inner: arr,
        }
    }

    fn display(&self) {
        for elem in self.inner.iter() {
            print!("{} ", elem);
        }
    }
}

fn main() {
    
    println!("Min Const Generics Test");
    let x : BigInt<5> = BigInt::new([1,2,3,4,5]);
    x.display();
}
