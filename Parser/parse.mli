type token =
  | EOF
  | VAR of (string)
  | STRING of (string)
  | INT of (int)
  | DESCR
  | EXTENDS
  | PROVIDES
  | REQUIRES
  | IREQUIRES
  | ARCHI
  | SERVICE
  | RET
  | CONNECT
  | TO
  | AT
  | LPAR
  | RPAR
  | LBRACE
  | RBRACE
  | COMMA
  | COLUMN
  | SEMIC
  | POINT

val terminated_expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.compo_prog
