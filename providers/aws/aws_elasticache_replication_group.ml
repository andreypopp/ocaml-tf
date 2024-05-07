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

type aws_elasticache_replication_group = {
  apply_immediately : bool prop option; [@option]
  at_rest_encryption_enabled : bool prop option; [@option]
  auth_token : string prop option; [@option]
  auth_token_update_strategy : string prop option; [@option]
  auto_minor_version_upgrade : string prop option; [@option]
  automatic_failover_enabled : bool prop option; [@option]
  data_tiering_enabled : bool prop option; [@option]
  description : string prop option; [@option]
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  final_snapshot_identifier : string prop option; [@option]
  global_replication_group_id : string prop option; [@option]
  id : string prop option; [@option]
  ip_discovery : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  maintenance_window : string prop option; [@option]
  multi_az_enabled : bool prop option; [@option]
  network_type : string prop option; [@option]
  node_type : string prop option; [@option]
  notification_topic_arn : string prop option; [@option]
  num_cache_clusters : float prop option; [@option]
  num_node_groups : float prop option; [@option]
  parameter_group_name : string prop option; [@option]
  port : float prop option; [@option]
  preferred_cache_cluster_azs : string prop list option; [@option]
  replicas_per_node_group : float prop option; [@option]
  replication_group_id : string prop;
  security_group_ids : string prop list option; [@option]
  security_group_names : string prop list option; [@option]
  snapshot_arns : string prop list option; [@option]
  snapshot_name : string prop option; [@option]
  snapshot_retention_limit : float prop option; [@option]
  snapshot_window : string prop option; [@option]
  subnet_group_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_encryption_enabled : bool prop option; [@option]
  user_group_ids : string prop list option; [@option]
  log_delivery_configuration : log_delivery_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_replication_group) -> ()

let yojson_of_aws_elasticache_replication_group =
  (function
   | {
       apply_immediately = v_apply_immediately;
       at_rest_encryption_enabled = v_at_rest_encryption_enabled;
       auth_token = v_auth_token;
       auth_token_update_strategy = v_auth_token_update_strategy;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       automatic_failover_enabled = v_automatic_failover_enabled;
       data_tiering_enabled = v_data_tiering_enabled;
       description = v_description;
       engine = v_engine;
       engine_version = v_engine_version;
       final_snapshot_identifier = v_final_snapshot_identifier;
       global_replication_group_id = v_global_replication_group_id;
       id = v_id;
       ip_discovery = v_ip_discovery;
       kms_key_id = v_kms_key_id;
       maintenance_window = v_maintenance_window;
       multi_az_enabled = v_multi_az_enabled;
       network_type = v_network_type;
       node_type = v_node_type;
       notification_topic_arn = v_notification_topic_arn;
       num_cache_clusters = v_num_cache_clusters;
       num_node_groups = v_num_node_groups;
       parameter_group_name = v_parameter_group_name;
       port = v_port;
       preferred_cache_cluster_azs = v_preferred_cache_cluster_azs;
       replicas_per_node_group = v_replicas_per_node_group;
       replication_group_id = v_replication_group_id;
       security_group_ids = v_security_group_ids;
       security_group_names = v_security_group_names;
       snapshot_arns = v_snapshot_arns;
       snapshot_name = v_snapshot_name;
       snapshot_retention_limit = v_snapshot_retention_limit;
       snapshot_window = v_snapshot_window;
       subnet_group_name = v_subnet_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_encryption_enabled = v_transit_encryption_enabled;
       user_group_ids = v_user_group_ids;
       log_delivery_configuration = v_log_delivery_configuration;
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
         let arg =
           yojson_of_list yojson_of_log_delivery_configuration
             v_log_delivery_configuration
         in
         ("log_delivery_configuration", arg) :: bnds
       in
       let bnds =
         match v_user_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_group_ids", arg in
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
         match v_security_group_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_names", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_replication_group_id
         in
         ("replication_group_id", arg) :: bnds
       in
       let bnds =
         match v_replicas_per_node_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas_per_node_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_cache_cluster_azs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_cache_cluster_azs", arg in
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
         match v_num_node_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_node_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_cache_clusters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_cache_clusters", arg in
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
         match v_multi_az_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_az_enabled", arg in
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_global_replication_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "global_replication_group_id", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_tiering_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_tiering_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_failover_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_failover_enabled", arg in
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
         match v_auth_token_update_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_token_update_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_at_rest_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "at_rest_encryption_enabled", arg in
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
    : aws_elasticache_replication_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_replication_group

[@@@deriving.end]

let log_delivery_configuration ~destination ~destination_type
    ~log_format ~log_type () : log_delivery_configuration =
  { destination; destination_type; log_format; log_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_elasticache_replication_group ?apply_immediately
    ?at_rest_encryption_enabled ?auth_token
    ?auth_token_update_strategy ?auto_minor_version_upgrade
    ?automatic_failover_enabled ?data_tiering_enabled ?description
    ?engine ?engine_version ?final_snapshot_identifier
    ?global_replication_group_id ?id ?ip_discovery ?kms_key_id
    ?maintenance_window ?multi_az_enabled ?network_type ?node_type
    ?notification_topic_arn ?num_cache_clusters ?num_node_groups
    ?parameter_group_name ?port ?preferred_cache_cluster_azs
    ?replicas_per_node_group ?security_group_ids
    ?security_group_names ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?subnet_group_name
    ?tags ?tags_all ?transit_encryption_enabled ?user_group_ids
    ?timeouts ~replication_group_id ~log_delivery_configuration () :
    aws_elasticache_replication_group =
  {
    apply_immediately;
    at_rest_encryption_enabled;
    auth_token;
    auth_token_update_strategy;
    auto_minor_version_upgrade;
    automatic_failover_enabled;
    data_tiering_enabled;
    description;
    engine;
    engine_version;
    final_snapshot_identifier;
    global_replication_group_id;
    id;
    ip_discovery;
    kms_key_id;
    maintenance_window;
    multi_az_enabled;
    network_type;
    node_type;
    notification_topic_arn;
    num_cache_clusters;
    num_node_groups;
    parameter_group_name;
    port;
    preferred_cache_cluster_azs;
    replicas_per_node_group;
    replication_group_id;
    security_group_ids;
    security_group_names;
    snapshot_arns;
    snapshot_name;
    snapshot_retention_limit;
    snapshot_window;
    subnet_group_name;
    tags;
    tags_all;
    transit_encryption_enabled;
    user_group_ids;
    log_delivery_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  apply_immediately : bool prop;
  arn : string prop;
  at_rest_encryption_enabled : bool prop;
  auth_token : string prop;
  auth_token_update_strategy : string prop;
  auto_minor_version_upgrade : string prop;
  automatic_failover_enabled : bool prop;
  cluster_enabled : bool prop;
  configuration_endpoint_address : string prop;
  data_tiering_enabled : bool prop;
  description : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  global_replication_group_id : string prop;
  id : string prop;
  ip_discovery : string prop;
  kms_key_id : string prop;
  maintenance_window : string prop;
  member_clusters : string list prop;
  multi_az_enabled : bool prop;
  network_type : string prop;
  node_type : string prop;
  notification_topic_arn : string prop;
  num_cache_clusters : float prop;
  num_node_groups : float prop;
  parameter_group_name : string prop;
  port : float prop;
  preferred_cache_cluster_azs : string list prop;
  primary_endpoint_address : string prop;
  reader_endpoint_address : string prop;
  replicas_per_node_group : float prop;
  replication_group_id : string prop;
  security_group_ids : string list prop;
  security_group_names : string list prop;
  snapshot_arns : string list prop;
  snapshot_name : string prop;
  snapshot_retention_limit : float prop;
  snapshot_window : string prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_encryption_enabled : bool prop;
  user_group_ids : string list prop;
}

let make ?apply_immediately ?at_rest_encryption_enabled ?auth_token
    ?auth_token_update_strategy ?auto_minor_version_upgrade
    ?automatic_failover_enabled ?data_tiering_enabled ?description
    ?engine ?engine_version ?final_snapshot_identifier
    ?global_replication_group_id ?id ?ip_discovery ?kms_key_id
    ?maintenance_window ?multi_az_enabled ?network_type ?node_type
    ?notification_topic_arn ?num_cache_clusters ?num_node_groups
    ?parameter_group_name ?port ?preferred_cache_cluster_azs
    ?replicas_per_node_group ?security_group_ids
    ?security_group_names ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?subnet_group_name
    ?tags ?tags_all ?transit_encryption_enabled ?user_group_ids
    ?timeouts ~replication_group_id ~log_delivery_configuration __id
    =
  let __type = "aws_elasticache_replication_group" in
  let __attrs =
    ({
       tf_name = __id;
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       at_rest_encryption_enabled =
         Prop.computed __type __id "at_rest_encryption_enabled";
       auth_token = Prop.computed __type __id "auth_token";
       auth_token_update_strategy =
         Prop.computed __type __id "auth_token_update_strategy";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       automatic_failover_enabled =
         Prop.computed __type __id "automatic_failover_enabled";
       cluster_enabled = Prop.computed __type __id "cluster_enabled";
       configuration_endpoint_address =
         Prop.computed __type __id "configuration_endpoint_address";
       data_tiering_enabled =
         Prop.computed __type __id "data_tiering_enabled";
       description = Prop.computed __type __id "description";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       global_replication_group_id =
         Prop.computed __type __id "global_replication_group_id";
       id = Prop.computed __type __id "id";
       ip_discovery = Prop.computed __type __id "ip_discovery";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       member_clusters = Prop.computed __type __id "member_clusters";
       multi_az_enabled =
         Prop.computed __type __id "multi_az_enabled";
       network_type = Prop.computed __type __id "network_type";
       node_type = Prop.computed __type __id "node_type";
       notification_topic_arn =
         Prop.computed __type __id "notification_topic_arn";
       num_cache_clusters =
         Prop.computed __type __id "num_cache_clusters";
       num_node_groups = Prop.computed __type __id "num_node_groups";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       port = Prop.computed __type __id "port";
       preferred_cache_cluster_azs =
         Prop.computed __type __id "preferred_cache_cluster_azs";
       primary_endpoint_address =
         Prop.computed __type __id "primary_endpoint_address";
       reader_endpoint_address =
         Prop.computed __type __id "reader_endpoint_address";
       replicas_per_node_group =
         Prop.computed __type __id "replicas_per_node_group";
       replication_group_id =
         Prop.computed __type __id "replication_group_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       security_group_names =
         Prop.computed __type __id "security_group_names";
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
       user_group_ids = Prop.computed __type __id "user_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_replication_group
        (aws_elasticache_replication_group ?apply_immediately
           ?at_rest_encryption_enabled ?auth_token
           ?auth_token_update_strategy ?auto_minor_version_upgrade
           ?automatic_failover_enabled ?data_tiering_enabled
           ?description ?engine ?engine_version
           ?final_snapshot_identifier ?global_replication_group_id
           ?id ?ip_discovery ?kms_key_id ?maintenance_window
           ?multi_az_enabled ?network_type ?node_type
           ?notification_topic_arn ?num_cache_clusters
           ?num_node_groups ?parameter_group_name ?port
           ?preferred_cache_cluster_azs ?replicas_per_node_group
           ?security_group_ids ?security_group_names ?snapshot_arns
           ?snapshot_name ?snapshot_retention_limit ?snapshot_window
           ?subnet_group_name ?tags ?tags_all
           ?transit_encryption_enabled ?user_group_ids ?timeouts
           ~replication_group_id ~log_delivery_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately
    ?at_rest_encryption_enabled ?auth_token
    ?auth_token_update_strategy ?auto_minor_version_upgrade
    ?automatic_failover_enabled ?data_tiering_enabled ?description
    ?engine ?engine_version ?final_snapshot_identifier
    ?global_replication_group_id ?id ?ip_discovery ?kms_key_id
    ?maintenance_window ?multi_az_enabled ?network_type ?node_type
    ?notification_topic_arn ?num_cache_clusters ?num_node_groups
    ?parameter_group_name ?port ?preferred_cache_cluster_azs
    ?replicas_per_node_group ?security_group_ids
    ?security_group_names ?snapshot_arns ?snapshot_name
    ?snapshot_retention_limit ?snapshot_window ?subnet_group_name
    ?tags ?tags_all ?transit_encryption_enabled ?user_group_ids
    ?timeouts ~replication_group_id ~log_delivery_configuration __id
    =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?at_rest_encryption_enabled ?auth_token
      ?auth_token_update_strategy ?auto_minor_version_upgrade
      ?automatic_failover_enabled ?data_tiering_enabled ?description
      ?engine ?engine_version ?final_snapshot_identifier
      ?global_replication_group_id ?id ?ip_discovery ?kms_key_id
      ?maintenance_window ?multi_az_enabled ?network_type ?node_type
      ?notification_topic_arn ?num_cache_clusters ?num_node_groups
      ?parameter_group_name ?port ?preferred_cache_cluster_azs
      ?replicas_per_node_group ?security_group_ids
      ?security_group_names ?snapshot_arns ?snapshot_name
      ?snapshot_retention_limit ?snapshot_window ?subnet_group_name
      ?tags ?tags_all ?transit_encryption_enabled ?user_group_ids
      ?timeouts ~replication_group_id ~log_delivery_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
