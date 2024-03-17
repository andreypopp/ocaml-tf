(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_email_identity_mail_from_attributes

val aws_sesv2_email_identity_mail_from_attributes :
  ?behavior_on_mx_failure:string prop ->
  ?id:string prop ->
  ?mail_from_domain:string prop ->
  email_identity:string prop ->
  string ->
  unit
