(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_lustre_file_system__log_configuration = {
  destination : string prop option; [@option]  (** destination *)
  level : string prop option; [@option]  (** level *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__log_configuration *)

type aws_fsx_lustre_file_system__root_squash_configuration = {
  no_squash_nids : string prop list option; [@option]
      (** no_squash_nids *)
  root_squash : string prop option; [@option]  (** root_squash *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__root_squash_configuration *)

type aws_fsx_lustre_file_system__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__timeouts *)

type aws_fsx_lustre_file_system = {
  auto_import_policy : string prop option; [@option]
      (** auto_import_policy *)
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  data_compression_type : string prop option; [@option]
      (** data_compression_type *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
  drive_cache_type : string prop option; [@option]
      (** drive_cache_type *)
  export_path : string prop option; [@option]  (** export_path *)
  file_system_type_version : string prop option; [@option]
      (** file_system_type_version *)
  id : string prop option; [@option]  (** id *)
  import_path : string prop option; [@option]  (** import_path *)
  imported_file_chunk_size : float prop option; [@option]
      (** imported_file_chunk_size *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  per_unit_storage_throughput : float prop option; [@option]
      (** per_unit_storage_throughput *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  log_configuration :
    aws_fsx_lustre_file_system__log_configuration list;
  root_squash_configuration :
    aws_fsx_lustre_file_system__root_squash_configuration list;
  timeouts : aws_fsx_lustre_file_system__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system *)

let aws_fsx_lustre_file_system ?auto_import_policy
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~log_configuration ~root_squash_configuration __resource_id =
  let __resource_type = "aws_fsx_lustre_file_system" in
  let __resource =
    {
      auto_import_policy;
      automatic_backup_retention_days;
      backup_id;
      copy_tags_to_backups;
      daily_automatic_backup_start_time;
      data_compression_type;
      deployment_type;
      drive_cache_type;
      export_path;
      file_system_type_version;
      id;
      import_path;
      imported_file_chunk_size;
      kms_key_id;
      per_unit_storage_throughput;
      security_group_ids;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      tags_all;
      weekly_maintenance_start_time;
      log_configuration;
      root_squash_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_lustre_file_system __resource);
  ()
