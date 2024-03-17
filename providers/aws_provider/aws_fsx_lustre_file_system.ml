(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_lustre_file_system__log_configuration = {
  destination : string option; [@option]  (** destination *)
  level : string option; [@option]  (** level *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__log_configuration *)

type aws_fsx_lustre_file_system__root_squash_configuration = {
  no_squash_nids : string list option; [@option]
      (** no_squash_nids *)
  root_squash : string option; [@option]  (** root_squash *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__root_squash_configuration *)

type aws_fsx_lustre_file_system__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system__timeouts *)

type aws_fsx_lustre_file_system = {
  auto_import_policy : string option; [@option]
      (** auto_import_policy *)
  automatic_backup_retention_days : float option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool option; [@option]
      (** copy_tags_to_backups *)
  daily_automatic_backup_start_time : string option; [@option]
      (** daily_automatic_backup_start_time *)
  data_compression_type : string option; [@option]
      (** data_compression_type *)
  deployment_type : string option; [@option]  (** deployment_type *)
  drive_cache_type : string option; [@option]
      (** drive_cache_type *)
  export_path : string option; [@option]  (** export_path *)
  file_system_type_version : string option; [@option]
      (** file_system_type_version *)
  id : string option; [@option]  (** id *)
  import_path : string option; [@option]  (** import_path *)
  imported_file_chunk_size : float option; [@option]
      (** imported_file_chunk_size *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  per_unit_storage_throughput : float option; [@option]
      (** per_unit_storage_throughput *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  storage_capacity : float option; [@option]  (** storage_capacity *)
  storage_type : string option; [@option]  (** storage_type *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  weekly_maintenance_start_time : string option; [@option]
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
