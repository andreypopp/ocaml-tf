(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type audit_log_configuration = {
  audit_log_destination : string prop;  (** audit_log_destination *)
  file_access_audit_log_level : string prop;
      (** file_access_audit_log_level *)
  file_share_access_audit_log_level : string prop;
      (** file_share_access_audit_log_level *)
}

type disk_iops_configuration = {
  iops : float prop;  (** iops *)
  mode : string prop;  (** mode *)
}

type aws_fsx_windows_file_system

val aws_fsx_windows_file_system :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  unit ->
  aws_fsx_windows_file_system

val yojson_of_aws_fsx_windows_file_system :
  aws_fsx_windows_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_directory_id : string prop;
  aliases : string list prop;
  arn : string prop;
  audit_log_configuration : audit_log_configuration list prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  disk_iops_configuration : disk_iops_configuration list prop;
  dns_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_file_server_ip : string prop;
  preferred_subnet_id : string prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t Tf_core.resource
