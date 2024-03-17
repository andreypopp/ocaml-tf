(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_lustre_file_system__log_configuration
type aws_fsx_lustre_file_system__root_squash_configuration
type aws_fsx_lustre_file_system__timeouts
type aws_fsx_lustre_file_system

val aws_fsx_lustre_file_system :
  ?auto_import_policy:string prop ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?data_compression_type:string prop ->
  ?deployment_type:string prop ->
  ?drive_cache_type:string prop ->
  ?export_path:string prop ->
  ?file_system_type_version:string prop ->
  ?id:string prop ->
  ?import_path:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?kms_key_id:string prop ->
  ?per_unit_storage_throughput:float prop ->
  ?security_group_ids:string prop list ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?timeouts:aws_fsx_lustre_file_system__timeouts ->
  subnet_ids:string prop list ->
  log_configuration:
    aws_fsx_lustre_file_system__log_configuration list ->
  root_squash_configuration:
    aws_fsx_lustre_file_system__root_squash_configuration list ->
  string ->
  unit
