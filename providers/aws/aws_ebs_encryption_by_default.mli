(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_encryption_by_default
type t = private { enabled : bool prop; id : string prop }

val aws_ebs_encryption_by_default :
  ?enabled:bool prop -> ?id:string prop -> string -> t
