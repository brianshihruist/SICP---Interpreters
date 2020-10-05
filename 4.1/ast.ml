
type variable = string

type constant = Int of int | Bool of bool 

type exp =
    | Var of variable
    | Constant of constant