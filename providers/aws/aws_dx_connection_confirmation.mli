(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_connection_confirmation
type t = private { connection_id : string prop; id : string prop }

val aws_dx_connection_confirmation :
  ?id:string prop -> connection_id:string prop -> string -> t
