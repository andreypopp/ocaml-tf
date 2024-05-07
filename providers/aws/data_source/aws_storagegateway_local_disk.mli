(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_local_disk

val aws_storagegateway_local_disk :
  ?disk_node:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  unit ->
  aws_storagegateway_local_disk

val yojson_of_aws_storagegateway_local_disk :
  aws_storagegateway_local_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disk_id : string prop;
  disk_node : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disk_node:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  string ->
  t

val make :
  ?disk_node:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  string ->
  t Tf_core.resource
