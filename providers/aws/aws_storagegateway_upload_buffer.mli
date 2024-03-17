(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_upload_buffer

type t = private {
  disk_id : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

val aws_storagegateway_upload_buffer :
  ?disk_id:string prop ->
  ?disk_path:string prop ->
  ?id:string prop ->
  gateway_arn:string prop ->
  string ->
  t
