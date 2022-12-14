open Bap_core_theory
open Thumb_core
open Thumb_opcodes

module Make(CT : Theory.Core) : sig
  open Theory

  (** [adds rd, rn, #x] aka add(1)  *)
  val addi3 : r32 reg -> r32 reg -> int -> cond -> unit eff

  (** [adds rd, #x] aka add(2) *)
  val addi8 : r32 reg -> int -> cond -> unit eff

  (** [adds rd,rn,rm] aka add(3) and add(4) *)
  val addrr : r32 reg -> r32 reg -> r32 reg -> cond -> unit eff

  (** [add rd, sp, #x] aka add(6) *)
  val addrspi : r32 reg -> int -> cond -> unit eff

  (** [add sp, #x] aka add(7)  *)
  val addspi : int -> cond -> unit eff

  (** [adcs rd rn rm]  *)
  val adcs : r32 reg -> r32 reg -> r32 reg -> cond -> unit eff

  (** [subs rd, rn, #x] aka sub(1) *)
  val subi3 : r32 reg -> r32 reg -> int -> cond -> unit eff

  (** [subs rd, #x] aka sub(2)  *)
  val subi8 : r32 reg -> int -> cond -> unit eff

  (** [subs rd, rn, rm] aka sub(3) *)
  val subrr : r32 reg -> r32 reg -> r32 reg -> cond -> unit eff

  (** [subs sp, #i] aka sub(4) *)
  val subspi : int -> cond -> unit eff

  (** [mov rd, #x]  *)
  val movi8 : r32 reg -> int -> cond -> unit eff

  (** [movs rd, rn]  *)
  val movsr : r32 reg -> r32 reg -> unit eff

  (** [asrs rd, rn, #i]  *)
  val asri : r32 reg -> r32 reg -> int -> cond -> unit eff

  (** [lsrs rd, rn, #i]  *)
  val lsri : r32 reg -> r32 reg -> int -> cond -> unit eff

  (** [lsls rd, rn, #i]  *)
  val lsli : r32 reg -> r32 reg -> int -> cond -> unit eff

  (** [orrs rd, rn]  *)
  val lorr : r32 reg -> r32 reg -> cond -> unit eff

  (** [cmp rn, #i] *)
  val cmpi8 : r32 reg -> int -> unit eff

  (** [cmp rn, rm] *)
  val cmpr : r32 reg -> r32 reg -> unit eff
end
