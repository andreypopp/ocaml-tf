(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_domain_dkim

val aws_ses_domain_dkim :
  ?id:string prop ->
  domain:string prop ->
  unit ->
  aws_ses_domain_dkim

val yojson_of_aws_ses_domain_dkim : aws_ses_domain_dkim -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dkim_tokens : string list prop;
  domain : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  domain:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  domain:string prop ->
  string ->
  t Tf_core.resource
