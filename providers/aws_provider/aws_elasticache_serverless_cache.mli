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

type t = private {
  arn : string prop;
  create_time : string prop;
  daily_snapshot_time : string prop;
  description : string prop;
  endpoint : aws_elasticache_serverless_cache__endpoint list prop;
  engine : string prop;
  full_engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  major_engine_version : string prop;
  name : string prop;
  reader_endpoint :
    aws_elasticache_serverless_cache__reader_endpoint list prop;
  security_group_ids : string list prop;
  snapshot_arns_to_restore : string list prop;
  snapshot_retention_limit : float prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
}

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
  t
