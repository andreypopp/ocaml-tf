(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_hsm_client_certificate

val aws_redshift_hsm_client_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  hsm_client_certificate_identifier:string prop ->
  unit ->
  aws_redshift_hsm_client_certificate

val yojson_of_aws_redshift_hsm_client_certificate :
  aws_redshift_hsm_client_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  hsm_client_certificate_identifier : string prop;
  hsm_client_certificate_public_key : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  hsm_client_certificate_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  hsm_client_certificate_identifier:string prop ->
  string ->
  t Tf_core.resource
