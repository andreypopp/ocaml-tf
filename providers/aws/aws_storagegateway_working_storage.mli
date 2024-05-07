(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_working_storage

val aws_storagegateway_working_storage :
  ?id:string prop ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  unit ->
  aws_storagegateway_working_storage

val yojson_of_aws_storagegateway_working_storage :
  aws_storagegateway_working_storage -> json

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
