(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_lustre_file_system__log_configuration
type aws_fsx_lustre_file_system__root_squash_configuration
type aws_fsx_lustre_file_system__timeouts
type aws_fsx_lustre_file_system

val aws_fsx_lustre_file_system :
  ?auto_import_policy:string ->
  ?automatic_backup_retention_days:float ->
  ?backup_id:string ->
  ?copy_tags_to_backups:bool ->
  ?daily_automatic_backup_start_time:string ->
  ?data_compression_type:string ->
  ?deployment_type:string ->
  ?drive_cache_type:string ->
  ?export_path:string ->
  ?file_system_type_version:string ->
  ?id:string ->
  ?import_path:string ->
  ?imported_file_chunk_size:float ->
  ?kms_key_id:string ->
  ?per_unit_storage_throughput:float ->
  ?security_group_ids:string list ->
  ?storage_capacity:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?weekly_maintenance_start_time:string ->
  ?timeouts:aws_fsx_lustre_file_system__timeouts ->
  subnet_ids:string list ->
  log_configuration:
    aws_fsx_lustre_file_system__log_configuration list ->
  root_squash_configuration:
    aws_fsx_lustre_file_system__root_squash_configuration list ->
  string ->
  unit
