(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config

type aws_lambda_event_source_mapping__destination_config__on_failure
type aws_lambda_event_source_mapping__destination_config
type aws_lambda_event_source_mapping__document_db_event_source_config
type aws_lambda_event_source_mapping__filter_criteria__filter
type aws_lambda_event_source_mapping__filter_criteria
type aws_lambda_event_source_mapping__scaling_config
type aws_lambda_event_source_mapping__self_managed_event_source

type aws_lambda_event_source_mapping__self_managed_kafka_event_source_config

type aws_lambda_event_source_mapping__source_access_configuration
type aws_lambda_event_source_mapping

val aws_lambda_event_source_mapping :
  ?batch_size:float ->
  ?bisect_batch_on_function_error:bool ->
  ?enabled:bool ->
  ?event_source_arn:string ->
  ?function_response_types:string list ->
  ?id:string ->
  ?maximum_batching_window_in_seconds:float ->
  ?maximum_record_age_in_seconds:float ->
  ?maximum_retry_attempts:float ->
  ?parallelization_factor:float ->
  ?queues:string list ->
  ?starting_position:string ->
  ?starting_position_timestamp:string ->
  ?topics:string list ->
  ?tumbling_window_in_seconds:float ->
  function_name:string ->
  amazon_managed_kafka_event_source_config:
    aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config
    list ->
  destination_config:
    aws_lambda_event_source_mapping__destination_config list ->
  document_db_event_source_config:
    aws_lambda_event_source_mapping__document_db_event_source_config
    list ->
  filter_criteria:
    aws_lambda_event_source_mapping__filter_criteria list ->
  scaling_config:aws_lambda_event_source_mapping__scaling_config list ->
  self_managed_event_source:
    aws_lambda_event_source_mapping__self_managed_event_source list ->
  self_managed_kafka_event_source_config:
    aws_lambda_event_source_mapping__self_managed_kafka_event_source_config
    list ->
  source_access_configuration:
    aws_lambda_event_source_mapping__source_access_configuration list ->
  string ->
  unit
