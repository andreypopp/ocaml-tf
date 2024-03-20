(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audit_log_configuration

val audit_log_configuration :
  ?audit_log_destination:string prop ->
  ?file_access_audit_log_level:string prop ->
  ?file_share_access_audit_log_level:string prop ->
  unit ->
  audit_log_configuration

type disk_iops_configuration

val disk_iops_configuration :
  ?iops:float prop ->
  ?mode:string prop ->
  unit ->
  disk_iops_configuration

type self_managed_active_directory

val self_managed_active_directory :
  ?file_system_administrators_group:string prop ->
  ?organizational_unit_distinguished_name:string prop ->
  dns_ips:string prop list ->
  domain_name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  self_managed_active_directory

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  audit_log_configuration:audit_log_configuration list ->
  disk_iops_configuration:disk_iops_configuration list ->
  self_managed_active_directory:self_managed_active_directory list ->
  unit ->
  aws_fsx_windows_file_system

val yojson_of_aws_fsx_windows_file_system :
  aws_fsx_windows_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active_directory_id : string prop;
  aliases : string list prop;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_file_server_ip : string prop;
  preferred_subnet_id : string prop;
  remote_administration_endpoint : string prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  audit_log_configuration:audit_log_configuration list ->
  disk_iops_configuration:disk_iops_configuration list ->
  self_managed_active_directory:self_managed_active_directory list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  subnet_ids:string prop list ->
  throughput_capacity:float prop ->
  audit_log_configuration:audit_log_configuration list ->
  disk_iops_configuration:disk_iops_configuration list ->
  self_managed_active_directory:self_managed_active_directory list ->
  string ->
  t Tf_core.resource
