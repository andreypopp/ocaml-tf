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
  ?automatic_backup_retention_days:float ->
  ?backup_id:string ->
  ?copy_tags_to_backups:bool ->
  ?copy_tags_to_volumes:bool ->
  ?preferred_subnet_id:string ->
  ?security_group_ids:string list ->
  ?skip_final_backup:bool ->
  ?storage_capacity:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_fsx_openzfs_file_system__timeouts ->
  deployment_type:string ->
  subnet_ids:string list ->
  throughput_capacity:float ->
  disk_iops_configuration:
    aws_fsx_openzfs_file_system__disk_iops_configuration list ->
  root_volume_configuration:
    aws_fsx_openzfs_file_system__root_volume_configuration list ->
  string ->
  unit
