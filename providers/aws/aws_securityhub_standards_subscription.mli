(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_standards_subscription
type t = private { id : string prop; standards_arn : string prop }

val aws_securityhub_standards_subscription :
  ?id:string prop -> standards_arn:string prop -> string -> t
