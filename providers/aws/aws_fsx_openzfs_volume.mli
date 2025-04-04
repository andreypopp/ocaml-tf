(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nfs_exports__client_configurations

val nfs_exports__client_configurations :
  clients:string prop ->
  options:string prop list ->
  unit ->
  nfs_exports__client_configurations

type nfs_exports

val nfs_exports :
  client_configurations:nfs_exports__client_configurations list ->
  unit ->
  nfs_exports

type origin_snapshot

val origin_snapshot :
  copy_strategy:string prop ->
  snapshot_arn:string prop ->
  unit ->
  origin_snapshot

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_and_group_quotas

val user_and_group_quotas :
  id:float prop ->
  storage_capacity_quota_gib:float prop ->
  type_:string prop ->
  unit ->
  user_and_group_quotas

type aws_fsx_openzfs_volume

val aws_fsx_openzfs_volume :
  ?copy_tags_to_snapshots:bool prop ->
  ?data_compression_type:string prop ->
  ?delete_volume_options:string prop list ->
  ?id:string prop ->
  ?read_only:bool prop ->
  ?record_size_kib:float prop ->
  ?storage_capacity_quota_gib:float prop ->
  ?storage_capacity_reservation_gib:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?volume_type:string prop ->
  ?nfs_exports:nfs_exports list ->
  ?origin_snapshot:origin_snapshot list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_volume_id:string prop ->
  user_and_group_quotas:user_and_group_quotas list ->
  unit ->
  aws_fsx_openzfs_volume

val yojson_of_aws_fsx_openzfs_volume : aws_fsx_openzfs_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  volume_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?copy_tags_to_snapshots:bool prop ->
  ?data_compression_type:string prop ->
  ?delete_volume_options:string prop list ->
  ?id:string prop ->
  ?read_only:bool prop ->
  ?record_size_kib:float prop ->
  ?storage_capacity_quota_gib:float prop ->
  ?storage_capacity_reservation_gib:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?volume_type:string prop ->
  ?nfs_exports:nfs_exports list ->
  ?origin_snapshot:origin_snapshot list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_volume_id:string prop ->
  user_and_group_quotas:user_and_group_quotas list ->
  string ->
  t

val make :
  ?copy_tags_to_snapshots:bool prop ->
  ?data_compression_type:string prop ->
  ?delete_volume_options:string prop list ->
  ?id:string prop ->
  ?read_only:bool prop ->
  ?record_size_kib:float prop ->
  ?storage_capacity_quota_gib:float prop ->
  ?storage_capacity_reservation_gib:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?volume_type:string prop ->
  ?nfs_exports:nfs_exports list ->
  ?origin_snapshot:origin_snapshot list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_volume_id:string prop ->
  user_and_group_quotas:user_and_group_quotas list ->
  string ->
  t Tf_core.resource
