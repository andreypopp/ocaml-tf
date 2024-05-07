(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_domain_mail_from

val aws_ses_domain_mail_from :
  ?behavior_on_mx_failure:string prop ->
  ?id:string prop ->
  domain:string prop ->
  mail_from_domain:string prop ->
  unit ->
  aws_ses_domain_mail_from

val yojson_of_aws_ses_domain_mail_from :
  aws_ses_domain_mail_from -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  behavior_on_mx_failure : string prop;
  domain : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?behavior_on_mx_failure:string prop ->
  ?id:string prop ->
  domain:string prop ->
  mail_from_domain:string prop ->
  string ->
  t

val make :
  ?behavior_on_mx_failure:string prop ->
  ?id:string prop ->
  domain:string prop ->
  mail_from_domain:string prop ->
  string ->
  t Tf_core.resource
