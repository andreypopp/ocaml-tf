(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_endpoint then bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_nodes then bnds
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
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_cluster) -> ()

let yojson_of_aws_memorydb_cluster =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_memorydb_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_cluster

[@@@deriving.end]

let aws_memorydb_cluster ?id ?tags ~name () : aws_memorydb_cluster =
  { id; name; tags }

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
  node_type : string prop;
  num_replicas_per_shard : float prop;
  num_shards : float prop;
  parameter_group_name : string prop;
  port : float prop;
  security_group_ids : string list prop;
  shards : shards list prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  sns_topic_arn : string prop;
  subnet_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tls_enabled : bool prop;
}

let make ?id ?tags ~name __id =
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
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
       tls_enabled = Prop.computed __type __id "tls_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_cluster
        (aws_memorydb_cluster ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
