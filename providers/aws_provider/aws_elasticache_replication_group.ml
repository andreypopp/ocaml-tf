(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_replication_group__log_delivery_configuration = {
  destination : string;  (** destination *)
  destination_type : string;  (** destination_type *)
  log_format : string;  (** log_format *)
  log_type : string;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group__log_delivery_configuration *)

type aws_elasticache_replication_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group__timeouts *)

type aws_elasticache_replication_group = {
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  at_rest_encryption_enabled : bool option; [@option]
      (** at_rest_encryption_enabled *)
  auth_token : string option; [@option]  (** auth_token *)
  auth_token_update_strategy : string option; [@option]
      (** auth_token_update_strategy *)
  auto_minor_version_upgrade : string option; [@option]
      (** auto_minor_version_upgrade *)
  automatic_failover_enabled : bool option; [@option]
      (** automatic_failover_enabled *)
  data_tiering_enabled : bool option; [@option]
      (** data_tiering_enabled *)
  description : string option; [@option]  (** description *)
  engine : string option; [@option]  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  global_replication_group_id : string option; [@option]
      (** global_replication_group_id *)
  id : string option; [@option]  (** id *)
  ip_discovery : string option; [@option]  (** ip_discovery *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  maintenance_window : string option; [@option]
      (** maintenance_window *)
  multi_az_enabled : bool option; [@option]  (** multi_az_enabled *)
  network_type : string option; [@option]  (** network_type *)
  node_type : string option; [@option]  (** node_type *)
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
  num_cache_clusters : float option; [@option]
      (** num_cache_clusters *)
  num_node_groups : float option; [@option]  (** num_node_groups *)
  parameter_group_name : string option; [@option]
      (** parameter_group_name *)
  port : float option; [@option]  (** port *)
  preferred_cache_cluster_azs : string list option; [@option]
      (** preferred_cache_cluster_azs *)
  replicas_per_node_group : float option; [@option]
      (** replicas_per_node_group *)
  replication_group_id : string;  (** replication_group_id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  security_group_names : string list option; [@option]
      (** security_group_names *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float option; [@option]
      (** snapshot_retention_limit *)
  snapshot_window : string option; [@option]  (** snapshot_window *)
  subnet_group_name : string option; [@option]
      (** subnet_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  transit_encryption_enabled : bool option; [@option]
      (** transit_encryption_enabled *)
  user_group_ids : string list option; [@option]
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
