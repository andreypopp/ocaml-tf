(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_cache

type t = private {
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
}

val aws_storagegateway_cache :
  ?id:string prop ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  string ->
  t
