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
  auth_token : string option; [@option]  (** auth_token *)
  auth_token_update_strategy : string option; [@option]
      (** auth_token_update_strategy *)
  automatic_failover_enabled : bool option; [@option]
      (** automatic_failover_enabled *)
  engine : string option; [@option]  (** engine *)
  final_snapshot_identifier : string option; [@option]
      (** final_snapshot_identifier *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  multi_az_enabled : bool option; [@option]  (** multi_az_enabled *)
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
  port : float option; [@option]  (** port *)
  preferred_cache_cluster_azs : string list option; [@option]
      (** preferred_cache_cluster_azs *)
  replication_group_id : string;  (** replication_group_id *)
  snapshot_arns : string list option; [@option]  (** snapshot_arns *)
  snapshot_name : string option; [@option]  (** snapshot_name *)
  snapshot_retention_limit : float option; [@option]
      (** snapshot_retention_limit *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_group_ids : string list option; [@option]
      (** user_group_ids *)
  log_delivery_configuration :
    aws_elasticache_replication_group__log_delivery_configuration
    list;
  timeouts : aws_elasticache_replication_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_replication_group *)

let aws_elasticache_replication_group ?auth_token
    ?auth_token_update_strategy ?automatic_failover_enabled ?engine
    ?final_snapshot_identifier ?kms_key_id ?multi_az_enabled
    ?notification_topic_arn ?port ?preferred_cache_cluster_azs
    ?snapshot_arns ?snapshot_name ?snapshot_retention_limit ?tags
    ?user_group_ids ?timeouts ~replication_group_id
    ~log_delivery_configuration __resource_id =
  let __resource_type = "aws_elasticache_replication_group" in
  let __resource =
    {
      auth_token;
      auth_token_update_strategy;
      automatic_failover_enabled;
      engine;
      final_snapshot_identifier;
      kms_key_id;
      multi_az_enabled;
      notification_topic_arn;
      port;
      preferred_cache_cluster_azs;
      replication_group_id;
      snapshot_arns;
      snapshot_name;
      snapshot_retention_limit;
      tags;
      user_group_ids;
      log_delivery_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_replication_group __resource);
  ()
