(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lifecycle_policy = {
  transition_to_archive : string prop option; [@option]
      (** transition_to_archive *)
  transition_to_ia : string prop option; [@option]
      (** transition_to_ia *)
  transition_to_primary_storage_class : string prop option; [@option]
      (** transition_to_primary_storage_class *)
}
[@@deriving yojson_of]
(** lifecycle_policy *)

type protection = {
  replication_overwrite : string prop option; [@option]
      (** replication_overwrite *)
}
[@@deriving yojson_of]
(** protection *)

type size_in_bytes = {
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
  lifecycle_policy : lifecycle_policy list;
  protection : protection list;
}
[@@deriving yojson_of]
(** aws_efs_file_system *)

let lifecycle_policy ?transition_to_archive ?transition_to_ia
    ?transition_to_primary_storage_class () : lifecycle_policy =
  {
    transition_to_archive;
    transition_to_ia;
    transition_to_primary_storage_class;
  }

let protection ?replication_overwrite () : protection =
  { replication_overwrite }

let aws_efs_file_system ?availability_zone_name ?creation_token
    ?encrypted ?id ?kms_key_id ?performance_mode
    ?provisioned_throughput_in_mibps ?tags ?tags_all ?throughput_mode
    ~lifecycle_policy ~protection () : aws_efs_file_system =
  {
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
  size_in_bytes : size_in_bytes list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_mode : string prop;
}

let make ?availability_zone_name ?creation_token ?encrypted ?id
    ?kms_key_id ?performance_mode ?provisioned_throughput_in_mibps
    ?tags ?tags_all ?throughput_mode ~lifecycle_policy ~protection
    __id =
  let __type = "aws_efs_file_system" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       availability_zone_name =
         Prop.computed __type __id "availability_zone_name";
       creation_token = Prop.computed __type __id "creation_token";
       dns_name = Prop.computed __type __id "dns_name";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       number_of_mount_targets =
         Prop.computed __type __id "number_of_mount_targets";
       owner_id = Prop.computed __type __id "owner_id";
       performance_mode =
         Prop.computed __type __id "performance_mode";
       provisioned_throughput_in_mibps =
         Prop.computed __type __id "provisioned_throughput_in_mibps";
       size_in_bytes = Prop.computed __type __id "size_in_bytes";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       throughput_mode = Prop.computed __type __id "throughput_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_file_system
        (aws_efs_file_system ?availability_zone_name ?creation_token
           ?encrypted ?id ?kms_key_id ?performance_mode
           ?provisioned_throughput_in_mibps ?tags ?tags_all
           ?throughput_mode ~lifecycle_policy ~protection ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone_name ?creation_token
    ?encrypted ?id ?kms_key_id ?performance_mode
    ?provisioned_throughput_in_mibps ?tags ?tags_all ?throughput_mode
    ~lifecycle_policy ~protection __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_name ?creation_token ?encrypted ?id
      ?kms_key_id ?performance_mode ?provisioned_throughput_in_mibps
      ?tags ?tags_all ?throughput_mode ~lifecycle_policy ~protection
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
