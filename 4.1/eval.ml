(* Eval takes as arguments an expression and an environment. It classifies the expression and directs its evaluation.
   Eval is structured as a case analysis of the syntactic type of the expression to be evaluated.
*)

open Ast
open Printing

let eval (e: exp) =
    match e with
    | Var x -> ""
    | _ -> failwith "unimplemented"
    
let _ = string_of_const (constant 12)
