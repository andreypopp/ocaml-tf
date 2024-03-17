(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_cached_iscsi_volume

val aws_storagegateway_cached_iscsi_volume :
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key:string prop ->
  ?snapshot_id:string prop ->
  ?source_volume_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  gateway_arn:string prop ->
  network_interface_id:string prop ->
  target_name:string prop ->
  volume_size_in_bytes:float prop ->
  string ->
  unit
