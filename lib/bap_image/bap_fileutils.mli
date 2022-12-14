(**Helper IO functions. *)

open Core_kernel[@@warning "-D"]
open Bap_types.Std

val readfile : string -> Bigstring.t

val parse_name : string -> (string * string option) option
