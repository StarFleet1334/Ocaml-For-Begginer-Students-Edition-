 
 let rec count n = 
    if n = 0 then 0 else 1 + count (n - 1)

(**
  This code addes 1 to itself n times
  no if you try so big number it would give you this error:  Stack overflow during evaluation (looping recursion?)

  so do not use big numbers, in case you are interested where is this error coming from. search up:
  Call stack and operating system memory size
*)

(**
Difference between above and below function is that
the addition of 1 in the above happens after recursion and below
it happens before recursion    
*)

let rec count_aux n acc = 
  if n = 0 then acc else count_aux (n-1) (acc+1);;

(***
    
A recursive call in tail position does not need a new stack frame. It can reuse the existing strack frame.
So instead of wasting space by allocating another stack frame, the compiler "recyles" the space used by the 
previouse frame.


*)

let rec factorial_tr n acc = 
  if n = 0 then acc else factorial_tr (n-1) (n * acc);;

(** 
Even if we did tail optimization, if we pass 50 as n and 1 as acc, it will exhaust stack space
to solve this probelm, we turn to OCaml's big integer library, Zarith.
first you have to install zarith; -> opam install zarith;    
*)
(* #require "zarith.top";; *)
(* let rec zfactorial_aux n acc = 
  if Z.equal n Z.zero then acc else zfactorial_aux (Z.pred n) (Z.mul acc n) *)


  (**
  
  if you want to debugg or ocaml code.
  after defining some code. use #trace <that definition name>;;
  and that's it call it and you will see step-by-step process
  
  *)