%{
  open Ast
  module SetString = Set.Make(String)
  let test_expr =  Call(At("truc",Var "bidule"),"bla",[Call(Var "ts","gyg",[]);At("yvy", Int 12)])
%}

%token EOF

%token <string> VAR
%token <string> STRING
%token <int> INT
			       
%token DESCR EXTENDS PROVIDES REQUIRES IREQUIRES ARCHI SERVICE
%token RET
%token CONNECT TO
%token AT
%token LPAR RPAR
%token LBRACE RBRACE
%token COMMA COLUMN SEMIC POINT

%right    SEMIC
%nonassoc TO
%left     POINT
%right    AT



/* Les non-terminaux par lesquels l'analyse peut commencer,
 * et la donnée de leurs types. */

%start terminated_expr
%type <Ast.compo_prog> terminated_expr

%%



terminated_expr:
    | prog EOF { $1 }

prog:
    | prog SEMIC prog         {Seq($1,$3)}  
    | CONNECT expr TO expr    {Connect($2,$4)}
    | RET expr                {Ret $2}

expr:
    | expr POINT VAR LPAR args RPAR %prec POINT
		              { Call($1,$3,$5) }
    | VAR AT expr             { At($1,$3)}
    | INT                     { Int $1 }
    | VAR                     { Var $1 }
    | STRING                  { String $1 }

args:
    |                         { [] }
    | expr                    { [$1] }
    | expr COMMA args         { $1::$3 }

name_args:
    |                         { [] }
    | VAR                     { [$1] }
    | VAR COMMA name_args     { $1::$3 }
	  
sign:
    | VAR LPAR name_args RPAR { {name = $1;args=$3} }

sig_list:
    |                         { [] }
    | sign                    { [$1] }
    | sign SEMIC sig_list     { $1 :: $3 }

serv:
    | sign LBRACE prog RBRACE { {sign = $1; body = $3} }

serv_list:
    |                         { [] }
    | serv                    { [$1] }
    | serv serv_list          { $1 :: $2 }

      
port:
    | VAR COLUMN LBRACE sig_list RBRACE
	  { {name = $1; sigs = $4}}

port_list:
    |                         { [] }
    | port                    { [$1] }
    | port SEMIC port_list    { $1 :: $3 }

descr:
    | DESCR VAR EXTENDS VAR LBRACE PROVIDES LBRACE port_list RBRACE REQUIRES LBRACE port_list RBRACE IREQUIRES LBRACE port_list RBRACE ARCHI LBRACE prog RBRACE serv_list
	    { {name = $2; super_name = $4; pp = $8; erp= $12; irp = $16; archi = $20; servs = $22 } }
	    
 



      /* pour le test :
expr : 123.blub("kdjkb".hey()@dihud,blub,lis.loulou(truc@truc@truc))@machin.chouette()

 */
