Require Import Strings.String.
        
Inductive compo_expr : Set :=
| Var :    string -> compo_expr
| Int :    nat -> compo_expr
| String : string -> compo_expr
| Call :   compo_expr -> string -> list compo_expr -> compo_expr
| At :     string -> compo_expr -> compo_expr.

Inductive compo_prog : Set :=
| Ret :     compo_expr -> compo_prog
| Connect : compo_expr -> compo_expr -> compo_prog
| Seq :     compo_prog -> compo_prog -> compo_prog.
                       