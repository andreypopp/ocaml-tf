(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_stored_iscsi_volume

val aws_storagegateway_stored_iscsi_volume :
  ?id:string ->
  ?kms_encrypted:bool ->
  ?kms_key:string ->
  ?snapshot_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  disk_id:string ->
  gateway_arn:string ->
  network_interface_id:string ->
  preserve_existing_data:bool ->
  target_name:string ->
  string ->
  unit
