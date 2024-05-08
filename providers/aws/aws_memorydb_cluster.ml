(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type cluster_endpoint = { address : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_endpoint) -> ()

let yojson_of_cluster_endpoint =
  (function
   | { address = v_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : cluster_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_endpoint

[@@@deriving.end]

type shards__nodes__endpoint = {
  address : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shards__nodes__endpoint) -> ()

let yojson_of_shards__nodes__endpoint =
  (function
   | { address = v_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : shards__nodes__endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shards__nodes__endpoint

[@@@deriving.end]

type shards__nodes = {
  availability_zone : string prop;
  create_time : string prop;
  endpoint : shards__nodes__endpoint list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shards__nodes) -> ()

let yojson_of_shards__nodes =
  (function
   | {
       availability_zone = v_availability_zone;
       create_time = v_create_time;
       endpoint = v_endpoint;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shards__nodes__endpoint)
               v_endpoint
           in
           let bnd = "endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : shards__nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shards__nodes

[@@@deriving.end]

type shards = {
  name : string prop;
  nodes : shards__nodes list;
      [@default []] [@yojson_drop_default ( = )]
  num_nodes : float prop;
  slots : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shards) -> ()

let yojson_of_shards =
  (function
   | {
       name = v_name;
       nodes = v_nodes;
       num_nodes = v_num_nodes;
       slots = v_slots;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slots in
         ("slots", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_num_nodes in
         ("num_nodes", arg) :: bnds
       in
       let bnds =
         if [] = v_nodes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shards__nodes) v_nodes
           in
           let bnd = "nodes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : shards -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shards

[@@@deriving.end]

type aws_memorydb_cluster = {
  acl_name : string prop;
  auto_minor_version_upgrade : bool prop option; [@option]
  data_tiering : bool prop option; [@option]
  description : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_name : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  node_type : string prop;
  num_replicas_per_shard : float prop option; [@option]
  num_shards : float prop option; [@option]
  parameter_group_name : string prop option; [@option]
  port : float prop option; [@option]
  security_group_ids : string prop list option; [@option]
  snapshot_arns : string prop list option; [@option]
  snapshot_name : string prop option; [@option]
  snapshot_retention_limit : float prop option; [@option]
  snapshot_window : string prop option; [@option]
  sns_topic_arn : string prop option; [@option]
  subnet_group_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tls_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_cluster) -> ()

let yojson_of_aws_memorydb_cluster =
  (function
   | {
       acl_name = v_acl_name;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       data_tiering = v_data_tiering;
       description = v_description;
       engine_version = v_engine_version;
       final_snapshot_name = v_final_snapshot_name;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       maintenance_window = v_maintenance_window;
       name = v_name;
       name_prefix = v_name_prefix;
       node_type = v_node_type;
       num_replicas_per_shard = v_num_replicas_per_shard;
       num_shards = v_num_shards;
       parameter_group_name = v_parameter_group_name;
       port = v_port;
       security_group_ids = v_security_group_ids;
       snapshot_arns = v_snapshot_arns;
       snapshot_name = v_snapshot_name;
       snapshot_retention_limit = v_snapshot_retention_limit;
       snapshot_window = v_snapshot_window;
       sns_topic_arn = v_sns_topic_arn;
       subnet_group_name = v_subnet_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
       tls_enabled = v_tls_enabled;
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
         match v_tls_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_enabled", arg in
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
         match v_subnet_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sns_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_retention_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "snapshot_retention_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "snapshot_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_shards with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_shards", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_replicas_per_shard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_replicas_per_shard", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
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
         match v_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_window", arg in
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
         match v_final_snapshot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "final_snapshot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_tiering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_tiering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_minor_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_minor_version_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_acl_name in
         ("acl_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_memorydb_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_cluster

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_memorydb_cluster ?auto_minor_version_upgrade ?data_tiering
    ?description ?engine_version ?final_snapshot_name ?id
    ?kms_key_arn ?maintenance_window ?name ?name_prefix
    ?num_replicas_per_shard ?num_shards ?parameter_group_name ?port
    ?security_group_ids ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?sns_topic_arn
    ?subnet_group_name ?tags ?tags_all ?tls_enabled ?timeouts
    ~acl_name ~node_type () : aws_memorydb_cluster =
  {
    acl_name;
    auto_minor_version_upgrade;
    data_tiering;
    description;
    engine_version;
    final_snapshot_name;
    id;
    kms_key_arn;
    maintenance_window;
    name;
    name_prefix;
    node_type;
    num_replicas_per_shard;
    num_shards;
    parameter_group_name;
    port;
    security_group_ids;
    snapshot_arns;
    snapshot_name;
    snapshot_retention_limit;
    snapshot_window;
    sns_topic_arn;
    subnet_group_name;
    tags;
    tags_all;
    tls_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  acl_name : string prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  cluster_endpoint : cluster_endpoint list prop;
  data_tiering : bool prop;
  description : string prop;
  engine_patch_version : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  kms_key_arn : string prop;
  maintenance_window : string prop;
  name : string prop;
  name_prefix : string prop;
  node_type : string prop;
  num_replicas_per_shard : float prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  security_group_ids : string list prop;
  shards : shards list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  sns_topic_arn : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tls_enabled : bool prop;
}

let make ?auto_minor_version_upgrade ?data_tiering ?description
    ?engine_version ?final_snapshot_name ?id ?kms_key_arn
    ?maintenance_window ?name ?name_prefix ?num_replicas_per_shard
    ?num_shards ?parameter_group_name ?port ?security_group_ids
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
    ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
    ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type __id =
  let __type = "aws_memorydb_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       acl_name = Prop.computed __type __id "acl_name";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       cluster_endpoint =
         Prop.computed __type __id "cluster_endpoint";
       data_tiering = Prop.computed __type __id "data_tiering";
       description = Prop.computed __type __id "description";
       engine_patch_version =
         Prop.computed __type __id "engine_patch_version";
       engine_version = Prop.computed __type __id "engine_version";
       final_snapshot_name =
         Prop.computed __type __id "final_snapshot_name";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       node_type = Prop.computed __type __id "node_type";
       num_replicas_per_shard =
         Prop.computed __type __id "num_replicas_per_shard";
       num_shards = Prop.computed __type __id "num_shards";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       shards = Prop.computed __type __id "shards";
       snapshot_arns = Prop.computed __type __id "snapshot_arns";
       snapshot_name = Prop.computed __type __id "snapshot_name";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tls_enabled = Prop.computed __type __id "tls_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_cluster
        (aws_memorydb_cluster ?auto_minor_version_upgrade
           ?data_tiering ?description ?engine_version
           ?final_snapshot_name ?id ?kms_key_arn ?maintenance_window
           ?name ?name_prefix ?num_replicas_per_shard ?num_shards
           ?parameter_group_name ?port ?security_group_ids
           ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
           ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
           ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_minor_version_upgrade ?data_tiering
    ?description ?engine_version ?final_snapshot_name ?id
    ?kms_key_arn ?maintenance_window ?name ?name_prefix
    ?num_replicas_per_shard ?num_shards ?parameter_group_name ?port
    ?security_group_ids ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?sns_topic_arn
    ?subnet_group_name ?tags ?tags_all ?tls_enabled ?timeouts
    ~acl_name ~node_type __id =
  let (r : _ Tf_core.resource) =
    make ?auto_minor_version_upgrade ?data_tiering ?description
      ?engine_version ?final_snapshot_name ?id ?kms_key_arn
      ?maintenance_window ?name ?name_prefix ?num_replicas_per_shard
      ?num_shards ?parameter_group_name ?port ?security_group_ids
      ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
      ?snapshot_window ?sns_topic_arn ?subnet_group_name ?tags
      ?tags_all ?tls_enabled ?timeouts ~acl_name ~node_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
