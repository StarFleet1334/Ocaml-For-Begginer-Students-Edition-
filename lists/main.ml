
(**
    
There are 3 syntactic forms for building lists:

[] -> this is empty list called nil
e1 :: e2 -> this is like prepeding 
This first element is usually called head and last element is usually called tail
[e1,e2,....,en] this is same as e1 :: e2 :: ... :: en


if you write in utop this [], it would give you - : 'a list = []
so type of the list is 'a list. we read this from right to left.So list of 'a s.
The word list itself is not a type. it is type constructor

So we know that 'a is type variable and it stands for an unkown type.
So empty list is a list whose elements have an unknown type.


*)

(**
So if we have lst = [1;2;3]
how this will go
1 :: [2,3]
h :: t ->  1 + sum [2,3]
then
2 :: [3]
h :: t -> 2 + sum [3]
then
3 :: []
h :: t -> 3 + sum []
so [] is 0




*)

let rec sum lst = 
  match lst with 
  | [] -> 0
  | h :: t -> h + sum t;;

(**
if you want to see how sequence of computaations happens you can insert #trace sum    
*)
