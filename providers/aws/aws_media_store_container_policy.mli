(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
