(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_storagegateway_stored_iscsi_volume

val aws_storagegateway_stored_iscsi_volume :
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  network_interface_id:string prop ->
  preserve_existing_data:bool prop ->
  target_name:string prop ->
  unit ->
  aws_storagegateway_stored_iscsi_volume

val yojson_of_aws_storagegateway_stored_iscsi_volume :
  aws_storagegateway_stored_iscsi_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  chap_enabled : bool prop;
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key : string prop;
  lun_number : float prop;
  network_interface_id : string prop;
  network_interface_port : float prop;
  preserve_existing_data : bool prop;
  snapshot_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_arn : string prop;
  target_name : string prop;
  volume_attachment_status : string prop;
  volume_id : string prop;
  volume_size_in_bytes : float prop;
  volume_status : string prop;
  volume_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  network_interface_id:string prop ->
  preserve_existing_data:bool prop ->
  target_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  disk_id:string prop ->
  gateway_arn:string prop ->
  network_interface_id:string prop ->
  preserve_existing_data:bool prop ->
  target_name:string prop ->
  string ->
  t Tf_core.resource
