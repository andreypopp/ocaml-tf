(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_windows_file_system__audit_log_configuration
type aws_fsx_windows_file_system__disk_iops_configuration
type aws_fsx_windows_file_system__self_managed_active_directory
type aws_fsx_windows_file_system__timeouts
type aws_fsx_windows_file_system

val aws_fsx_windows_file_system :
  ?active_directory_id:string prop ->
  ?aliases:string prop list ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?deployment_type:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?preferred_subnet_id:string prop ->
  ?security_group_ids:string prop list ->
  ?skip_final_backup:bool prop ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?timeouts:aws_fsx_windows_file_system__timeouts ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  audit_log_configuration:
    aws_fsx_windows_file_system__audit_log_configuration list ->
  disk_iops_configuration:
    aws_fsx_windows_file_system__disk_iops_configuration list ->
  self_managed_active_directory:
    aws_fsx_windows_file_system__self_managed_active_directory list ->
  string ->
  unit
