(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data_repository_association__nfs = {
  dns_ips : string prop list option; [@option]  (** dns_ips *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** data_repository_association__nfs *)

type data_repository_association = {
  data_repository_path : string prop;  (** data_repository_path *)
  data_repository_subdirectories : string prop list option; [@option]
      (** data_repository_subdirectories *)
  file_cache_path : string prop;  (** file_cache_path *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  nfs : data_repository_association__nfs list;
}
[@@deriving yojson_of]
(** data_repository_association *)

type lustre_configuration__metadata_configuration = {
  storage_capacity : float prop;  (** storage_capacity *)
}
[@@deriving yojson_of]
(** lustre_configuration__metadata_configuration *)

type lustre_configuration__log_configuration = {
  destination : string prop;  (** destination *)
  level : string prop;  (** level *)
}
[@@deriving yojson_of]

type lustre_configuration = {
  deployment_type : string prop;  (** deployment_type *)
  per_unit_storage_throughput : float prop;
      (** per_unit_storage_throughput *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  metadata_configuration :
    lustre_configuration__metadata_configuration list;
}
[@@deriving yojson_of]
(** lustre_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_file_cache = {
  copy_tags_to_data_repository_associations : bool prop option;
      [@option]
      (** copy_tags_to_data_repository_associations *)
  file_cache_type : string prop;  (** file_cache_type *)
  file_cache_type_version : string prop;
      (** file_cache_type_version *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  storage_capacity : float prop;  (** storage_capacity *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_repository_association : data_repository_association list;
  lustre_configuration : lustre_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_file_cache *)

let data_repository_association__nfs ?dns_ips ~version () :
    data_repository_association__nfs =
  { dns_ips; version }

let data_repository_association ?data_repository_subdirectories ?tags
    ~data_repository_path ~file_cache_path ~nfs () :
    data_repository_association =
  {
    data_repository_path;
    data_repository_subdirectories;
    file_cache_path;
    tags;
    nfs;
  }

let lustre_configuration__metadata_configuration ~storage_capacity ()
    : lustre_configuration__metadata_configuration =
  { storage_capacity }

let lustre_configuration ?weekly_maintenance_start_time
    ~deployment_type ~per_unit_storage_throughput
    ~metadata_configuration () : lustre_configuration =
  {
    deployment_type;
    per_unit_storage_throughput;
    weekly_maintenance_start_time;
    metadata_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_file_cache ?copy_tags_to_data_repository_associations ?id
    ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
    ~file_cache_type ~file_cache_type_version ~storage_capacity
    ~subnet_ids ~data_repository_association ~lustre_configuration ()
    : aws_fsx_file_cache =
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

type t = {
  arn : string prop;
  copy_tags_to_data_repository_associations : bool prop;
  data_repository_association_ids : string list prop;
  dns_name : string prop;
  file_cache_id : string prop;
  file_cache_type : string prop;
  file_cache_type_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?copy_tags_to_data_repository_associations
    ?id ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
    ~file_cache_type ~file_cache_type_version ~storage_capacity
    ~subnet_ids ~data_repository_association ~lustre_configuration
    __resource_id =
  let __resource_type = "aws_fsx_file_cache" in
  let __resource =
    aws_fsx_file_cache ?copy_tags_to_data_repository_associations ?id
      ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
      ~file_cache_type ~file_cache_type_version ~storage_capacity
      ~subnet_ids ~data_repository_association ~lustre_configuration
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_file_cache __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       copy_tags_to_data_repository_associations =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_data_repository_associations";
       data_repository_association_ids =
         Prop.computed __resource_type __resource_id
           "data_repository_association_ids";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       file_cache_id =
         Prop.computed __resource_type __resource_id "file_cache_id";
       file_cache_type =
         Prop.computed __resource_type __resource_id
           "file_cache_type";
       file_cache_type_version =
         Prop.computed __resource_type __resource_id
           "file_cache_type_version";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       network_interface_ids =
         Prop.computed __resource_type __resource_id
           "network_interface_ids";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       storage_capacity =
         Prop.computed __resource_type __resource_id
           "storage_capacity";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
