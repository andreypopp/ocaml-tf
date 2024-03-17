(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_cached_iscsi_volume

val aws_storagegateway_cached_iscsi_volume :
  ?kms_encrypted:bool ->
  ?kms_key:string ->
  ?snapshot_id:string ->
  ?source_volume_arn:string ->
  ?tags:(string * string) list ->
  gateway_arn:string ->
  network_interface_id:string ->
  target_name:string ->
  volume_size_in_bytes:float ->
  string ->
  unit
