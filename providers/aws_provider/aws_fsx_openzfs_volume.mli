(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_volume__nfs_exports__client_configurations
type aws_fsx_openzfs_volume__nfs_exports
type aws_fsx_openzfs_volume__origin_snapshot
type aws_fsx_openzfs_volume__timeouts
type aws_fsx_openzfs_volume__user_and_group_quotas
type aws_fsx_openzfs_volume

val aws_fsx_openzfs_volume :
  ?copy_tags_to_snapshots:bool ->
  ?data_compression_type:string ->
  ?delete_volume_options:string list ->
  ?record_size_kib:float ->
  ?tags:(string * string) list ->
  ?volume_type:string ->
  ?timeouts:aws_fsx_openzfs_volume__timeouts ->
  name:string ->
  parent_volume_id:string ->
  nfs_exports:aws_fsx_openzfs_volume__nfs_exports list ->
  origin_snapshot:aws_fsx_openzfs_volume__origin_snapshot list ->
  user_and_group_quotas:
    aws_fsx_openzfs_volume__user_and_group_quotas list ->
  string ->
  unit
