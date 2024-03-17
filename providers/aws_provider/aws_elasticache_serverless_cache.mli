(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_serverless_cache__cache_usage_limits__data_storage

type aws_elasticache_serverless_cache__cache_usage_limits__ecpu_per_second

type aws_elasticache_serverless_cache__cache_usage_limits
type aws_elasticache_serverless_cache__timeouts

type aws_elasticache_serverless_cache__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}

type aws_elasticache_serverless_cache__reader_endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
}

type aws_elasticache_serverless_cache

val aws_elasticache_serverless_cache :
  ?daily_snapshot_time:string ->
  ?description:string ->
  ?kms_key_id:string ->
  ?major_engine_version:string ->
  ?security_group_ids:string list ->
  ?snapshot_arns_to_restore:string list ->
  ?snapshot_retention_limit:float ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?user_group_id:string ->
  ?timeouts:aws_elasticache_serverless_cache__timeouts ->
  engine:string ->
  name:string ->
  cache_usage_limits:
    aws_elasticache_serverless_cache__cache_usage_limits list ->
  string ->
  unit
