(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codecommit_repository

val aws_codecommit_repository :
  ?id:string prop ->
  repository_name:string prop ->
  unit ->
  aws_codecommit_repository

val yojson_of_aws_codecommit_repository :
  aws_codecommit_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
