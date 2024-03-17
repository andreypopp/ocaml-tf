(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot_import__client_data
type aws_ebs_snapshot_import__disk_container__user_bucket
type aws_ebs_snapshot_import__disk_container
type aws_ebs_snapshot_import__timeouts
type aws_ebs_snapshot_import

type t = private {
  arn : string prop;
  data_encryption_key_id : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  outpost_arn : string prop;
  owner_alias : string prop;
  owner_id : string prop;
  permanent_restore : bool prop;
  role_name : string prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  temporary_restore_days : float prop;
  volume_id : string prop;
  volume_size : float prop;
}

val aws_ebs_snapshot_import :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?permanent_restore:bool prop ->
  ?role_name:string prop ->
  ?storage_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?temporary_restore_days:float prop ->
  ?timeouts:aws_ebs_snapshot_import__timeouts ->
  client_data:aws_ebs_snapshot_import__client_data list ->
  disk_container:aws_ebs_snapshot_import__disk_container list ->
  string ->
  t
