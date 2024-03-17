(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_email_identity_feedback_attributes

type t = private {
  email_forwarding_enabled : bool prop;
  email_identity : string prop;
  id : string prop;
}

val aws_sesv2_email_identity_feedback_attributes :
  ?email_forwarding_enabled:bool prop ->
  ?id:string prop ->
  email_identity:string prop ->
  string ->
  t
