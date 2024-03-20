(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_active_receipt_rule_set

val aws_ses_active_receipt_rule_set :
  ?id:string prop -> unit -> aws_ses_active_receipt_rule_set

val yojson_of_aws_ses_active_receipt_rule_set :
  aws_ses_active_receipt_rule_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  rule_set_name : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
