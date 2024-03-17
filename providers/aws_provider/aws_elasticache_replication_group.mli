(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_replication_group__log_delivery_configuration
type aws_elasticache_replication_group__timeouts
type aws_elasticache_replication_group

val aws_elasticache_replication_group :
  ?auth_token:string ->
  ?auth_token_update_strategy:string ->
  ?automatic_failover_enabled:bool ->
  ?engine:string ->
  ?final_snapshot_identifier:string ->
  ?kms_key_id:string ->
  ?multi_az_enabled:bool ->
  ?notification_topic_arn:string ->
  ?port:float ->
  ?preferred_cache_cluster_azs:string list ->
  ?snapshot_arns:string list ->
  ?snapshot_name:string ->
  ?snapshot_retention_limit:float ->
  ?tags:(string * string) list ->
  ?user_group_ids:string list ->
  ?timeouts:aws_elasticache_replication_group__timeouts ->
  replication_group_id:string ->
  log_delivery_configuration:
    aws_elasticache_replication_group__log_delivery_configuration
    list ->
  string ->
  unit
