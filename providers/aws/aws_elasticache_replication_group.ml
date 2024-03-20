(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_delivery_configuration = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
  log_format : string prop;  (** log_format *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** log_delivery_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_elasticache_replication_group = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  at_rest_encryption_enabled : bool prop option; [@option]
      (** at_rest_encryption_enabled *)
  auth_token : string prop option; [@option]  (** auth_token *)
  auth_token_update_strategy : string prop option; [@option]
      (** auth_token_update_strategy *)
  auto_minor_version_upgrade : string prop option; [@option]
      (** auto_minor_version_upgrade *)
  automatic_failover_enabled : bool prop option; [@option]
      (** automatic_failover_enabled *)
  data_tiering_enabled : bool prop option; [@option]
      (** data_tiering_enabled *)
  description : string prop option; [@option]  (** description *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  global_replication_group_id : string prop option; [@option]
      (** global_replication_group_id *)
  id : string prop option; [@option]  (** id *)
  ip_discovery : string prop option; [@option]  (** ip_discovery *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  multi_az_enabled : bool prop option; [@option]
      (** multi_az_enabled *)
  network_type : string prop option; [@option]  (** network_type *)
  node_type : string prop option; [@option]  (** node_type *)
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
  num_cache_clusters : float prop option; [@option]
      (** num_cache_clusters *)
  num_node_groups : float prop option; [@option]
      (** num_node_groups *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  port : float prop option; [@option]  (** port *)
  preferred_cache_cluster_azs : string prop list option; [@option]
      (** preferred_cache_cluster_azs *)
  replicas_per_node_group : float prop option; [@option]
      (** replicas_per_node_group *)
  replication_group_id : string prop;  (** replication_group_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  security_group_names : string prop list option; [@option]
      (** security_group_names *)
  snapshot_arns : string prop list option; [@option]
      (** snapshot_arns *)
  snapshot_name : string prop option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float prop option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string prop option; [@option]
      (** snapshot_window *)
  subnet_group_name : string prop option; [@option]
      (** subnet_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_encryption_enabled : bool prop option; [@option]
      (** transit_encryption_enabled *)
  user_group_ids : string prop list option; [@option]
      (** user_group_ids *)
  log_delivery_configuration : log_delivery_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group *)

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
