
(**This would result in error,cause interpertor tells you it is char but with string props *)
(* let foo = 'abcd' *)

(**Declaring string *)
let names = "Ilia";;

(**Declaring Float *)
let price = 2.2;;

(**Declaring Int *)
let count = 10;;


(* Print out the values of the variables we declared *)
Printf.printf "names: %s\n" names;
Printf.printf "price: %f\n" price;
Printf.printf "count: %d\n" count;