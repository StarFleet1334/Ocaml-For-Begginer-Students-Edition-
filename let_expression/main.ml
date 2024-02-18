
(*** Compile them into utop to see more clearly *)

let x = 42;;
(** val x : int = 42 *)

let x = 42 in x + 1;;
(** - : int = 43 *)
(** Remeember x still will be 42 *)



(** This code would result in syntax Error, because you are putting let definition in a place where expression
    is expected *)
(* (let x = 42) + 1;; *)

(** To fix this *)

(let x = 42 in x) + 1;;


let a = "big";;
let b = "red";;
let c = a ^ b;;

(** Answer in this case would be "bigred" if you run this in  a utop *)

(* let x = e1 in e2 *)
(**
  In this code: 
    1. X is an identifier
    2. e1 is a binding expression, means its bound to x
    3. e2 is body expression    

*)

(** DYNAMIC SEMANTCIS *)
let x = 1 + 4 in x * 3;;
(** We evaluate 1 +4 -> 5
    Then we substitue for x 5 in x * 3
    Then we evaluate 5 * 3
    which is 15 *)


