(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_media_store_container_policy

val aws_media_store_container_policy :
  ?id:string prop ->
  container_name:string prop ->
  policy:string prop ->
  unit ->
  aws_media_store_container_policy

val yojson_of_aws_media_store_container_policy :
  aws_media_store_container_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_name : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  container_name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  container_name:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
