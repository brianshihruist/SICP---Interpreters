open Ast

let string_of_const (c: constant): string = 
  match c with 
    | Int i -> string_of_int i
    | Bool b -> string_of_bool b

let rec exp2string (e:exp) =
    match e with
    | Constant c -> string_of_const c
    | Var x -> x
    | Assignment (v, exp) -> "define " ^ v ^ "(" ^ exp2string(exp) ^ ")"
    | Lambda 
    | _ -> failwith "unimplemented"