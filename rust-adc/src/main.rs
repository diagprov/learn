extern crate rand;

use rand::RngCore;
use rand::rngs::{OsRng};

#[inline(always)]
fn adc(x: u64, y: u64, carry: bool) -> (u64, bool) {
    let (sum, carry1) = x.overflowing_add(y);
    let (sum, carry2) = sum.overflowing_add(carry as u64);
    (sum, (carry1 | carry2))
}

pub fn add(x: &mut [u64; 4], y: &[u64; 4]) {
    let (w0, carry) = adc(x[0], y[0], false);
    let (w1, carry) = adc(x[1], y[1], carry);
    let (w2, carry) = adc(x[2], y[2], carry);
    let (w3, _) = adc(x[3], y[3], carry);
    *x = [w0, w1, w2, w3];
}

pub fn main() {

    let a: u64 = OsRng.next_u64();
    let b: u64 = OsRng.next_u64();
    let c: u64 = OsRng.next_u64();
    let d: u64 = OsRng.next_u64();
    let w: u64 = OsRng.next_u64();
    let x: u64 = OsRng.next_u64();
    let y: u64 = OsRng.next_u64();
    let z: u64 = OsRng.next_u64();

    let mut nums1 : [u64;4] = [a,b,c,d];
    let nums2 : [u64;4] = [w,x,y,z];
    add(&mut nums1, &nums2);
    for n in nums1.iter() {
        print!("N={}", n); 
    }
}
