(**
  Pattern Matching with Lists
*)

(* Syntax
match e with
| p1 -> e1
| p2 -> e2
.....

Each of the clauses p1 -> e1 is called a branch or case of pattern match
The p's here are called patterns. A pattern may be: 
  -> a variable name
  -> The underscore character which is called wildcard
  -> empty list
  -> p1 :: p2 prepending
  -> [p1;...;pn]
Notes:
  No variable name may appear more than once in a pattern. For example x :: x is illegal, but the wildcard
  may occur any number of times. *)

  (* Dynamic semantics:

  match 1 :: [] with
  | [] -> false
  | h :: t -> h = 1 && t = []

  -> 1 :: [] is already a value
  -> [] does not match 1 :: []
  -> h :: t does match 1 :: [] and produces variable bindings {h -> 1, t -> []} because: 
    - h matches 1 and produces the variable bindings h -> 1
    - t matches [] and produces the variable binding t -> []
  -> Substituting {h->1, t -> []} inside h = 1 && t = [] produces a new expression 1 = 1 && [] = []
  -> Evaluating 1 = 1 && [] = [] yields the value true. We omit the justification for that fact here, but it follows
  from other evaluation rules for built-in operators and function application.
  -> So the result of the entier match expression is true. *)


  (* Additional static checking:

  In addition to that type-checking rule, there are two other checks the compiler does for each mathc expression

  First, exhaustiveness. The compiler checks to make sure that there are enough patterns to guarantee that
  at least one of them matches the expression e, no matter what the value of that expression is at run time.
  This ensures that programmer did not forget any branches. For example, the function below will cause
  the compiler to emit a warning.
  let head lst = match lst with h :: _ -> h

  Second, unused branches: the compiler checks to see whether any of the branches could never be matched
  against because one of the previous branches is guaranteed to succeed. For example, the function below 
  will cause the compiler to emit a warning:

  let rec sum lst = 
    match lst with
    | h :: t -> h + sum t
    | [ h ] -> h
    | [] -> 0

  Here second branch is unused because the first branch will match anything the second branch matches. *)

(* 
  One of the good and common example of bugs that causes a unused match case warning.
  let length_is lst n = 
    match List.length lst with 
    | n -> true
    | _ -> false

Here This function always returns true. Because the pattern variable n is distinct from the function
arument n. 

Better way to write this is like this

let length_is lst n = 
  match List.length lst with
  | m -> m = n

or 

let legth_is lst n = (List.length lst) = n *)

