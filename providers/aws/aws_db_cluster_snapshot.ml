(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_db_cluster_snapshot = {
  db_cluster_identifier : string prop;
  db_cluster_snapshot_identifier : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
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
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_db_cluster_snapshot_identifier
         in
         ("db_cluster_snapshot_identifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_cluster_identifier
         in
         ("db_cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_db_cluster_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_cluster_snapshot

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_db_cluster_snapshot ?id ?tags ?tags_all ?timeouts
    ~db_cluster_identifier ~db_cluster_snapshot_identifier () :
    aws_db_cluster_snapshot =
  {
    db_cluster_identifier;
    db_cluster_snapshot_identifier;
    id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  license_model : string prop;
  port : float prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~db_cluster_identifier
    ~db_cluster_snapshot_identifier __id =
  let __type = "aws_db_cluster_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
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
       kms_key_id = Prop.computed __type __id "kms_key_id";
       license_model = Prop.computed __type __id "license_model";
       port = Prop.computed __type __id "port";
       snapshot_type = Prop.computed __type __id "snapshot_type";
       source_db_cluster_snapshot_arn =
         Prop.computed __type __id "source_db_cluster_snapshot_arn";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_cluster_snapshot
        (aws_db_cluster_snapshot ?id ?tags ?tags_all ?timeouts
           ~db_cluster_identifier ~db_cluster_snapshot_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~db_cluster_identifier ~db_cluster_snapshot_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~db_cluster_identifier
      ~db_cluster_snapshot_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
