
(**

Anonymus functions are also called lambda expressions

and in Ocaml if we want function to be anonyms we use keyword func

*)

let incrementDefault x = x + 1;;
let incrementAnonymus = fun x -> x + 1;;

(** Pipeline definitions *)

let square x = x * x;;

(* square (incrementDefault 5) *)
(** Using pipeline you can write this as:
  
  1.) 5 |> incrementDefault |> square answer would be : 36
  2.) 5 |> incrementDefault |> incrementDefault |> square |> incrementDefault |> incrementDefault;;
      In this case answer would be 51

*)
