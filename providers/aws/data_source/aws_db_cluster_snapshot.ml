(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_cluster_snapshot = {
  db_cluster_identifier : string prop option; [@option]
  db_cluster_snapshot_identifier : string prop option; [@option]
  id : string prop option; [@option]
  include_public : bool prop option; [@option]
  include_shared : bool prop option; [@option]
  most_recent : bool prop option; [@option]
  snapshot_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_cluster_snapshot) -> ()

let yojson_of_aws_db_cluster_snapshot =
  (function
   | {
       db_cluster_identifier = v_db_cluster_identifier;
       db_cluster_snapshot_identifier =
         v_db_cluster_snapshot_identifier;
       id = v_id;
       include_public = v_include_public;
       include_shared = v_include_shared;
       most_recent = v_most_recent;
       snapshot_type = v_snapshot_type;
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
         match v_snapshot_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_shared with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_shared", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_public with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_public", arg in
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
         match v_db_cluster_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_snapshot_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_cluster_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_cluster_snapshot

[@@@deriving.end]

let aws_db_cluster_snapshot ?db_cluster_identifier
    ?db_cluster_snapshot_identifier ?id ?include_public
    ?include_shared ?most_recent ?snapshot_type ?tags () :
    aws_db_cluster_snapshot =
  {
    db_cluster_identifier;
    db_cluster_snapshot_identifier;
    id;
    include_public;
    include_shared;
    most_recent;
    snapshot_type;
    tags;
  }

type t = {
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  include_public : bool prop;
  include_shared : bool prop;
  kms_key_id : string prop;
  license_model : string prop;
  most_recent : bool prop;
  port : float prop;
  snapshot_create_time : string prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

let make ?db_cluster_identifier ?db_cluster_snapshot_identifier ?id
    ?include_public ?include_shared ?most_recent ?snapshot_type ?tags
    __id =
  let __type = "aws_db_cluster_snapshot" in
  let __attrs =
    ({
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       db_cluster_identifier =
         Prop.computed __type __id "db_cluster_identifier";
       db_cluster_snapshot_arn =
         Prop.computed __type __id "db_cluster_snapshot_arn";
       db_cluster_snapshot_identifier =
         Prop.computed __type __id "db_cluster_snapshot_identifier";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       include_public = Prop.computed __type __id "include_public";
       include_shared = Prop.computed __type __id "include_shared";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       license_model = Prop.computed __type __id "license_model";
       most_recent = Prop.computed __type __id "most_recent";
       port = Prop.computed __type __id "port";
       snapshot_create_time =
         Prop.computed __type __id "snapshot_create_time";
       snapshot_type = Prop.computed __type __id "snapshot_type";
       source_db_cluster_snapshot_arn =
         Prop.computed __type __id "source_db_cluster_snapshot_arn";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_cluster_snapshot
        (aws_db_cluster_snapshot ?db_cluster_identifier
           ?db_cluster_snapshot_identifier ?id ?include_public
           ?include_shared ?most_recent ?snapshot_type ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?db_cluster_identifier
    ?db_cluster_snapshot_identifier ?id ?include_public
    ?include_shared ?most_recent ?snapshot_type ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?db_cluster_identifier ?db_cluster_snapshot_identifier ?id
      ?include_public ?include_shared ?most_recent ?snapshot_type
      ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
