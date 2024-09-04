(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type disk_iops_configuration

val disk_iops_configuration :
  ?iops:float prop ->
  ?mode:string prop ->
  unit ->
  disk_iops_configuration

type root_volume_configuration__nfs_exports__client_configurations

val root_volume_configuration__nfs_exports__client_configurations :
  clients:string prop ->
  options:string prop list ->
  unit ->
  root_volume_configuration__nfs_exports__client_configurations

type root_volume_configuration__nfs_exports

val root_volume_configuration__nfs_exports :
  client_configurations:
    root_volume_configuration__nfs_exports__client_configurations
    list ->
  unit ->
  root_volume_configuration__nfs_exports

type root_volume_configuration__user_and_group_quotas

val root_volume_configuration__user_and_group_quotas :
  id:float prop ->
  storage_capacity_quota_gib:float prop ->
  type_:string prop ->
  unit ->
  root_volume_configuration__user_and_group_quotas

type root_volume_configuration

val root_volume_configuration :
  ?copy_tags_to_snapshots:bool prop ->
  ?data_compression_type:string prop ->
  ?read_only:bool prop ->
  ?record_size_kib:float prop ->
  ?nfs_exports:root_volume_configuration__nfs_exports list ->
  user_and_group_quotas:
    root_volume_configuration__user_and_group_quotas list ->
  unit ->
  root_volume_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_openzfs_file_system

val aws_fsx_openzfs_file_system :
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?copy_tags_to_volumes:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?delete_options:string prop list ->
  ?endpoint_ip_address_range:string prop ->
  ?final_backup_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?preferred_subnet_id:string prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?skip_final_backup:bool prop ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?weekly_maintenance_start_time:string prop ->
  ?disk_iops_configuration:disk_iops_configuration list ->
  ?root_volume_configuration:root_volume_configuration list ->
  ?timeouts:timeouts ->
  deployment_type:string prop ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  unit ->
  aws_fsx_openzfs_file_system

val yojson_of_aws_fsx_openzfs_file_system :
  aws_fsx_openzfs_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  copy_tags_to_volumes : bool prop;
  daily_automatic_backup_start_time : string prop;
  delete_options : string list prop;
  deployment_type : string prop;
  dns_name : string prop;
  endpoint_ip_address : string prop;
  endpoint_ip_address_range : string prop;
  final_backup_tags : string Tf_core.assoc prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  root_volume_id : string prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?copy_tags_to_volumes:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?delete_options:string prop list ->
  ?endpoint_ip_address_range:string prop ->
  ?final_backup_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?preferred_subnet_id:string prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?skip_final_backup:bool prop ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?weekly_maintenance_start_time:string prop ->
  ?disk_iops_configuration:disk_iops_configuration list ->
  ?root_volume_configuration:root_volume_configuration list ->
  ?timeouts:timeouts ->
  deployment_type:string prop ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  string ->
  t

val make :
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?copy_tags_to_volumes:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?delete_options:string prop list ->
  ?endpoint_ip_address_range:string prop ->
  ?final_backup_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?preferred_subnet_id:string prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?skip_final_backup:bool prop ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?weekly_maintenance_start_time:string prop ->
  ?disk_iops_configuration:disk_iops_configuration list ->
  ?root_volume_configuration:root_volume_configuration list ->
  ?timeouts:timeouts ->
  deployment_type:string prop ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  string ->
  t Tf_core.resource
