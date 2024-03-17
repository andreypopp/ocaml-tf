(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_email_identity_policy

type t = private {
  email_identity : string prop;
  id : string prop;
  policy : string prop;
  policy_name : string prop;
}

val aws_sesv2_email_identity_policy :
  ?id:string prop ->
  email_identity:string prop ->
  policy:string prop ->
  policy_name:string prop ->
  string ->
  t
