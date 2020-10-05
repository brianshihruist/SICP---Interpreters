open Ast

let string_of_const (c: constant): string = 
  match c with 
    | Int i -> string_of_int i
    | Bool b -> string_of_bool b

let exp2string (e:exp) =
    match e with
    | Constant c -> string_of_const c
    | _ -> failwith "unimplemented"