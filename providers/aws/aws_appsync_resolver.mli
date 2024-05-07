(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type caching_config

val caching_config :
  ?caching_keys:string prop list ->
  ?ttl:float prop ->
  unit ->
  caching_config

type pipeline_config

val pipeline_config :
  ?functions:string prop list -> unit -> pipeline_config

type runtime

val runtime :
  name:string prop -> runtime_version:string prop -> unit -> runtime

type sync_config__lambda_conflict_handler_config

val sync_config__lambda_conflict_handler_config :
  ?lambda_conflict_handler_arn:string prop ->
  unit ->
  sync_config__lambda_conflict_handler_config

type sync_config

val sync_config :
  ?conflict_detection:string prop ->
  ?conflict_handler:string prop ->
  ?lambda_conflict_handler_config:
    sync_config__lambda_conflict_handler_config list ->
  unit ->
  sync_config

type aws_appsync_resolver

val aws_appsync_resolver :
  ?code:string prop ->
  ?data_source:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?max_batch_size:float prop ->
  ?request_template:string prop ->
  ?response_template:string prop ->
  ?caching_config:caching_config list ->
  ?pipeline_config:pipeline_config list ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  field:string prop ->
  type_:string prop ->
  unit ->
  aws_appsync_resolver

val yojson_of_aws_appsync_resolver : aws_appsync_resolver -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  field : string prop;
  id : string prop;
  kind : string prop;
  max_batch_size : float prop;
  request_template : string prop;
  response_template : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?code:string prop ->
  ?data_source:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?max_batch_size:float prop ->
  ?request_template:string prop ->
  ?response_template:string prop ->
  ?caching_config:caching_config list ->
  ?pipeline_config:pipeline_config list ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  field:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?code:string prop ->
  ?data_source:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?max_batch_size:float prop ->
  ?request_template:string prop ->
  ?response_template:string prop ->
  ?caching_config:caching_config list ->
  ?pipeline_config:pipeline_config list ->
  ?runtime:runtime list ->
  ?sync_config:sync_config list ->
  api_id:string prop ->
  field:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
