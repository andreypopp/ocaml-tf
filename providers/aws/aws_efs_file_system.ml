(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lifecycle_policy = {
  transition_to_archive : string prop option; [@option]
  transition_to_ia : string prop option; [@option]
  transition_to_primary_storage_class : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_policy) -> ()

let yojson_of_lifecycle_policy =
  (function
   | {
       transition_to_archive = v_transition_to_archive;
       transition_to_ia = v_transition_to_ia;
       transition_to_primary_storage_class =
         v_transition_to_primary_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transition_to_primary_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transition_to_primary_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transition_to_ia with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transition_to_ia", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transition_to_archive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transition_to_archive", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_policy

[@@@deriving.end]

type protection = {
  replication_overwrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protection) -> ()

let yojson_of_protection =
  (function
   | { replication_overwrite = v_replication_overwrite } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replication_overwrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_overwrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : protection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection

[@@@deriving.end]

type size_in_bytes = {
  value : float prop;
  value_in_ia : float prop;
  value_in_standard : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : size_in_bytes) -> ()

let yojson_of_size_in_bytes =
  (function
   | {
       value = v_value;
       value_in_ia = v_value_in_ia;
       value_in_standard = v_value_in_standard;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_value_in_standard
         in
         ("value_in_standard", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value_in_ia in
         ("value_in_ia", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : size_in_bytes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_size_in_bytes

[@@@deriving.end]

type aws_efs_file_system = {
  availability_zone_name : string prop option; [@option]
  creation_token : string prop option; [@option]
  encrypted : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  performance_mode : string prop option; [@option]
  provisioned_throughput_in_mibps : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  throughput_mode : string prop option; [@option]
  lifecycle_policy : lifecycle_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protection : protection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_file_system) -> ()

let yojson_of_aws_efs_file_system =
  (function
   | {
       availability_zone_name = v_availability_zone_name;
       creation_token = v_creation_token;
       encrypted = v_encrypted;
       id = v_id;
       kms_key_id = v_kms_key_id;
       performance_mode = v_performance_mode;
       provisioned_throughput_in_mibps =
         v_provisioned_throughput_in_mibps;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput_mode = v_throughput_mode;
       lifecycle_policy = v_lifecycle_policy;
       protection = v_protection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_protection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_protection) v_protection
           in
           let bnd = "protection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lifecycle_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lifecycle_policy)
               v_lifecycle_policy
           in
           let bnd = "lifecycle_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_throughput_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "throughput_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioned_throughput_in_mibps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_throughput_in_mibps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_performance_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "performance_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_creation_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "creation_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_efs_file_system -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_file_system

[@@@deriving.end]

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
    ?(lifecycle_policy = []) ?(protection = []) () :
    aws_efs_file_system =
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
  tf_name : string;
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
    ?tags ?tags_all ?throughput_mode ?(lifecycle_policy = [])
    ?(protection = []) __id =
  let __type = "aws_efs_file_system" in
  let __attrs =
    ({
       tf_name = __id;
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
    ?(lifecycle_policy = []) ?(protection = []) __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_name ?creation_token ?encrypted ?id
      ?kms_key_id ?performance_mode ?provisioned_throughput_in_mibps
      ?tags ?tags_all ?throughput_mode ~lifecycle_policy ~protection
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
