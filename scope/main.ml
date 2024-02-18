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

(* let x = 2;;
let y = 3 in let x = 2 in x = y;; *)

(**
  In this case x is equal to 2 and 
  y is equal to boolean false    
*)


(* let x = 42 in
  (* Here x is meaningful, but not y *)
  x + (let y = "1121" in 
        (* Here y is meaningful *)
          int_of_string y) *)


(* There can be a cases where same variable name is defined in a scope *)
(* let x = 22 in
  (let x = 18 in x) + x * 2 *)
(** So answer in this case would be 64 : 18 + 22 * 2 and because of precedence 22 * 2 happens first *)


(* let x = 5 in
((let x = 6 in 6) + 6) *)
(** If you write something like this it would give you anser, but
    in terminal it would also give you Warning such that you have unused variable in outer scope let x =5 *)


(**
    
  Every Let definition is nested let expression.
  Example: 
    let x = 42;;
    let x = 22;
    is the following:
      let x = 42 in
        let x = 22 in 
            .. . ..
    
  Right way is that, second let binds an entirely new variable that just happens to have same name as the first
  let

  let x = 42;;
  let f y = x + y;;
  f 0 ;; -> returns 42
  let x = 22;
  f 0 ;; -> returns 42 Reason is that x did not mutate;;

  If new variable happends to have same names an old variable, the new variables temporarily shadows the old
  one. But old is still around and its value is immutablle.




*)

(** Here answer is 1 *)
(* let x = 1 in 
  let f y = x + y in 
    let x = 2 in f 0;; *)


(** Answer in this is 3, cause new variable temporarily shadows the old variable with the same name *)
(* let x = 1 in
  let x = 2 in 
    let x = 3 in
      let f y =  x + y in f 0;; *)