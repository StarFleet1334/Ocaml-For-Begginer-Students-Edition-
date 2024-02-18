
(** Recursive function of factorial
KeyNote -> When you want to define recursive function , at the end place rec keyword  
  *)

let rec factorial n = if n == 0 then 1 else n * factorial (n-1)

let rec pow x y = if y == 0 then 1 else x * pow x (y-1)


(**
  
In Ocaml we can also have mutually recursive functions with keyword and between them

*)

let rec even n = 
  n == 0 || odd ( n - 1)
and odd n = 
  n <> 0 && even (n-1);;