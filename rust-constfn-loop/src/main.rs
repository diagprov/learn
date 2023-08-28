const fn test_normal(bytes: &[u8]) -> u32 {
    let mut sum : u32 = 0;
    let mut bytes = bytes;

    loop {
        match bytes {
        [byte, remaining @ ..] => {
            sum += (*byte) as u32;
            bytes = remaining;
        },
        [] => { break; },
        }
    }
    sum
}

const fn test_recursive(bytes: &[u8]) -> u32 {
    let mut sum : u32 = 0;


    match bytes {
        [byte, remaining @ ..] => {
            sum += (*byte) as u32;
            sum += test_recursive(&remaining);
        },
        [] => {},
    }
    sum
}

fn main() {

    let bytes : [u8; 20] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    let result_recursive = test_recursive(&bytes);
    let resukt_normal = test_normal(&bytes);
    println!("Recursive: {}", result_recursive);
    println!("Normal: {}", resukt_normal);
}
