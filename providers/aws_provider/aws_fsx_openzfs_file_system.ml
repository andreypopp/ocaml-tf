(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_openzfs_file_system__disk_iops_configuration = {
  iops : float option; [@option]  (** iops *)
  mode : string option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__disk_iops_configuration *)

type aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports__client_configurations = {
  clients : string;  (** clients *)
  options : string list;  (** options *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports__client_configurations *)

type aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports = {
  client_configurations :
    aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports__client_configurations
    list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports *)

type aws_fsx_openzfs_file_system__root_volume_configuration__user_and_group_quotas = {
  id : float;  (** id *)
  storage_capacity_quota_gib : float;
      (** storage_capacity_quota_gib *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__root_volume_configuration__user_and_group_quotas *)

type aws_fsx_openzfs_file_system__root_volume_configuration = {
  copy_tags_to_snapshots : bool option; [@option]
      (** copy_tags_to_snapshots *)
  data_compression_type : string option; [@option]
      (** data_compression_type *)
  read_only : bool option; [@option]  (** read_only *)
  record_size_kib : float option; [@option]  (** record_size_kib *)
  nfs_exports :
    aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports
    list;
  user_and_group_quotas :
    aws_fsx_openzfs_file_system__root_volume_configuration__user_and_group_quotas
    list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__root_volume_configuration *)

type aws_fsx_openzfs_file_system__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__timeouts *)

type aws_fsx_openzfs_file_system = {
  automatic_backup_retention_days : float option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool option; [@option]
      (** copy_tags_to_backups *)
  copy_tags_to_volumes : bool option; [@option]
      (** copy_tags_to_volumes *)
  deployment_type : string;  (** deployment_type *)
  preferred_subnet_id : string option; [@option]
      (** preferred_subnet_id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  skip_final_backup : bool option; [@option]
      (** skip_final_backup *)
  storage_capacity : float option; [@option]  (** storage_capacity *)
  storage_type : string option; [@option]  (** storage_type *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_capacity : float;  (** throughput_capacity *)
  disk_iops_configuration :
    aws_fsx_openzfs_file_system__disk_iops_configuration list;
  root_volume_configuration :
    aws_fsx_openzfs_file_system__root_volume_configuration list;
  timeouts : aws_fsx_openzfs_file_system__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system *)

let aws_fsx_openzfs_file_system ?automatic_backup_retention_days
    ?backup_id ?copy_tags_to_backups ?copy_tags_to_volumes
    ?preferred_subnet_id ?security_group_ids ?skip_final_backup
    ?storage_capacity ?storage_type ?tags ?timeouts ~deployment_type
    ~subnet_ids ~throughput_capacity ~disk_iops_configuration
    ~root_volume_configuration __resource_id =
  let __resource_type = "aws_fsx_openzfs_file_system" in
  let __resource =
    {
      automatic_backup_retention_days;
      backup_id;
      copy_tags_to_backups;
      copy_tags_to_volumes;
      deployment_type;
      preferred_subnet_id;
      security_group_ids;
      skip_final_backup;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      throughput_capacity;
      disk_iops_configuration;
      root_volume_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_file_system __resource);
  ()
