(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_replication_group__log_delivery_configuration
type aws_elasticache_replication_group__timeouts
type aws_elasticache_replication_group

val aws_elasticache_replication_group :
  ?apply_immediately:bool prop ->
  ?at_rest_encryption_enabled:bool prop ->
  ?auth_token:string prop ->
  ?auth_token_update_strategy:string prop ->
  ?auto_minor_version_upgrade:string prop ->
  ?automatic_failover_enabled:bool prop ->
  ?data_tiering_enabled:bool prop ->
  ?description:string prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_replication_group_id:string prop ->
  ?id:string prop ->
  ?ip_discovery:string prop ->
  ?kms_key_id:string prop ->
  ?maintenance_window:string prop ->
  ?multi_az_enabled:bool prop ->
  ?network_type:string prop ->
  ?node_type:string prop ->
  ?notification_topic_arn:string prop ->
  ?num_cache_clusters:float prop ->
  ?num_node_groups:float prop ->
  ?parameter_group_name:string prop ->
  ?port:float prop ->
  ?preferred_cache_cluster_azs:string prop list ->
  ?replicas_per_node_group:float prop ->
  ?security_group_ids:string prop list ->
  ?security_group_names:string prop list ->
  ?snapshot_arns:string prop list ->
  ?snapshot_name:string prop ->
  ?snapshot_retention_limit:float prop ->
  ?snapshot_window:string prop ->
  ?subnet_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_encryption_enabled:bool prop ->
  ?user_group_ids:string prop list ->
  ?timeouts:aws_elasticache_replication_group__timeouts ->
  replication_group_id:string prop ->
  log_delivery_configuration:
    aws_elasticache_replication_group__log_delivery_configuration
    list ->
  string ->
  unit
