let id x = x;;

let id = fun x -> x;;

(** 
    
  Both are Identity function that in terminal produces
  'a type variable and this stands for unknown type.

  we can do in utop and call this as usual

  id 1 returns 1
  id "Hello" returns "Hello"
  and so on...

  THat is why id is polymorphic function because it can take many forms 
*)



