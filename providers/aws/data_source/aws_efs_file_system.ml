(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lifecycle_policy = {
  transition_to_archive : string prop;
  transition_to_ia : string prop;
  transition_to_primary_storage_class : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_transition_to_primary_storage_class
         in
         ("transition_to_primary_storage_class", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transition_to_ia
         in
         ("transition_to_ia", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transition_to_archive
         in
         ("transition_to_archive", arg) :: bnds
       in
       `Assoc bnds
    : lifecycle_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_policy

[@@@deriving.end]

type protection = { replication_overwrite : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : protection) -> ()

let yojson_of_protection =
  (function
   | { replication_overwrite = v_replication_overwrite } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_overwrite
         in
         ("replication_overwrite", arg) :: bnds
       in
       `Assoc bnds
    : protection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protection

[@@@deriving.end]

type aws_efs_file_system = {
  creation_token : string prop option; [@option]
  file_system_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_file_system) -> ()

let yojson_of_aws_efs_file_system =
  (function
   | {
       creation_token = v_creation_token;
       file_system_id = v_file_system_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
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
       `Assoc bnds
    : aws_efs_file_system -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_file_system

[@@@deriving.end]

let aws_efs_file_system ?creation_token ?file_system_id ?id ?tags ()
    : aws_efs_file_system =
  { creation_token; file_system_id; id; tags }

type t = {
  arn : string prop;
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  creation_token : string prop;
  dns_name : string prop;
  encrypted : bool prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  lifecycle_policy : lifecycle_policy list prop;
  name : string prop;
  performance_mode : string prop;
  protection : protection list prop;
  provisioned_throughput_in_mibps : float prop;
  size_in_bytes : float prop;
  tags : (string * string) list prop;
  throughput_mode : string prop;
}

let make ?creation_token ?file_system_id ?id ?tags __id =
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
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       lifecycle_policy =
         Prop.computed __type __id "lifecycle_policy";
       name = Prop.computed __type __id "name";
       performance_mode =
         Prop.computed __type __id "performance_mode";
       protection = Prop.computed __type __id "protection";
       provisioned_throughput_in_mibps =
         Prop.computed __type __id "provisioned_throughput_in_mibps";
       size_in_bytes = Prop.computed __type __id "size_in_bytes";
       tags = Prop.computed __type __id "tags";
       throughput_mode = Prop.computed __type __id "throughput_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_file_system
        (aws_efs_file_system ?creation_token ?file_system_id ?id
           ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?creation_token ?file_system_id ?id ?tags
    __id =
  let (r : _ Tf_core.resource) =
    make ?creation_token ?file_system_id ?id ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
