(* Trivial Factorial Benchmark -- OCaml Version *)
(* This software is in the public domain *)

open Big_int;;

let rec fact acc x =
    if eq_big_int x unit_big_int
    then acc
    else fact (mult_big_int acc x) (pred_big_int x);;

let n = big_int_of_string Sys.argv.(1);;

print_string (string_of_big_int (fact unit_big_int n));;
print_string "\n";;
