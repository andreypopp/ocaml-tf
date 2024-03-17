(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_replication_group__log_delivery_configuration = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
  log_format : string prop;  (** log_format *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group__log_delivery_configuration *)

type aws_elasticache_replication_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group__timeouts *)

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
  log_delivery_configuration :
    aws_elasticache_replication_group__log_delivery_configuration
    list;
  timeouts : aws_elasticache_replication_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group *)

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
    ?timeouts ~replication_group_id ~log_delivery_configuration
    __resource_id =
  let __resource_type = "aws_elasticache_replication_group" in
  let __resource =
    ({
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
      : aws_elasticache_replication_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_replication_group __resource);
  let __resource_attributes =
    ({
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       at_rest_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "at_rest_encryption_enabled";
       auth_token =
         Prop.computed __resource_type __resource_id "auth_token";
       auth_token_update_strategy =
         Prop.computed __resource_type __resource_id
           "auth_token_update_strategy";
       auto_minor_version_upgrade =
         Prop.computed __resource_type __resource_id
           "auto_minor_version_upgrade";
       automatic_failover_enabled =
         Prop.computed __resource_type __resource_id
           "automatic_failover_enabled";
       cluster_enabled =
         Prop.computed __resource_type __resource_id
           "cluster_enabled";
       configuration_endpoint_address =
         Prop.computed __resource_type __resource_id
           "configuration_endpoint_address";
       data_tiering_enabled =
         Prop.computed __resource_type __resource_id
           "data_tiering_enabled";
       description =
         Prop.computed __resource_type __resource_id "description";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       engine_version_actual =
         Prop.computed __resource_type __resource_id
           "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "final_snapshot_identifier";
       global_replication_group_id =
         Prop.computed __resource_type __resource_id
           "global_replication_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_discovery =
         Prop.computed __resource_type __resource_id "ip_discovery";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       maintenance_window =
         Prop.computed __resource_type __resource_id
           "maintenance_window";
       member_clusters =
         Prop.computed __resource_type __resource_id
           "member_clusters";
       multi_az_enabled =
         Prop.computed __resource_type __resource_id
           "multi_az_enabled";
       network_type =
         Prop.computed __resource_type __resource_id "network_type";
       node_type =
         Prop.computed __resource_type __resource_id "node_type";
       notification_topic_arn =
         Prop.computed __resource_type __resource_id
           "notification_topic_arn";
       num_cache_clusters =
         Prop.computed __resource_type __resource_id
           "num_cache_clusters";
       num_node_groups =
         Prop.computed __resource_type __resource_id
           "num_node_groups";
       parameter_group_name =
         Prop.computed __resource_type __resource_id
           "parameter_group_name";
       port = Prop.computed __resource_type __resource_id "port";
       preferred_cache_cluster_azs =
         Prop.computed __resource_type __resource_id
           "preferred_cache_cluster_azs";
       primary_endpoint_address =
         Prop.computed __resource_type __resource_id
           "primary_endpoint_address";
       reader_endpoint_address =
         Prop.computed __resource_type __resource_id
           "reader_endpoint_address";
       replicas_per_node_group =
         Prop.computed __resource_type __resource_id
           "replicas_per_node_group";
       replication_group_id =
         Prop.computed __resource_type __resource_id
           "replication_group_id";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       security_group_names =
         Prop.computed __resource_type __resource_id
           "security_group_names";
       snapshot_arns =
         Prop.computed __resource_type __resource_id "snapshot_arns";
       snapshot_name =
         Prop.computed __resource_type __resource_id "snapshot_name";
       snapshot_retention_limit =
         Prop.computed __resource_type __resource_id
           "snapshot_retention_limit";
       snapshot_window =
         Prop.computed __resource_type __resource_id
           "snapshot_window";
       subnet_group_name =
         Prop.computed __resource_type __resource_id
           "subnet_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "transit_encryption_enabled";
       user_group_ids =
         Prop.computed __resource_type __resource_id "user_group_ids";
     }
      : t)
  in
  __resource_attributes
