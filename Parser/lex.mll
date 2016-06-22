{
  (*This is a lexer for COMPO programming language*)
  open Parse   (* ./parse.mly *)
  open Lexing  (* librairie standard *)
}



let varname = (['a'-'z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_' '\'']*)
let intname = ['0'-'9'] ['0'-'9' '_']* | '0' ['x' 'X'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f' '_']*
let strname = '"' ([^ '"'] | '\\' '"')* '"'
let service_kw = "service" | "operation"
					  
rule token = parse
	     | "Desciptor"           { DESCR }
	     | "extends"             { EXTENDS }
	     | "provides"            { PROVIDES }
	     | "requires"            { REQUIRES }
	     | "internally requires" { IREQUIRES }
	     | "architecture"        { ARCHI }
	     | service_kw            { SERVICE }
	     | "return"              { RET }
	     | "connect"             { CONNECT }
	     | "to"                  { TO }
	     | "@"                   { AT }
	     | "("                   { LPAR }
	     | ")"                   { RPAR }
	     | "{"                   { LBRACE }
	     | "}"                   { RBRACE }
	     | "."                   { POINT }
	     | ","                   { COMMA }
	     | ":"                   { COLUMN}
	     | ";"                   { SEMIC }
	     | varname as v          { VAR v }
             | strname as s          { STRING ( Scanf.unescaped(String.sub s 1 (String.length s - 2))) }
             | intname as i          { INT (int_of_string i) }
			   
	     | '\n'                  { token (lexbuf.lex_curr_p <- {
					      lexbuf.lex_curr_p  with
					      pos_bol = lexbuf.lex_curr_p.pos_cnum ;
					      pos_lnum =
						1 + lexbuf.lex_curr_p.pos_lnum } ;
			         lexbuf) (*counts the number of lines*)} 
	     |[' ' '\t' '\r' ]      {token lexbuf}
			      
	     | eof                  { EOF }

