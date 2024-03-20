(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_nodes = {
  address : string prop;
  availability_zone : string prop;
  id : string prop;
  outpost_arn : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_nodes) -> ()

let yojson_of_cache_nodes =
  (function
   | {
       address = v_address;
       availability_zone = v_availability_zone;
       id = v_id;
       outpost_arn = v_outpost_arn;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_outpost_arn in
         ("outpost_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : cache_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_nodes

[@@@deriving.end]

type log_delivery_configuration = {
  destination : string prop;
  destination_type : string prop;
  log_format : string prop;
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery_configuration) -> ()

let yojson_of_log_delivery_configuration =
  (function
   | {
       destination = v_destination;
       destination_type = v_destination_type;
       log_format = v_log_format;
       log_type = v_log_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_format in
         ("log_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_type
         in
         ("destination_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : log_delivery_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery_configuration

[@@@deriving.end]

type aws_elasticache_cluster = {
  cluster_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_cluster) -> ()

let yojson_of_aws_elasticache_cluster =
  (function
   | { cluster_id = v_cluster_id; id = v_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_elasticache_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_cluster

[@@@deriving.end]

let aws_elasticache_cluster ?id ?tags ~cluster_id () :
    aws_elasticache_cluster =
  { cluster_id; id; tags }

type t = {
  arn : string prop;
  availability_zone : string prop;
  cache_nodes : cache_nodes list prop;
  cluster_address : string prop;
  cluster_id : string prop;
  configuration_endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  ip_discovery : string prop;
  log_delivery_configuration : log_delivery_configuration list prop;
  maintenance_window : string prop;
  network_type : string prop;
  node_type : string prop;
  notification_topic_arn : string prop;
  num_cache_nodes : float prop;
  parameter_group_name : string prop;
  port : float prop;
  preferred_outpost_arn : string prop;
  replication_group_id : string prop;
  security_group_ids : string list prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~cluster_id __id =
  let __type = "aws_elasticache_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       cache_nodes = Prop.computed __type __id "cache_nodes";
       cluster_address = Prop.computed __type __id "cluster_address";
       cluster_id = Prop.computed __type __id "cluster_id";
       configuration_endpoint =
         Prop.computed __type __id "configuration_endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       ip_discovery = Prop.computed __type __id "ip_discovery";
       log_delivery_configuration =
         Prop.computed __type __id "log_delivery_configuration";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       network_type = Prop.computed __type __id "network_type";
       node_type = Prop.computed __type __id "node_type";
       notification_topic_arn =
         Prop.computed __type __id "notification_topic_arn";
       num_cache_nodes = Prop.computed __type __id "num_cache_nodes";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       preferred_outpost_arn =
         Prop.computed __type __id "preferred_outpost_arn";
       replication_group_id =
         Prop.computed __type __id "replication_group_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_cluster
        (aws_elasticache_cluster ?id ?tags ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~cluster_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
