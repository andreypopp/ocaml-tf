(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_stored_iscsi_volume

val aws_storagegateway_stored_iscsi_volume :
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key:string prop ->
  ?snapshot_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  network_interface_id:string prop ->
  preserve_existing_data:bool prop ->
  target_name:string prop ->
  string ->
  unit
