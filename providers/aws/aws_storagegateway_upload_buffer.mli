(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_upload_buffer

val aws_storagegateway_upload_buffer :
  ?disk_id:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  unit ->
  aws_storagegateway_upload_buffer

val yojson_of_aws_storagegateway_upload_buffer :
  aws_storagegateway_upload_buffer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disk_id : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disk_id:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  string ->
  t

val make :
  ?disk_id:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  string ->
  t Tf_core.resource
