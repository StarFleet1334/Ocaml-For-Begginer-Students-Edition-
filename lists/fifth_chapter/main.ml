
(**
  
Deep Pattern matching

Patterns can be nested. Dosing so can allow your code to look deeply into the sturcture of a list.
For example:

-> _ :: []  matches all lists with exactly one element
-> _ :: _ matches all lists with at least one element
-> _ :: _ :: [] matches all lists with exactly two elements
-> _ :: _ :: _ :: _ matches all lists with at least three elements


*)