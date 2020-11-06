
use std::ffi::CString;
use std::os::raw::c_char;
use wasm_bindgen::prelude::*;

static HELLO: &'static str = "hello from rust";

#[wasm_bindgen]
pub fn getemailaddr() -> *mut c_char {
    let s = CString::new(HELLO).unwrap();
    s.into_raw()
}

#[wasm_bindgen]
pub fn getemailaddr_len() -> usize {
    HELLO.len()
}

#[wasm_bindgen]
pub fn add(a: i32, b: i32) -> i32 {
    return a+b;
}
