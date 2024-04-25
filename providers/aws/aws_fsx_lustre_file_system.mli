(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_configuration

val log_configuration :
  ?destination:string prop ->
  ?level:string prop ->
  unit ->
  log_configuration

type root_squash_configuration

val root_squash_configuration :
  ?no_squash_nids:string prop list ->
  ?root_squash:string prop ->
  unit ->
  root_squash_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_lustre_file_system

val aws_fsx_lustre_file_system :
  ?auto_import_policy:string prop ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?data_compression_type:string prop ->
  ?deployment_type:string prop ->
  ?drive_cache_type:string prop ->
  ?export_path:string prop ->
  ?file_system_type_version:string prop ->
  ?id:string prop ->
  ?import_path:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?kms_key_id:string prop ->
  ?per_unit_storage_throughput:float prop ->
  ?security_group_ids:string prop list ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?log_configuration:log_configuration list ->
  ?root_squash_configuration:root_squash_configuration list ->
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  unit ->
  aws_fsx_lustre_file_system

val yojson_of_aws_fsx_lustre_file_system :
  aws_fsx_lustre_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_import_policy : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  data_compression_type : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  drive_cache_type : string prop;
  export_path : string prop;
  file_system_type_version : string prop;
  id : string prop;
  import_path : string prop;
  imported_file_chunk_size : float prop;
  kms_key_id : string prop;
  mount_name : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  per_unit_storage_throughput : float prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_import_policy:string prop ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?data_compression_type:string prop ->
  ?deployment_type:string prop ->
  ?drive_cache_type:string prop ->
  ?export_path:string prop ->
  ?file_system_type_version:string prop ->
  ?id:string prop ->
  ?import_path:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?kms_key_id:string prop ->
  ?per_unit_storage_throughput:float prop ->
  ?security_group_ids:string prop list ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?log_configuration:log_configuration list ->
  ?root_squash_configuration:root_squash_configuration list ->
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  string ->
  t

val make :
  ?auto_import_policy:string prop ->
  ?automatic_backup_retention_days:float prop ->
  ?backup_id:string prop ->
  ?copy_tags_to_backups:bool prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?data_compression_type:string prop ->
  ?deployment_type:string prop ->
  ?drive_cache_type:string prop ->
  ?export_path:string prop ->
  ?file_system_type_version:string prop ->
  ?id:string prop ->
  ?import_path:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?kms_key_id:string prop ->
  ?per_unit_storage_throughput:float prop ->
  ?security_group_ids:string prop list ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?weekly_maintenance_start_time:string prop ->
  ?log_configuration:log_configuration list ->
  ?root_squash_configuration:root_squash_configuration list ->
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
