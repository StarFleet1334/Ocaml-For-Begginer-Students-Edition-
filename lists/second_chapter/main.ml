(**
    
  (Not) Mutating Lists

  Lists are immutable, There's no way to change an element of a list from one value to another.
  Instead OCaml programmers create new lists out of old lists.

*)

(**
Suppose we wanted to write a function that returend the same list as input list,
but with the first element (if there is one) incremented by one.    
*)
let inc_first lst = 
  match lst with
  | [] -> []
  | h :: t -> (h+1) :: t;;

