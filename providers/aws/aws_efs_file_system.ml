(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_file_system__lifecycle_policy = {
  transition_to_archive : string prop option; [@option]
      (** transition_to_archive *)
  transition_to_ia : string prop option; [@option]
      (** transition_to_ia *)
  transition_to_primary_storage_class : string prop option; [@option]
      (** transition_to_primary_storage_class *)
}
[@@deriving yojson_of]
(** aws_efs_file_system__lifecycle_policy *)

type aws_efs_file_system__protection = {
  replication_overwrite : string prop option; [@option]
      (** replication_overwrite *)
}
[@@deriving yojson_of]
(** aws_efs_file_system__protection *)

type aws_efs_file_system__size_in_bytes = {
  value : float prop;  (** value *)
  value_in_ia : float prop;  (** value_in_ia *)
  value_in_standard : float prop;  (** value_in_standard *)
}
[@@deriving yojson_of]

type aws_efs_file_system = {
  availability_zone_name : string prop option; [@option]
      (** availability_zone_name *)
  creation_token : string prop option; [@option]
      (** creation_token *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  performance_mode : string prop option; [@option]
      (** performance_mode *)
  provisioned_throughput_in_mibps : float prop option; [@option]
      (** provisioned_throughput_in_mibps *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput_mode : string prop option; [@option]
      (** throughput_mode *)
  lifecycle_policy : aws_efs_file_system__lifecycle_policy list;
  protection : aws_efs_file_system__protection list;
}
[@@deriving yojson_of]
(** aws_efs_file_system *)

type t = {
  arn : string prop;
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  creation_token : string prop;
  dns_name : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  number_of_mount_targets : float prop;
  owner_id : string prop;
  performance_mode : string prop;
  provisioned_throughput_in_mibps : float prop;
  size_in_bytes : aws_efs_file_system__size_in_bytes list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_mode : string prop;
}

let aws_efs_file_system ?availability_zone_name ?creation_token
    ?encrypted ?id ?kms_key_id ?performance_mode
    ?provisioned_throughput_in_mibps ?tags ?tags_all ?throughput_mode
    ~lifecycle_policy ~protection __resource_id =
  let __resource_type = "aws_efs_file_system" in
  let __resource =
    ({
       availability_zone_name;
       creation_token;
       encrypted;
       id;
       kms_key_id;
       performance_mode;
       provisioned_throughput_in_mibps;
       tags;
       tags_all;
       throughput_mode;
       lifecycle_policy;
       protection;
     }
      : aws_efs_file_system)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_file_system __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       availability_zone_name =
         Prop.computed __resource_type __resource_id
           "availability_zone_name";
       creation_token =
         Prop.computed __resource_type __resource_id "creation_token";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       number_of_mount_targets =
         Prop.computed __resource_type __resource_id
           "number_of_mount_targets";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       performance_mode =
         Prop.computed __resource_type __resource_id
           "performance_mode";
       provisioned_throughput_in_mibps =
         Prop.computed __resource_type __resource_id
           "provisioned_throughput_in_mibps";
       size_in_bytes =
         Prop.computed __resource_type __resource_id "size_in_bytes";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       throughput_mode =
         Prop.computed __resource_type __resource_id
           "throughput_mode";
     }
      : t)
  in
  __resource_attributes
