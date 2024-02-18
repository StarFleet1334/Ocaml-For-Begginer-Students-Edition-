
(***

Every OCaml function takes 1 argument

let f x1 x2 ... xn = e
is semantically equivalent to
let f = 
    fun x1 -> 
      (fun x2 -> 
        ...
          (fun xn -> e)...))


So in reality functions take 1 argument and returns a function
Logic is like this: Function takes 1 arugment and returns function that takes remaining arguments and 
this cycle happens until length of arguments. So Function types are right associative
and Function application on the other hand is left associative so

t1 -> t2 -> t3 -> t4
t1 -> (t2 -> (t3 -> t4))


e1 e2 e2 e4
((e1 e2) e3) e4

*)