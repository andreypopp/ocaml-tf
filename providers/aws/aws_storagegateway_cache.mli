(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_cache

val aws_storagegateway_cache :
  ?id:string prop ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  unit ->
  aws_storagegateway_cache

val yojson_of_aws_storagegateway_cache :
  aws_storagegateway_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  string ->
  t Tf_core.resource
