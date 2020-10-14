
type variable = string

type constant = Int of int | Bool of bool 

type exp =
    | Var of variable
    | Constant of constant
    | Lambda of variable list * exp (* parameters & body *)
    | Assignment of variable * exp
    | If of exp * exp * exp (* TODO: SICP says that the alternative is optional *)