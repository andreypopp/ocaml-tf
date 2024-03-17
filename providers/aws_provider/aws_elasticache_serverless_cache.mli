(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_serverless_cache__cache_usage_limits__data_storage

type aws_elasticache_serverless_cache__cache_usage_limits__ecpu_per_second

type aws_elasticache_serverless_cache__cache_usage_limits
type aws_elasticache_serverless_cache__timeouts

type aws_elasticache_serverless_cache__endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type aws_elasticache_serverless_cache__reader_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type aws_elasticache_serverless_cache

val aws_elasticache_serverless_cache :
  ?daily_snapshot_time:string prop ->
  ?description:string prop ->
  ?kms_key_id:string prop ->
  ?major_engine_version:string prop ->
  ?security_group_ids:string prop list ->
  ?snapshot_arns_to_restore:string prop list ->
  ?snapshot_retention_limit:float prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?user_group_id:string prop ->
  ?timeouts:aws_elasticache_serverless_cache__timeouts ->
  engine:string prop ->
  name:string prop ->
  cache_usage_limits:
    aws_elasticache_serverless_cache__cache_usage_limits list ->
  string ->
  unit
