(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_service_account

val aws_redshift_service_account :
  ?id:string prop ->
  ?region:string prop ->
  unit ->
  aws_redshift_service_account

val yojson_of_aws_redshift_service_account :
  aws_redshift_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
