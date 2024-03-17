(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_function__runtime
type aws_appsync_function__sync_config__lambda_conflict_handler_config
type aws_appsync_function__sync_config
type aws_appsync_function

val aws_appsync_function :
  ?code:string prop ->
  ?description:string prop ->
  ?function_version:string prop ->
  ?id:string prop ->
  ?max_batch_size:float prop ->
  ?request_mapping_template:string prop ->
  ?response_mapping_template:string prop ->
  api_id:string prop ->
  data_source:string prop ->
  name:string prop ->
  runtime:aws_appsync_function__runtime list ->
  sync_config:aws_appsync_function__sync_config list ->
  string ->
  unit
