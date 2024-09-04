(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type amazon_managed_kafka_event_source_config

val amazon_managed_kafka_event_source_config :
  ?consumer_group_id:string prop ->
  unit ->
  amazon_managed_kafka_event_source_config

type destination_config__on_failure

val destination_config__on_failure :
  destination_arn:string prop ->
  unit ->
  destination_config__on_failure

type destination_config

val destination_config :
  ?on_failure:destination_config__on_failure list ->
  unit ->
  destination_config

type document_db_event_source_config

val document_db_event_source_config :
  ?collection_name:string prop ->
  ?full_document:string prop ->
  database_name:string prop ->
  unit ->
  document_db_event_source_config

type filter_criteria__filter

val filter_criteria__filter :
  ?pattern:string prop -> unit -> filter_criteria__filter

type filter_criteria

val filter_criteria :
  filter:filter_criteria__filter list -> unit -> filter_criteria

type scaling_config

val scaling_config :
  ?maximum_concurrency:float prop -> unit -> scaling_config

type self_managed_event_source

val self_managed_event_source :
  endpoints:string prop Tf_core.assoc ->
  unit ->
  self_managed_event_source

type self_managed_kafka_event_source_config

val self_managed_kafka_event_source_config :
  ?consumer_group_id:string prop ->
  unit ->
  self_managed_kafka_event_source_config

type source_access_configuration

val source_access_configuration :
  type_:string prop ->
  uri:string prop ->
  unit ->
  source_access_configuration

type aws_lambda_event_source_mapping

val aws_lambda_event_source_mapping :
  ?batch_size:float prop ->
  ?bisect_batch_on_function_error:bool prop ->
  ?enabled:bool prop ->
  ?event_source_arn:string prop ->
  ?function_response_types:string prop list ->
  ?id:string prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?maximum_record_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?parallelization_factor:float prop ->
  ?queues:string prop list ->
  ?starting_position:string prop ->
  ?starting_position_timestamp:string prop ->
  ?topics:string prop list ->
  ?tumbling_window_in_seconds:float prop ->
  ?amazon_managed_kafka_event_source_config:
    amazon_managed_kafka_event_source_config list ->
  ?destination_config:destination_config list ->
  ?document_db_event_source_config:
    document_db_event_source_config list ->
  ?filter_criteria:filter_criteria list ->
  ?scaling_config:scaling_config list ->
  ?self_managed_event_source:self_managed_event_source list ->
  ?self_managed_kafka_event_source_config:
    self_managed_kafka_event_source_config list ->
  function_name:string prop ->
  source_access_configuration:source_access_configuration list ->
  unit ->
  aws_lambda_event_source_mapping

val yojson_of_aws_lambda_event_source_mapping :
  aws_lambda_event_source_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  batch_size : float prop;
  bisect_batch_on_function_error : bool prop;
  enabled : bool prop;
  event_source_arn : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_response_types : string list prop;
  id : string prop;
  last_modified : string prop;
  last_processing_result : string prop;
  maximum_batching_window_in_seconds : float prop;
  maximum_record_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  parallelization_factor : float prop;
  queues : string list prop;
  starting_position : string prop;
  starting_position_timestamp : string prop;
  state : string prop;
  state_transition_reason : string prop;
  topics : string list prop;
  tumbling_window_in_seconds : float prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?batch_size:float prop ->
  ?bisect_batch_on_function_error:bool prop ->
  ?enabled:bool prop ->
  ?event_source_arn:string prop ->
  ?function_response_types:string prop list ->
  ?id:string prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?maximum_record_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?parallelization_factor:float prop ->
  ?queues:string prop list ->
  ?starting_position:string prop ->
  ?starting_position_timestamp:string prop ->
  ?topics:string prop list ->
  ?tumbling_window_in_seconds:float prop ->
  ?amazon_managed_kafka_event_source_config:
    amazon_managed_kafka_event_source_config list ->
  ?destination_config:destination_config list ->
  ?document_db_event_source_config:
    document_db_event_source_config list ->
  ?filter_criteria:filter_criteria list ->
  ?scaling_config:scaling_config list ->
  ?self_managed_event_source:self_managed_event_source list ->
  ?self_managed_kafka_event_source_config:
    self_managed_kafka_event_source_config list ->
  function_name:string prop ->
  source_access_configuration:source_access_configuration list ->
  string ->
  t

val make :
  ?batch_size:float prop ->
  ?bisect_batch_on_function_error:bool prop ->
  ?enabled:bool prop ->
  ?event_source_arn:string prop ->
  ?function_response_types:string prop list ->
  ?id:string prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?maximum_record_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?parallelization_factor:float prop ->
  ?queues:string prop list ->
  ?starting_position:string prop ->
  ?starting_position_timestamp:string prop ->
  ?topics:string prop list ->
  ?tumbling_window_in_seconds:float prop ->
  ?amazon_managed_kafka_event_source_config:
    amazon_managed_kafka_event_source_config list ->
  ?destination_config:destination_config list ->
  ?document_db_event_source_config:
    document_db_event_source_config list ->
  ?filter_criteria:filter_criteria list ->
  ?scaling_config:scaling_config list ->
  ?self_managed_event_source:self_managed_event_source list ->
  ?self_managed_kafka_event_source_config:
    self_managed_kafka_event_source_config list ->
  function_name:string prop ->
  source_access_configuration:source_access_configuration list ->
  string ->
  t Tf_core.resource
