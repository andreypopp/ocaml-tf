(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_volume__nfs_exports__client_configurations
type aws_fsx_openzfs_volume__nfs_exports
type aws_fsx_openzfs_volume__origin_snapshot
type aws_fsx_openzfs_volume__timeouts
type aws_fsx_openzfs_volume__user_and_group_quotas
type aws_fsx_openzfs_volume

type t = private {
  arn : string prop;
  copy_tags_to_snapshots : bool prop;
  data_compression_type : string prop;
  delete_volume_options : string list prop;
  id : string prop;
  name : string prop;
  parent_volume_id : string prop;
  read_only : bool prop;
  record_size_kib : float prop;
  storage_capacity_quota_gib : float prop;
  storage_capacity_reservation_gib : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_type : string prop;
}

val aws_fsx_openzfs_volume :
  ?copy_tags_to_snapshots:bool prop ->
  ?data_compression_type:string prop ->
  ?delete_volume_options:string prop list ->
  ?id:string prop ->
  ?read_only:bool prop ->
  ?record_size_kib:float prop ->
  ?storage_capacity_quota_gib:float prop ->
  ?storage_capacity_reservation_gib:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_type:string prop ->
  ?timeouts:aws_fsx_openzfs_volume__timeouts ->
  name:string prop ->
  parent_volume_id:string prop ->
  nfs_exports:aws_fsx_openzfs_volume__nfs_exports list ->
  origin_snapshot:aws_fsx_openzfs_volume__origin_snapshot list ->
  user_and_group_quotas:
    aws_fsx_openzfs_volume__user_and_group_quotas list ->
  string ->
  t
