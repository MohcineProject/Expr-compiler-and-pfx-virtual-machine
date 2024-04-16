
(* The type of tokens. *)

type token = 
  | SWAP
  | SUB
  | REM
  | PUSH of (Ast.element)
  | POP
  | MUL
  | INT of (int)
  | GET
  | EXEC
  | EOF
  | DIV
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
