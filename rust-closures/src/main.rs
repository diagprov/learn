use std::result::*;
use std::string::String;

type CallbackFunction = dyn Fn() -> Result<(),()>;

fn construct_callback_takesints(val1: i32, val2: i32) -> Box<CallbackFunction>
{
    Box::new(move || {
        println!("{}", val1+val2);
        Ok(())
    })
}

fn construct_callback_takesstr(val: String) -> Box<CallbackFunction>
{
    Box::new(move || {
        println!("{}", val);
        Ok(())
    })
}

fn func_that_requires_callback(f: &CallbackFunction) {
    let _r = f();
}

fn main() {
    
    let a : i32 = 3;
    let b : i32 = 5;
    let s : String = String::from("Hello from Rust.");
    
    let callback_withints = construct_callback_takesints(a,b);
    let callback_withstr  = construct_callback_takesstr(s);
    println!("Calling function that uses our callback");
    func_that_requires_callback(&callback_withints);
    func_that_requires_callback(&callback_withstr);
}

