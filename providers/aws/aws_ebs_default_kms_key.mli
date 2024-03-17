(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_default_kms_key
type t = private { id : string prop; key_arn : string prop }

val aws_ebs_default_kms_key :
  ?id:string prop -> key_arn:string prop -> string -> t
