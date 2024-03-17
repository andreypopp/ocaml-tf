(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_file_cache__data_repository_association__nfs = {
  dns_ips : string list option; [@option]  (** dns_ips *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_fsx_file_cache__data_repository_association__nfs *)

type aws_fsx_file_cache__data_repository_association = {
  association_id : string;  (** association_id *)
  data_repository_path : string;  (** data_repository_path *)
  data_repository_subdirectories : string list option; [@option]
      (** data_repository_subdirectories *)
  file_cache_id : string;  (** file_cache_id *)
  file_cache_path : string;  (** file_cache_path *)
  file_system_id : string;  (** file_system_id *)
  file_system_path : string;  (** file_system_path *)
  imported_file_chunk_size : float;  (** imported_file_chunk_size *)
  resource_arn : string;  (** resource_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  nfs : aws_fsx_file_cache__data_repository_association__nfs list;
}
[@@deriving yojson_of]
(** aws_fsx_file_cache__data_repository_association *)

type aws_fsx_file_cache__lustre_configuration__metadata_configuration = {
  storage_capacity : float;  (** storage_capacity *)
}
[@@deriving yojson_of]
(** aws_fsx_file_cache__lustre_configuration__metadata_configuration *)

type aws_fsx_file_cache__lustre_configuration__log_configuration = {
  destination : string;  (** destination *)
  level : string;  (** level *)
}
[@@deriving yojson_of]

type aws_fsx_file_cache__lustre_configuration = {
  deployment_type : string;  (** deployment_type *)
  log_configuration :
    aws_fsx_file_cache__lustre_configuration__log_configuration list;
      (** log_configuration *)
  mount_name : string;  (** mount_name *)
  per_unit_storage_throughput : float;
      (** per_unit_storage_throughput *)
  weekly_maintenance_start_time : string option; [@option]
      (** weekly_maintenance_start_time *)
  metadata_configuration :
    aws_fsx_file_cache__lustre_configuration__metadata_configuration
    list;
}
[@@deriving yojson_of]
(** aws_fsx_file_cache__lustre_configuration *)

type aws_fsx_file_cache__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_file_cache__timeouts *)

type aws_fsx_file_cache = {
  copy_tags_to_data_repository_associations : bool option; [@option]
      (** copy_tags_to_data_repository_associations *)
  file_cache_type : string;  (** file_cache_type *)
  file_cache_type_version : string;  (** file_cache_type_version *)
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  storage_capacity : float;  (** storage_capacity *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  data_repository_association :
    aws_fsx_file_cache__data_repository_association list;
  lustre_configuration :
    aws_fsx_file_cache__lustre_configuration list;
  timeouts : aws_fsx_file_cache__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_file_cache *)

let aws_fsx_file_cache ?copy_tags_to_data_repository_associations ?id
    ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
    ~file_cache_type ~file_cache_type_version ~storage_capacity
    ~subnet_ids ~data_repository_association ~lustre_configuration
    __resource_id =
  let __resource_type = "aws_fsx_file_cache" in
  let __resource =
    {
      copy_tags_to_data_repository_associations;
      file_cache_type;
      file_cache_type_version;
      id;
      kms_key_id;
      security_group_ids;
      storage_capacity;
      subnet_ids;
      tags;
      tags_all;
      data_repository_association;
      lustre_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_file_cache __resource);
  ()
