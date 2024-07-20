(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type reader_endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
}

type cache_usage_limits__data_storage

val cache_usage_limits__data_storage :
  ?maximum:float prop ->
  ?minimum:float prop ->
  unit:string prop ->
  unit ->
  cache_usage_limits__data_storage

type cache_usage_limits__ecpu_per_second

val cache_usage_limits__ecpu_per_second :
  ?maximum:float prop ->
  ?minimum:float prop ->
  unit ->
  cache_usage_limits__ecpu_per_second

type cache_usage_limits

val cache_usage_limits :
  ?data_storage:cache_usage_limits__data_storage list ->
  ?ecpu_per_second:cache_usage_limits__ecpu_per_second list ->
  unit ->
  cache_usage_limits

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?cache_usage_limits:cache_usage_limits list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  unit ->
  aws_elasticache_serverless_cache

val yojson_of_aws_elasticache_serverless_cache :
  aws_elasticache_serverless_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  create_time : string prop;
  daily_snapshot_time : string prop;
  description : string prop;
  endpoint : endpoint list prop;
  engine : string prop;
  full_engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  major_engine_version : string prop;
  name : string prop;
  reader_endpoint : reader_endpoint list prop;
  security_group_ids : string list prop;
  snapshot_arns_to_restore : string list prop;
  snapshot_retention_limit : float prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?cache_usage_limits:cache_usage_limits list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  string ->
  t

val make :
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
  ?cache_usage_limits:cache_usage_limits list ->
  ?timeouts:timeouts ->
  engine:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
