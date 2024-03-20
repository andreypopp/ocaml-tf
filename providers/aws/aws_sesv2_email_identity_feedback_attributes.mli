(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sesv2_email_identity_feedback_attributes

val aws_sesv2_email_identity_feedback_attributes :
  ?email_forwarding_enabled:bool prop ->
  ?id:string prop ->
  email_identity:string prop ->
  unit ->
  aws_sesv2_email_identity_feedback_attributes

val yojson_of_aws_sesv2_email_identity_feedback_attributes :
  aws_sesv2_email_identity_feedback_attributes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  email_forwarding_enabled : bool prop;
  email_identity : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?email_forwarding_enabled:bool prop ->
  ?id:string prop ->
  email_identity:string prop ->
  string ->
  t

val make :
  ?email_forwarding_enabled:bool prop ->
  ?id:string prop ->
  email_identity:string prop ->
  string ->
  t Tf_core.resource
