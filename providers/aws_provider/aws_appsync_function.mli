(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_function__runtime
type aws_appsync_function__sync_config__lambda_conflict_handler_config
type aws_appsync_function__sync_config
type aws_appsync_function

val aws_appsync_function :
  ?code:string ->
  ?description:string ->
  ?max_batch_size:float ->
  ?request_mapping_template:string ->
  ?response_mapping_template:string ->
  api_id:string ->
  data_source:string ->
  name:string ->
  runtime:aws_appsync_function__runtime list ->
  sync_config:aws_appsync_function__sync_config list ->
  string ->
  unit
