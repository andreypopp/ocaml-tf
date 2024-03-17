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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_replication_group __resource);
  ()
