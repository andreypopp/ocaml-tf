(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_elasticache_cluster = {
  apply_immediately : bool prop option; [@option]
  auto_minor_version_upgrade : string prop option; [@option]
  availability_zone : string prop option; [@option]
  az_mode : string prop option; [@option]
  cluster_id : string prop;
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  id : string prop option; [@option]
  ip_discovery : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  network_type : string prop option; [@option]
  node_type : string prop option; [@option]
  notification_topic_arn : string prop option; [@option]
  num_cache_nodes : float prop option; [@option]
  outpost_mode : string prop option; [@option]
  parameter_group_name : string prop option; [@option]
  port : float prop option; [@option]
  preferred_availability_zones : string prop list option; [@option]
  preferred_outpost_arn : string prop option; [@option]
  replication_group_id : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  snapshot_arns : string prop list option; [@option]
  snapshot_name : string prop option; [@option]
  snapshot_retention_limit : float prop option; [@option]
  snapshot_window : string prop option; [@option]
  subnet_group_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_encryption_enabled : bool prop option; [@option]
  log_delivery_configuration : log_delivery_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_cluster) -> ()

let yojson_of_aws_elasticache_cluster =
  (function
   | {
       apply_immediately = v_apply_immediately;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       availability_zone = v_availability_zone;
       az_mode = v_az_mode;
       cluster_id = v_cluster_id;
       engine = v_engine;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       id = v_id;
       ip_discovery = v_ip_discovery;
       maintenance_window = v_maintenance_window;
       network_type = v_network_type;
       node_type = v_node_type;
       notification_topic_arn = v_notification_topic_arn;
       num_cache_nodes = v_num_cache_nodes;
       outpost_mode = v_outpost_mode;
       parameter_group_name = v_parameter_group_name;
       port = v_port;
       preferred_availability_zones = v_preferred_availability_zones;
       preferred_outpost_arn = v_preferred_outpost_arn;
       replication_group_id = v_replication_group_id;
       security_group_ids = v_security_group_ids;
       snapshot_arns = v_snapshot_arns;
       snapshot_name = v_snapshot_name;
       snapshot_retention_limit = v_snapshot_retention_limit;
       snapshot_window = v_snapshot_window;
       subnet_group_name = v_subnet_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_encryption_enabled = v_transit_encryption_enabled;
       log_delivery_configuration = v_log_delivery_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_log_delivery_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_delivery_configuration)
               v_log_delivery_configuration
           in
           let bnd = "log_delivery_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_transit_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "transit_encryption_enabled", arg in
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
         match v_replication_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_outpost_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_availability_zones", arg in
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
         match v_outpost_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outpost_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_cache_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_cache_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_type", arg in
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
         match v_ip_discovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_discovery", arg in
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
         match v_final_snapshot_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "final_snapshot_identifier", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_az_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "az_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_minor_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_minor_version_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_immediately", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticache_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_cluster

[@@@deriving.end]

let log_delivery_configuration ~destination ~destination_type
    ~log_format ~log_type () : log_delivery_configuration =
  { destination; destination_type; log_format; log_type }

let aws_elasticache_cluster ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?az_mode ?engine
    ?engine_version ?final_snapshot_identifier ?id ?ip_discovery
    ?maintenance_window ?network_type ?node_type
    ?notification_topic_arn ?num_cache_nodes ?outpost_mode
    ?parameter_group_name ?port ?preferred_availability_zones
    ?preferred_outpost_arn ?replication_group_id ?security_group_ids
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
    ?snapshot_window ?subnet_group_name ?tags ?tags_all
    ?transit_encryption_enabled ~cluster_id
    ~log_delivery_configuration () : aws_elasticache_cluster =
  {
    apply_immediately;
    auto_minor_version_upgrade;
    availability_zone;
    az_mode;
    cluster_id;
    engine;
    engine_version;
    final_snapshot_identifier;
    id;
    ip_discovery;
    maintenance_window;
    network_type;
    node_type;
    notification_topic_arn;
    num_cache_nodes;
    outpost_mode;
    parameter_group_name;
    port;
    preferred_availability_zones;
    preferred_outpost_arn;
    replication_group_id;
    security_group_ids;
    snapshot_arns;
    snapshot_name;
    snapshot_retention_limit;
    snapshot_window;
    subnet_group_name;
    tags;
    tags_all;
    transit_encryption_enabled;
    log_delivery_configuration;
  }

type t = {
  tf_name : string;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : string prop;
  availability_zone : string prop;
  az_mode : string prop;
  cache_nodes : cache_nodes list prop;
  cluster_address : string prop;
  cluster_id : string prop;
  configuration_endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  id : string prop;
  ip_discovery : string prop;
  maintenance_window : string prop;
  network_type : string prop;
  node_type : string prop;
  notification_topic_arn : string prop;
  num_cache_nodes : float prop;
  outpost_mode : string prop;
  parameter_group_name : string prop;
  port : float prop;
  preferred_availability_zones : string list prop;
  preferred_outpost_arn : string prop;
  replication_group_id : string prop;
  security_group_ids : string list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_encryption_enabled : bool prop;
}

let make ?apply_immediately ?auto_minor_version_upgrade
    ?availability_zone ?az_mode ?engine ?engine_version
    ?final_snapshot_identifier ?id ?ip_discovery ?maintenance_window
    ?network_type ?node_type ?notification_topic_arn ?num_cache_nodes
    ?outpost_mode ?parameter_group_name ?port
    ?preferred_availability_zones ?preferred_outpost_arn
    ?replication_group_id ?security_group_ids ?snapshot_arns
    ?snapshot_name ?snapshot_retention_limit ?snapshot_window
    ?subnet_group_name ?tags ?tags_all ?transit_encryption_enabled
    ~cluster_id ~log_delivery_configuration __id =
  let __type = "aws_elasticache_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       az_mode = Prop.computed __type __id "az_mode";
       cache_nodes = Prop.computed __type __id "cache_nodes";
       cluster_address = Prop.computed __type __id "cluster_address";
       cluster_id = Prop.computed __type __id "cluster_id";
       configuration_endpoint =
         Prop.computed __type __id "configuration_endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       id = Prop.computed __type __id "id";
       ip_discovery = Prop.computed __type __id "ip_discovery";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       network_type = Prop.computed __type __id "network_type";
       node_type = Prop.computed __type __id "node_type";
       notification_topic_arn =
         Prop.computed __type __id "notification_topic_arn";
       num_cache_nodes = Prop.computed __type __id "num_cache_nodes";
       outpost_mode = Prop.computed __type __id "outpost_mode";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       preferred_availability_zones =
         Prop.computed __type __id "preferred_availability_zones";
       preferred_outpost_arn =
         Prop.computed __type __id "preferred_outpost_arn";
       replication_group_id =
         Prop.computed __type __id "replication_group_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       snapshot_arns = Prop.computed __type __id "snapshot_arns";
       snapshot_name = Prop.computed __type __id "snapshot_name";
       snapshot_retention_limit =
         Prop.computed __type __id "snapshot_retention_limit";
       snapshot_window = Prop.computed __type __id "snapshot_window";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_encryption_enabled =
         Prop.computed __type __id "transit_encryption_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_cluster
        (aws_elasticache_cluster ?apply_immediately
           ?auto_minor_version_upgrade ?availability_zone ?az_mode
           ?engine ?engine_version ?final_snapshot_identifier ?id
           ?ip_discovery ?maintenance_window ?network_type ?node_type
           ?notification_topic_arn ?num_cache_nodes ?outpost_mode
           ?parameter_group_name ?port ?preferred_availability_zones
           ?preferred_outpost_arn ?replication_group_id
           ?security_group_ids ?snapshot_arns ?snapshot_name
           ?snapshot_retention_limit ?snapshot_window
           ?subnet_group_name ?tags ?tags_all
           ?transit_encryption_enabled ~cluster_id
           ~log_delivery_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?az_mode ?engine
    ?engine_version ?final_snapshot_identifier ?id ?ip_discovery
    ?maintenance_window ?network_type ?node_type
    ?notification_topic_arn ?num_cache_nodes ?outpost_mode
    ?parameter_group_name ?port ?preferred_availability_zones
    ?preferred_outpost_arn ?replication_group_id ?security_group_ids
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit
    ?snapshot_window ?subnet_group_name ?tags ?tags_all
    ?transit_encryption_enabled ~cluster_id
    ~log_delivery_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?auto_minor_version_upgrade
      ?availability_zone ?az_mode ?engine ?engine_version
      ?final_snapshot_identifier ?id ?ip_discovery
      ?maintenance_window ?network_type ?node_type
      ?notification_topic_arn ?num_cache_nodes ?outpost_mode
      ?parameter_group_name ?port ?preferred_availability_zones
      ?preferred_outpost_arn ?replication_group_id
      ?security_group_ids ?snapshot_arns ?snapshot_name
      ?snapshot_retention_limit ?snapshot_window ?subnet_group_name
      ?tags ?tags_all ?transit_encryption_enabled ~cluster_id
      ~log_delivery_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
