(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_file_system__disk_iops_configuration

type aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports__client_configurations

type aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports

type aws_fsx_openzfs_file_system__root_volume_configuration__user_and_group_quotas

type aws_fsx_openzfs_file_system__root_volume_configuration
type aws_fsx_openzfs_file_system__timeouts
type aws_fsx_openzfs_file_system

val aws_fsx_openzfs_file_system :
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?copy_tags_to_volumes:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?endpoint_ip_address_range:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?preferred_subnet_id:string prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?skip_final_backup:bool prop ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?timeouts:aws_fsx_openzfs_file_system__timeouts ->
  deployment_type:string prop ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  disk_iops_configuration:
    aws_fsx_openzfs_file_system__disk_iops_configuration list ->
  root_volume_configuration:
    aws_fsx_openzfs_file_system__root_volume_configuration list ->
  string ->
  unit
