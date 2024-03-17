(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_active_receipt_rule_set

type t = private {
  arn : string prop;
  id : string prop;
  rule_set_name : string prop;
}

val aws_ses_active_receipt_rule_set :
  ?id:string prop -> rule_set_name:string prop -> string -> t
