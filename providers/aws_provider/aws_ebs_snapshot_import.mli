(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ebs_snapshot_import__client_data
type aws_ebs_snapshot_import__disk_container__user_bucket
type aws_ebs_snapshot_import__disk_container
type aws_ebs_snapshot_import__timeouts
type aws_ebs_snapshot_import

val aws_ebs_snapshot_import :
  ?description:string ->
  ?encrypted:bool ->
  ?id:string ->
  ?kms_key_id:string ->
  ?permanent_restore:bool ->
  ?role_name:string ->
  ?storage_tier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?temporary_restore_days:float ->
  ?timeouts:aws_ebs_snapshot_import__timeouts ->
  client_data:aws_ebs_snapshot_import__client_data list ->
  disk_container:aws_ebs_snapshot_import__disk_container list ->
  string ->
  unit
