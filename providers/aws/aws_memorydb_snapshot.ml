(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type cluster_configuration = {
  description : string prop;
  engine_version : string prop;
  maintenance_window : string prop;
  name : string prop;
  node_type : string prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  topic_arn : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_configuration) -> ()

let yojson_of_cluster_configuration =
  (function
   | {
       description = v_description;
       engine_version = v_engine_version;
       maintenance_window = v_maintenance_window;
       name = v_name;
       node_type = v_node_type;
       num_shards = v_num_shards;
       parameter_group_name = v_parameter_group_name;
       port = v_port;
       snapshot_retention_limit = v_snapshot_retention_limit;
       snapshot_window = v_snapshot_window;
       subnet_group_name = v_subnet_group_name;
       topic_arn = v_topic_arn;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subnet_group_name
         in
         ("subnet_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_window
         in
         ("snapshot_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshot_retention_limit
         in
         ("snapshot_retention_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_group_name
         in
         ("parameter_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_num_shards in
         ("num_shards", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engine_version
         in
         ("engine_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : cluster_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_configuration

[@@@deriving.end]

type aws_memorydb_snapshot = {
  cluster_name : string prop;
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_snapshot) -> ()

let yojson_of_aws_memorydb_snapshot =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       name = v_name;
       name_prefix = v_name_prefix;
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_memorydb_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_snapshot

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_memorydb_snapshot ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?timeouts ~cluster_name () : aws_memorydb_snapshot =
  {
    cluster_name;
    id;
    kms_key_arn;
    name;
    name_prefix;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  cluster_configuration : cluster_configuration list prop;
  cluster_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  source : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
    ?timeouts ~cluster_name __id =
  let __type = "aws_memorydb_snapshot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_configuration =
         Prop.computed __type __id "cluster_configuration";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       source = Prop.computed __type __id "source";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_snapshot
        (aws_memorydb_snapshot ?id ?kms_key_arn ?name ?name_prefix
           ?tags ?tags_all ?timeouts ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?name ?name_prefix ?tags
    ?tags_all ?timeouts ~cluster_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?name ?name_prefix ?tags ?tags_all
      ?timeouts ~cluster_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
