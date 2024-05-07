(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sesv2_email_identity_mail_from_attributes

val aws_sesv2_email_identity_mail_from_attributes :
  ?id:string prop ->
  email_identity:string prop ->
  unit ->
  aws_sesv2_email_identity_mail_from_attributes

val yojson_of_aws_sesv2_email_identity_mail_from_attributes :
  aws_sesv2_email_identity_mail_from_attributes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  behavior_on_mx_failure : string prop;
  email_identity : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  email_identity:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  email_identity:string prop ->
  string ->
  t Tf_core.resource
