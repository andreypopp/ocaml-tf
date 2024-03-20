(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sesv2_email_identity_policy

val aws_sesv2_email_identity_policy :
  ?id:string prop ->
  email_identity:string prop ->
  policy:string prop ->
  policy_name:string prop ->
  unit ->
  aws_sesv2_email_identity_policy

val yojson_of_aws_sesv2_email_identity_policy :
  aws_sesv2_email_identity_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  email_identity : string prop;
  id : string prop;
  policy : string prop;
  policy_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  email_identity:string prop ->
  policy:string prop ->
  policy_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  email_identity:string prop ->
  policy:string prop ->
  policy_name:string prop ->
  string ->
  t Tf_core.resource
