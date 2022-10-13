let rec factorial n = 
    match n with 
    | 0 | 1 -> 1
    | _ -> n * factorial (n-1) ;;

let () = 
    Printf.printf "Hello, World!\n";;

    Printf.printf "Arguments: %d\n" (Array.length Sys.argv);;
    for arg = 0 to (Array.length Sys.argv-1) do
        Printf.printf "Argument %2d: %s\n" (arg) (Sys.argv.(arg));
    done;;

    Printf.printf "Factorial 5!=%d\n" (factorial 5);;
