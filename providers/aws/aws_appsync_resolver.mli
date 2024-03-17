(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_resolver__caching_config
type aws_appsync_resolver__pipeline_config
type aws_appsync_resolver__runtime
type aws_appsync_resolver__sync_config__lambda_conflict_handler_config
type aws_appsync_resolver__sync_config
type aws_appsync_resolver

type t = private {
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

val aws_appsync_resolver :
  ?code:string prop ->
  ?data_source:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?max_batch_size:float prop ->
  ?request_template:string prop ->
  ?response_template:string prop ->
  api_id:string prop ->
  field:string prop ->
  type_:string prop ->
  caching_config:aws_appsync_resolver__caching_config list ->
  pipeline_config:aws_appsync_resolver__pipeline_config list ->
  runtime:aws_appsync_resolver__runtime list ->
  sync_config:aws_appsync_resolver__sync_config list ->
  string ->
  t
