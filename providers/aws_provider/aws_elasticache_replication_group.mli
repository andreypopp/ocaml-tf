(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_replication_group__log_delivery_configuration
type aws_elasticache_replication_group__timeouts
type aws_elasticache_replication_group

val aws_elasticache_replication_group :
  ?apply_immediately:bool ->
  ?at_rest_encryption_enabled:bool ->
  ?auth_token:string ->
  ?auth_token_update_strategy:string ->
  ?auto_minor_version_upgrade:string ->
  ?automatic_failover_enabled:bool ->
  ?data_tiering_enabled:bool ->
  ?description:string ->
  ?engine:string ->
  ?engine_version:string ->
  ?final_snapshot_identifier:string ->
  ?global_replication_group_id:string ->
  ?id:string ->
  ?ip_discovery:string ->
  ?kms_key_id:string ->
  ?maintenance_window:string ->
  ?multi_az_enabled:bool ->
  ?network_type:string ->
  ?node_type:string ->
  ?notification_topic_arn:string ->
  ?num_cache_clusters:float ->
  ?num_node_groups:float ->
  ?parameter_group_name:string ->
  ?port:float ->
  ?preferred_cache_cluster_azs:string list ->
  ?replicas_per_node_group:float ->
  ?security_group_ids:string list ->
  ?security_group_names:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?snapshot_retention_limit:float ->
  ?snapshot_window:string ->
  ?subnet_group_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?transit_encryption_enabled:bool ->
  ?user_group_ids:string list ->
  ?timeouts:aws_elasticache_replication_group__timeouts ->
  replication_group_id:string ->
  log_delivery_configuration:
    aws_elasticache_replication_group__log_delivery_configuration
    list ->
  string ->
  unit
