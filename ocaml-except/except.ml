
open Printf
open List

exception Foo of string

let i_will_fail () =
  raise (Foo "Oh no!")

let () =
    print_string "Hello, world!\n";
    let numlist = [1;2;3;4;5;] in
    let f elem = Printf.printf "Element %d\n" elem in
    List.iter f numlist;
    try i_will_fail() with 
       Foo(s) -> Printf.printf "%s" s;
