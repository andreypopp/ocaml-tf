(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_resolver__caching_config
type aws_appsync_resolver__pipeline_config
type aws_appsync_resolver__runtime
type aws_appsync_resolver__sync_config__lambda_conflict_handler_config
type aws_appsync_resolver__sync_config
type aws_appsync_resolver

val aws_appsync_resolver :
  ?code:string ->
  ?data_source:string ->
  ?id:string ->
  ?kind:string ->
  ?max_batch_size:float ->
  ?request_template:string ->
  ?response_template:string ->
  api_id:string ->
  field:string ->
  type_:string ->
  caching_config:aws_appsync_resolver__caching_config list ->
  pipeline_config:aws_appsync_resolver__pipeline_config list ->
  runtime:aws_appsync_resolver__runtime list ->
  sync_config:aws_appsync_resolver__sync_config list ->
  string ->
  unit
