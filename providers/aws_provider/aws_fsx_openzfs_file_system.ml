(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_openzfs_file_system__disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__disk_iops_configuration *)

type aws_fsx_openzfs_file_system__root_volume_configuration__nfs_exports__client_configurations = {
  clients : string prop;  (** clients *)
  options : string prop list;  (** options *)
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
  id : float prop;  (** id *)
  storage_capacity_quota_gib : float prop;
      (** storage_capacity_quota_gib *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__root_volume_configuration__user_and_group_quotas *)

type aws_fsx_openzfs_file_system__root_volume_configuration = {
  copy_tags_to_snapshots : bool prop option; [@option]
      (** copy_tags_to_snapshots *)
  data_compression_type : string prop option; [@option]
      (** data_compression_type *)
  read_only : bool prop option; [@option]  (** read_only *)
  record_size_kib : float prop option; [@option]
      (** record_size_kib *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system__timeouts *)

type aws_fsx_openzfs_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  copy_tags_to_volumes : bool prop option; [@option]
      (** copy_tags_to_volumes *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop;  (** deployment_type *)
  endpoint_ip_address_range : string prop option; [@option]
      (** endpoint_ip_address_range *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop option; [@option]
      (** preferred_subnet_id *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
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
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range ?id
    ?kms_key_id ?preferred_subnet_id ?route_table_ids
    ?security_group_ids ?skip_final_backup ?storage_capacity
    ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity
    ~disk_iops_configuration ~root_volume_configuration __resource_id
    =
  let __resource_type = "aws_fsx_openzfs_file_system" in
  let __resource =
    {
      automatic_backup_retention_days;
      backup_id;
      copy_tags_to_backups;
      copy_tags_to_volumes;
      daily_automatic_backup_start_time;
      deployment_type;
      endpoint_ip_address_range;
      id;
      kms_key_id;
      preferred_subnet_id;
      route_table_ids;
      security_group_ids;
      skip_final_backup;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      tags_all;
      throughput_capacity;
      weekly_maintenance_start_time;
      disk_iops_configuration;
      root_volume_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_file_system __resource);
  ()
