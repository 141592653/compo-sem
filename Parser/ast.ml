(** Type des expressions. *)
type compo_expr =
  | Var of string
  | Int of int
  | String of string
  | Call of compo_expr * string * compo_expr list
  | At of string * compo_expr

type compo_prog =
  |Ret of compo_expr
  |Seq of compo_prog * compo_prog
  |Connect of compo_expr * compo_expr

type compo_sig = {name : string ; args : string list}

type compo_port = {name : string ; sigs : compo_sig list}

type compo_serv = {sign : compo_sig ; body : compo_prog}

type compo_descriptor = {name : string ;
			 super_name : string ;
			 pp : compo_port list;
			 erp : compo_port list;
			 irp : compo_port list ;
			 archi : compo_prog ;
			 servs : compo_serv list}

(***** Pretty printing of AST *****)
(** Pretty printing of lists *)
let pp_list pp_item pp_sep chan l =
  let rec aux = function
    | [] -> ()
    | [e] -> pp_item chan e
    | hd::tl -> pp_item chan hd ; pp_sep chan ; aux tl
  in aux l

(** Pretty printing of expressions *)
	 
let rec pp_expr chan = function
  | Var v -> Format.fprintf chan "%s" v
  | Int i -> Format.fprintf chan "%d" i
  | String s -> Format.fprintf chan "%S" s
  | Call (port,serv,args) ->
      Format.fprintf chan
        "[%a.%s(%a)]" (* improve TODO *)
        pp_expr port
        serv
        (pp_list pp_expr (fun chan -> Format.fprintf chan ",")) args
  | At (port,expr) ->
      Format.fprintf chan
        "{%s@@%a}"
        port
	pp_expr expr

let rec pp_prog chan = function
  |Ret e -> Format.fprintf chan "return %a" pp_expr e
  |Seq (p1,p2) -> Format.fprintf chan "[%a;@,%a]"
				 pp_prog p1
				 pp_prog p2
  |Connect (e1,e2) ->  Format.fprintf chan "connect %a to %a"
				 pp_expr e1
				 pp_expr e2
