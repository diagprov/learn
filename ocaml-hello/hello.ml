
open Printf
open List

let () =
    print_string "Hello, world!\n";
    let numlist = [1;2;3;4;5;] in
    let f elem = Printf.printf "Element %d\n" elem in
    List.iter f numlist;
