(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type client_data

val client_data :
  ?comment:string prop ->
  ?upload_end:string prop ->
  ?upload_size:float prop ->
  ?upload_start:string prop ->
  unit ->
  client_data

type disk_container__user_bucket

val disk_container__user_bucket :
  s3_bucket:string prop ->
  s3_key:string prop ->
  unit ->
  disk_container__user_bucket

type disk_container

val disk_container :
  ?description:string prop ->
  ?url:string prop ->
  format:string prop ->
  user_bucket:disk_container__user_bucket list ->
  unit ->
  disk_container

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ebs_snapshot_import

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
  ?timeouts:timeouts ->
  client_data:client_data list ->
  disk_container:disk_container list ->
  unit ->
  aws_ebs_snapshot_import

val yojson_of_aws_ebs_snapshot_import :
  aws_ebs_snapshot_import -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  client_data:client_data list ->
  disk_container:disk_container list ->
  string ->
  t
