(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_email_identity

val aws_ses_email_identity :
  ?id:string prop ->
  email:string prop ->
  unit ->
  aws_ses_email_identity

val yojson_of_aws_ses_email_identity : aws_ses_email_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  email : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  email:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  email:string prop ->
  string ->
  t Tf_core.resource
