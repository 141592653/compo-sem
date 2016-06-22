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

open Parsing;;
let _ = parse_error;;
# 2 "parse.mly"
  open Ast
  module SetString = Set.Make(String)
  let test_expr =  Call(At("truc",Var "bidule"),"bla",[Call(Var "ts","gyg",[]);At("yvy", Int 12)])
# 33 "parse.ml"
let yytransl_const = [|
    0 (* EOF *);
  260 (* DESCR *);
  261 (* EXTENDS *);
  262 (* PROVIDES *);
  263 (* REQUIRES *);
  264 (* IREQUIRES *);
  265 (* ARCHI *);
  266 (* SERVICE *);
  267 (* RET *);
  268 (* CONNECT *);
  269 (* TO *);
  270 (* AT *);
  271 (* LPAR *);
  272 (* RPAR *);
  273 (* LBRACE *);
  274 (* RBRACE *);
  275 (* COMMA *);
  276 (* COLUMN *);
  277 (* SEMIC *);
  278 (* POINT *);
    0|]

let yytransl_block = [|
  257 (* VAR *);
  258 (* STRING *);
  259 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\003\000\
\003\000\004\000\004\000\004\000\005\000\005\000\005\000\006\000\
\007\000\007\000\007\000\008\000\009\000\009\000\009\000\010\000\
\011\000\011\000\011\000\012\000\000\000"

let yylen = "\002\000\
\002\000\003\000\004\000\002\000\006\000\003\000\001\000\001\000\
\001\000\000\000\001\000\003\000\000\000\001\000\003\000\004\000\
\000\000\001\000\003\000\004\000\000\000\001\000\002\000\005\000\
\000\000\001\000\003\000\022\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\029\000\000\000\000\000\009\000\
\007\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\
\005\000\012\000"

let yydgoto = "\002\000\
\005\000\006\000\022\000\023\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yysindex = "\255\255\
\002\255\000\000\005\255\005\255\000\000\003\000\003\255\000\000\
\000\000\250\254\245\254\000\000\002\255\005\255\017\255\005\255\
\254\254\000\000\006\255\250\254\005\255\249\254\007\255\005\255\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\
\024\000\000\000\000\000\005\000\009\255\010\255\000\000\009\255\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\014\000\006\000\007\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yytablesize = 282
let yytable = "\001\000\
\008\000\016\000\012\000\004\000\003\000\007\000\008\000\009\000\
\010\000\011\000\015\000\024\000\003\000\004\000\015\000\015\000\
\014\000\019\000\013\000\018\000\021\000\020\000\025\000\002\000\
\010\000\011\000\017\000\000\000\000\000\000\000\026\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\008\000\000\000\000\000\
\008\000\000\000\000\000\008\000\000\000\008\000\008\000\013\000\
\004\000\003\000"

let yycheck = "\001\000\
\000\000\013\001\000\000\000\000\000\000\001\001\002\001\003\001\
\003\000\004\000\022\001\019\001\011\001\012\001\022\001\022\001\
\014\001\001\001\021\001\014\000\015\001\016\000\016\001\000\000\
\016\001\016\001\013\000\255\255\255\255\255\255\024\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\013\001\255\255\255\255\
\016\001\255\255\255\255\019\001\255\255\021\001\022\001\021\001\
\021\001\021\001"

let yynames_const = "\
  EOF\000\
  DESCR\000\
  EXTENDS\000\
  PROVIDES\000\
  REQUIRES\000\
  IREQUIRES\000\
  ARCHI\000\
  SERVICE\000\
  RET\000\
  CONNECT\000\
  TO\000\
  AT\000\
  LPAR\000\
  RPAR\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  COLUMN\000\
  SEMIC\000\
  POINT\000\
  "

let yynames_block = "\
  VAR\000\
  STRING\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'prog) in
    Obj.repr(
# 39 "parse.mly"
               ( _1 )
# 214 "parse.ml"
               : Ast.compo_prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'prog) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'prog) in
    Obj.repr(
# 42 "parse.mly"
                              (Seq(_1,_3))
# 222 "parse.ml"
               : 'prog))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 43 "parse.mly"
                              (Connect(_2,_4))
# 230 "parse.ml"
               : 'prog))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 44 "parse.mly"
                              (Ret _2)
# 237 "parse.ml"
               : 'prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'args) in
    Obj.repr(
# 48 "parse.mly"
                ( Call(_1,_3,_5) )
# 246 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 49 "parse.mly"
                              ( At(_1,_3))
# 254 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 50 "parse.mly"
                              ( Int _1 )
# 261 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 51 "parse.mly"
                              ( Var _1 )
# 268 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "parse.mly"
                              ( String _1 )
# 275 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parse.mly"
                              ( [] )
# 281 "parse.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 56 "parse.mly"
                              ( [_1] )
# 288 "parse.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'args) in
    Obj.repr(
# 57 "parse.mly"
                              ( _1::_3 )
# 296 "parse.ml"
               : 'args))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parse.mly"
                              ( [] )
# 302 "parse.ml"
               : 'name_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 61 "parse.mly"
                              ( [_1] )
# 309 "parse.ml"
               : 'name_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'name_args) in
    Obj.repr(
# 62 "parse.mly"
                              ( _1::_3 )
# 317 "parse.ml"
               : 'name_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'name_args) in
    Obj.repr(
# 65 "parse.mly"
                              ( {name = _1;args=_3} )
# 325 "parse.ml"
               : 'sign))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parse.mly"
                              ( [] )
# 331 "parse.ml"
               : 'sig_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'sign) in
    Obj.repr(
# 69 "parse.mly"
                              ( [_1] )
# 338 "parse.ml"
               : 'sig_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'sign) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sig_list) in
    Obj.repr(
# 70 "parse.mly"
                              ( _1 :: _3 )
# 346 "parse.ml"
               : 'sig_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'sign) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'prog) in
    Obj.repr(
# 73 "parse.mly"
                              ( {sign = _1; body = _3} )
# 354 "parse.ml"
               : 'serv))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parse.mly"
                              ( [] )
# 360 "parse.ml"
               : 'serv_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'serv) in
    Obj.repr(
# 77 "parse.mly"
                              ( [_1] )
# 367 "parse.ml"
               : 'serv_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'serv) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'serv_list) in
    Obj.repr(
# 78 "parse.mly"
                              ( _1 :: _2 )
# 375 "parse.ml"
               : 'serv_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'sig_list) in
    Obj.repr(
# 83 "parse.mly"
   ( {name = _1; sigs = _4})
# 383 "parse.ml"
               : 'port))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parse.mly"
                              ( [] )
# 389 "parse.ml"
               : 'port_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'port) in
    Obj.repr(
# 87 "parse.mly"
                              ( [_1] )
# 396 "parse.ml"
               : 'port_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'port) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'port_list) in
    Obj.repr(
# 88 "parse.mly"
                              ( _1 :: _3 )
# 404 "parse.ml"
               : 'port_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 20 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 18 : string) in
    let _8 = (Parsing.peek_val __caml_parser_env 14 : 'port_list) in
    let _12 = (Parsing.peek_val __caml_parser_env 10 : 'port_list) in
    let _16 = (Parsing.peek_val __caml_parser_env 6 : 'port_list) in
    let _20 = (Parsing.peek_val __caml_parser_env 2 : 'prog) in
    let _22 = (Parsing.peek_val __caml_parser_env 0 : 'serv_list) in
    Obj.repr(
# 92 "parse.mly"
     ( {name = _2; super_name = _4; pp = _8; erp= _12; irp = _16; archi = _20; servs = _22 } )
# 417 "parse.ml"
               : 'descr))
(* Entry terminated_expr *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let terminated_expr (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.compo_prog)
