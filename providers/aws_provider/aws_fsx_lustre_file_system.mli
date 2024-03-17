(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_lustre_file_system__log_configuration
type aws_fsx_lustre_file_system__root_squash_configuration
type aws_fsx_lustre_file_system__timeouts
type aws_fsx_lustre_file_system

val aws_fsx_lustre_file_system :
  ?backup_id:string ->
  ?copy_tags_to_backups:bool ->
  ?data_compression_type:string ->
  ?deployment_type:string ->
  ?drive_cache_type:string ->
  ?import_path:string ->
  ?per_unit_storage_throughput:float ->
  ?security_group_ids:string list ->
  ?storage_capacity:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_fsx_lustre_file_system__timeouts ->
  subnet_ids:string list ->
  log_configuration:
    aws_fsx_lustre_file_system__log_configuration list ->
  root_squash_configuration:
    aws_fsx_lustre_file_system__root_squash_configuration list ->
  string ->
  unit
