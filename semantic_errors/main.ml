
(**
    First Semantic Error    

    -> Happens when assigning a variable for one scope and trying to use it in another.
    In our case as an example we will do it on let-in-boudings
*)

let x = 10;;
let y = 20 in x + y;;
(**  if you try to run x + y on terminal it would give error such as: Unbound value y*)


(***
    
    Second Semantic Error

    -> Happens when you want to create a variable name with space in it. Interpretor thinks
    that as a function that takes some parameter

*)

let x y = y + 2;;
(** If you hover over it you would see that it takes int and returns int : int -> int*)

