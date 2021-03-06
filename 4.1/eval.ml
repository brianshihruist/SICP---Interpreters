(* Eval takes as arguments an expression and an environment. It classifies the expression and directs its evaluation.
   Eval is structured as a case analysis of the syntactic type of the expression to be evaluated.
*)

open Ast
open Printing

let print = Printf.printf

let eval (e: exp) =
    match e with
    | Var x -> x
    | _ -> failwith "unimplemented"
    
let zero = Constant (Int 2)
let varr = Var "hello"
let print_exp (e: exp) = ( print_string (exp2string e ^ "\n"); )
let _ = print_exp(varr)
     

(* let _ = string_of_const (Constant (Int 12)) *)
