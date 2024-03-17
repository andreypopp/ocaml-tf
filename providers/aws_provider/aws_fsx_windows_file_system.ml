(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_windows_file_system__audit_log_configuration = {
  audit_log_destination : string prop option; [@option]
      (** audit_log_destination *)
  file_access_audit_log_level : string prop option; [@option]
      (** file_access_audit_log_level *)
  file_share_access_audit_log_level : string prop option; [@option]
      (** file_share_access_audit_log_level *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__audit_log_configuration *)

type aws_fsx_windows_file_system__disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__disk_iops_configuration *)

type aws_fsx_windows_file_system__self_managed_active_directory = {
  dns_ips : string prop list;  (** dns_ips *)
  domain_name : string prop;  (** domain_name *)
  file_system_administrators_group : string prop option; [@option]
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__self_managed_active_directory *)

type aws_fsx_windows_file_system__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__timeouts *)

type aws_fsx_windows_file_system = {
  active_directory_id : string prop option; [@option]
      (** active_directory_id *)
  aliases : string prop list option; [@option]  (** aliases *)
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop option; [@option]
      (** preferred_subnet_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  skip_final_backup : bool prop option; [@option]
      (** skip_final_backup *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput_capacity : float prop;  (** throughput_capacity *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  audit_log_configuration :
    aws_fsx_windows_file_system__audit_log_configuration list;
  disk_iops_configuration :
    aws_fsx_windows_file_system__disk_iops_configuration list;
  self_managed_active_directory :
    aws_fsx_windows_file_system__self_managed_active_directory list;
  timeouts : aws_fsx_windows_file_system__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system *)

let aws_fsx_windows_file_system ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~throughput_capacity ~audit_log_configuration
    ~disk_iops_configuration ~self_managed_active_directory
    __resource_id =
  let __resource_type = "aws_fsx_windows_file_system" in
  let __resource =
    {
      active_directory_id;
      aliases;
      automatic_backup_retention_days;
      backup_id;
      copy_tags_to_backups;
      daily_automatic_backup_start_time;
      deployment_type;
      id;
      kms_key_id;
      preferred_subnet_id;
      security_group_ids;
      skip_final_backup;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      tags_all;
      throughput_capacity;
      weekly_maintenance_start_time;
      audit_log_configuration;
      disk_iops_configuration;
      self_managed_active_directory;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_windows_file_system __resource);
  ()
