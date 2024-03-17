(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_cached_iscsi_volume

type t = private {
  arn : string prop;
  chap_enabled : bool prop;
  gateway_arn : string prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key : string prop;
  lun_number : float prop;
  network_interface_id : string prop;
  network_interface_port : float prop;
  snapshot_id : string prop;
  source_volume_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  target_name : string prop;
  volume_arn : string prop;
  volume_id : string prop;
  volume_size_in_bytes : float prop;
}

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
  t
