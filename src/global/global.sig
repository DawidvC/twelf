(* Global parameters *)
(* Author: Frank Pfenning *)

signature GLOBAL =
sig
  val chatter : int ref
  val style : int ref
  val maxCid : int
  val maxMid : int
  val maxCSid : int
  val doubleCheck : bool ref
  val unsafe : bool ref
  val autoFreeze : bool ref
  val chPrint : int -> (unit -> string) -> unit
  val chMessage : int -> (unit -> string) -> (string -> unit) -> unit
  val timeLimit : (Time.time option) ref   (* in seconds *)
  val printFlat : bool ref (* -fr *)
  val catalog : URI.uri option ref (* -fr *)
  val nsPrefixes : (string * URI.uri) list ref
end;  (* signature GLOBAL *)
