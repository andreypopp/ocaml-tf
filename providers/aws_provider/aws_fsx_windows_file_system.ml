(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_windows_file_system__audit_log_configuration = {
  audit_log_destination : string option; [@option]
      (** audit_log_destination *)
  file_access_audit_log_level : string option; [@option]
      (** file_access_audit_log_level *)
  file_share_access_audit_log_level : string option; [@option]
      (** file_share_access_audit_log_level *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__audit_log_configuration *)

type aws_fsx_windows_file_system__disk_iops_configuration = {
  iops : float option; [@option]  (** iops *)
  mode : string option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__disk_iops_configuration *)

type aws_fsx_windows_file_system__self_managed_active_directory = {
  dns_ips : string list;  (** dns_ips *)
  domain_name : string;  (** domain_name *)
  file_system_administrators_group : string option; [@option]
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string option; [@option]
      (** organizational_unit_distinguished_name *)
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__self_managed_active_directory *)

type aws_fsx_windows_file_system__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system__timeouts *)

type aws_fsx_windows_file_system = {
  active_directory_id : string option; [@option]
      (** active_directory_id *)
  aliases : string list option; [@option]  (** aliases *)
  automatic_backup_retention_days : float option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool option; [@option]
      (** copy_tags_to_backups *)
  deployment_type : string option; [@option]  (** deployment_type *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  skip_final_backup : bool option; [@option]
      (** skip_final_backup *)
  storage_type : string option; [@option]  (** storage_type *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_capacity : float;  (** throughput_capacity *)
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
    ?deployment_type ?security_group_ids ?skip_final_backup
    ?storage_type ?tags ?timeouts ~subnet_ids ~throughput_capacity
    ~audit_log_configuration ~disk_iops_configuration
    ~self_managed_active_directory __resource_id =
  let __resource_type = "aws_fsx_windows_file_system" in
  let __resource =
    {
      active_directory_id;
      aliases;
      automatic_backup_retention_days;
      backup_id;
      copy_tags_to_backups;
      deployment_type;
      security_group_ids;
      skip_final_backup;
      storage_type;
      subnet_ids;
      tags;
      throughput_capacity;
      audit_log_configuration;
      disk_iops_configuration;
      self_managed_active_directory;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_windows_file_system __resource);
  ()
