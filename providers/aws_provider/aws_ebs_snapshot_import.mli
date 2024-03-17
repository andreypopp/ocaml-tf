(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot_import__client_data
type aws_ebs_snapshot_import__disk_container__user_bucket
type aws_ebs_snapshot_import__disk_container
type aws_ebs_snapshot_import__timeouts
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
  ?timeouts:aws_ebs_snapshot_import__timeouts ->
  client_data:aws_ebs_snapshot_import__client_data list ->
  disk_container:aws_ebs_snapshot_import__disk_container list ->
  string ->
  unit
