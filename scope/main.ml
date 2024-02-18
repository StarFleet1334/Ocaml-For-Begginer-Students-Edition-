(*** Scope *)

(*** First Example *)

(* let x = 2;;
let x = 3;;
Printf.printf "count: %d\n" x; *)

(**
Here value of x is changed and is 3, but real gotcha is a scope.
Every time we say "let" it kind of creates a new "level" of the program,
within which only certain variables can be accessed

*)

(*** Second Example *)

(* let x = 2;;
let x = 3 in x + 4;;
Printf.printf "count: %d\n" x; *)

(***
  Here we you use value asigned by the let only exists within the expression after in.
  This is called a "let-in-binding"
  
  result that we will see is count: 2 , but inside let in the answer is 7
*)


(*** Third Example *)

(* let x = 2;; 
let x = 2 in x + 1;;
let x = 3 in x + 1;;
Printf.printf "count: %d\n" x; *)

(** 
Answer in this case would still be count: 2, but on the lines 33 it would be 3 and on 34 it would be 4    
*)


(** Fourth Example *)

let x = 2;;
let y = 3 in let x = 2 in x = y;;

(**
  In this case x is equal to 2 and 
  y is equal to boolean false    
*)
