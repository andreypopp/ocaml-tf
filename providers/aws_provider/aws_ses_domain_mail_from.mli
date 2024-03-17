(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_domain_mail_from

val aws_ses_domain_mail_from :
  ?behavior_on_mx_failure:string prop ->
  ?id:string prop ->
  domain:string prop ->
  mail_from_domain:string prop ->
  string ->
  unit
