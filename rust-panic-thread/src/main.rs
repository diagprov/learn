
// modernized version of https://stackoverflow.com/questions/30824258/recovering-from-panic-in-another-thread

use std::{thread, time};
use rand::Rng;

fn main() {
    println!("Hello, world!");

    let h = thread::spawn(|| {
        let mut rng = rand::thread_rng();
        let i : usize = rng.gen_range(0..10);
        thread::sleep(time::Duration::from_millis(500));
        if i % 2 == 1 { 
            panic!("This is a panic on a thread.");
        }
        return;
    });

    let r = h.join();
    handle(r);

    println!("Exiting main!");
}

fn handle(r: thread::Result<()>) {
    match r {
        Ok(r) => println!("All is well! {:?}", r),
        Err(e) => {
            if let Some(e) = e.downcast_ref::<&'static str>() {
                println!("Got an error: {}", e);
            } else {
                println!("Got an unknown error: {:?}", e);
            }
        }
    }
}
