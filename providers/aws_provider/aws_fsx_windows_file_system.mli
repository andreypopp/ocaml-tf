(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_windows_file_system__audit_log_configuration
type aws_fsx_windows_file_system__disk_iops_configuration
type aws_fsx_windows_file_system__self_managed_active_directory
type aws_fsx_windows_file_system__timeouts
type aws_fsx_windows_file_system

val aws_fsx_windows_file_system :
  ?active_directory_id:string ->
  ?aliases:string list ->
  ?automatic_backup_retention_days:float ->
  ?backup_id:string ->
  ?copy_tags_to_backups:bool ->
  ?daily_automatic_backup_start_time:string ->
  ?deployment_type:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?preferred_subnet_id:string ->
  ?security_group_ids:string list ->
  ?skip_final_backup:bool ->
  ?storage_capacity:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?weekly_maintenance_start_time:string ->
  ?timeouts:aws_fsx_windows_file_system__timeouts ->
  subnet_ids:string list ->
  throughput_capacity:float ->
  audit_log_configuration:
    aws_fsx_windows_file_system__audit_log_configuration list ->
  disk_iops_configuration:
    aws_fsx_windows_file_system__disk_iops_configuration list ->
  self_managed_active_directory:
    aws_fsx_windows_file_system__self_managed_active_directory list ->
  string ->
  unit
