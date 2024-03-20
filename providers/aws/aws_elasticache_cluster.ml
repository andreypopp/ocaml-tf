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

type cache_nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  outpost_arn : string prop;  (** outpost_arn *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type aws_elasticache_cluster = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : string prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  az_mode : string prop option; [@option]  (** az_mode *)
  cluster_id : string prop;  (** cluster_id *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  ip_discovery : string prop option; [@option]  (** ip_discovery *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  network_type : string prop option; [@option]  (** network_type *)
  node_type : string prop option; [@option]  (** node_type *)
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
  num_cache_nodes : float prop option; [@option]
      (** num_cache_nodes *)
  outpost_mode : string prop option; [@option]  (** outpost_mode *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  port : float prop option; [@option]  (** port *)
  preferred_availability_zones : string prop list option; [@option]
      (** preferred_availability_zones *)
  preferred_outpost_arn : string prop option; [@option]
      (** preferred_outpost_arn *)
  replication_group_id : string prop option; [@option]
      (** replication_group_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
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
  log_delivery_configuration : log_delivery_configuration list;
}
[@@deriving yojson_of]
(** aws_elasticache_cluster *)

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
