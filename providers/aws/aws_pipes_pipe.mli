(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type enrichment_parameters__http_parameters

val enrichment_parameters__http_parameters :
  ?header_parameters:(string * string prop) list ->
  ?path_parameter_values:string prop list ->
  ?query_string_parameters:(string * string prop) list ->
  unit ->
  enrichment_parameters__http_parameters

type enrichment_parameters

val enrichment_parameters :
  ?input_template:string prop ->
  ?http_parameters:enrichment_parameters__http_parameters list ->
  unit ->
  enrichment_parameters

type log_configuration__cloudwatch_logs_log_destination

val log_configuration__cloudwatch_logs_log_destination :
  log_group_arn:string prop ->
  unit ->
  log_configuration__cloudwatch_logs_log_destination

type log_configuration__firehose_log_destination

val log_configuration__firehose_log_destination :
  delivery_stream_arn:string prop ->
  unit ->
  log_configuration__firehose_log_destination

type log_configuration__s3_log_destination

val log_configuration__s3_log_destination :
  ?output_format:string prop ->
  ?prefix:string prop ->
  bucket_name:string prop ->
  bucket_owner:string prop ->
  unit ->
  log_configuration__s3_log_destination

type log_configuration

val log_configuration :
  ?cloudwatch_logs_log_destination:
    log_configuration__cloudwatch_logs_log_destination list ->
  ?firehose_log_destination:
    log_configuration__firehose_log_destination list ->
  ?s3_log_destination:log_configuration__s3_log_destination list ->
  level:string prop ->
  unit ->
  log_configuration

type source_parameters__activemq_broker_parameters__credentials

val source_parameters__activemq_broker_parameters__credentials :
  basic_auth:string prop ->
  unit ->
  source_parameters__activemq_broker_parameters__credentials

type source_parameters__activemq_broker_parameters

val source_parameters__activemq_broker_parameters :
  ?batch_size:float prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  queue_name:string prop ->
  credentials:
    source_parameters__activemq_broker_parameters__credentials list ->
  unit ->
  source_parameters__activemq_broker_parameters

type source_parameters__dynamodb_stream_parameters__dead_letter_config

val source_parameters__dynamodb_stream_parameters__dead_letter_config :
  ?arn:string prop ->
  unit ->
  source_parameters__dynamodb_stream_parameters__dead_letter_config

type source_parameters__dynamodb_stream_parameters

val source_parameters__dynamodb_stream_parameters :
  ?batch_size:float prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?maximum_record_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?on_partial_batch_item_failure:string prop ->
  ?parallelization_factor:float prop ->
  ?dead_letter_config:
    source_parameters__dynamodb_stream_parameters__dead_letter_config
    list ->
  starting_position:string prop ->
  unit ->
  source_parameters__dynamodb_stream_parameters

type source_parameters__filter_criteria__filter

val source_parameters__filter_criteria__filter :
  pattern:string prop ->
  unit ->
  source_parameters__filter_criteria__filter

type source_parameters__filter_criteria

val source_parameters__filter_criteria :
  ?filter:source_parameters__filter_criteria__filter list ->
  unit ->
  source_parameters__filter_criteria

type source_parameters__kinesis_stream_parameters__dead_letter_config

val source_parameters__kinesis_stream_parameters__dead_letter_config :
  ?arn:string prop ->
  unit ->
  source_parameters__kinesis_stream_parameters__dead_letter_config

type source_parameters__kinesis_stream_parameters

val source_parameters__kinesis_stream_parameters :
  ?batch_size:float prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?maximum_record_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?on_partial_batch_item_failure:string prop ->
  ?parallelization_factor:float prop ->
  ?starting_position_timestamp:string prop ->
  ?dead_letter_config:
    source_parameters__kinesis_stream_parameters__dead_letter_config
    list ->
  starting_position:string prop ->
  unit ->
  source_parameters__kinesis_stream_parameters

type source_parameters__managed_streaming_kafka_parameters__credentials

val source_parameters__managed_streaming_kafka_parameters__credentials :
  ?client_certificate_tls_auth:string prop ->
  ?sasl_scram_512_auth:string prop ->
  unit ->
  source_parameters__managed_streaming_kafka_parameters__credentials

type source_parameters__managed_streaming_kafka_parameters

val source_parameters__managed_streaming_kafka_parameters :
  ?batch_size:float prop ->
  ?consumer_group_id:string prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?starting_position:string prop ->
  ?credentials:
    source_parameters__managed_streaming_kafka_parameters__credentials
    list ->
  topic_name:string prop ->
  unit ->
  source_parameters__managed_streaming_kafka_parameters

type source_parameters__rabbitmq_broker_parameters__credentials

val source_parameters__rabbitmq_broker_parameters__credentials :
  basic_auth:string prop ->
  unit ->
  source_parameters__rabbitmq_broker_parameters__credentials

type source_parameters__rabbitmq_broker_parameters

val source_parameters__rabbitmq_broker_parameters :
  ?batch_size:float prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?virtual_host:string prop ->
  queue_name:string prop ->
  credentials:
    source_parameters__rabbitmq_broker_parameters__credentials list ->
  unit ->
  source_parameters__rabbitmq_broker_parameters

type source_parameters__self_managed_kafka_parameters__credentials

val source_parameters__self_managed_kafka_parameters__credentials :
  ?basic_auth:string prop ->
  ?client_certificate_tls_auth:string prop ->
  ?sasl_scram_256_auth:string prop ->
  ?sasl_scram_512_auth:string prop ->
  unit ->
  source_parameters__self_managed_kafka_parameters__credentials

type source_parameters__self_managed_kafka_parameters__vpc

val source_parameters__self_managed_kafka_parameters__vpc :
  ?security_groups:string prop list ->
  ?subnets:string prop list ->
  unit ->
  source_parameters__self_managed_kafka_parameters__vpc

type source_parameters__self_managed_kafka_parameters

val source_parameters__self_managed_kafka_parameters :
  ?additional_bootstrap_servers:string prop list ->
  ?batch_size:float prop ->
  ?consumer_group_id:string prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  ?server_root_ca_certificate:string prop ->
  ?starting_position:string prop ->
  ?credentials:
    source_parameters__self_managed_kafka_parameters__credentials
    list ->
  ?vpc:source_parameters__self_managed_kafka_parameters__vpc list ->
  topic_name:string prop ->
  unit ->
  source_parameters__self_managed_kafka_parameters

type source_parameters__sqs_queue_parameters

val source_parameters__sqs_queue_parameters :
  ?batch_size:float prop ->
  ?maximum_batching_window_in_seconds:float prop ->
  unit ->
  source_parameters__sqs_queue_parameters

type source_parameters

val source_parameters :
  ?activemq_broker_parameters:
    source_parameters__activemq_broker_parameters list ->
  ?dynamodb_stream_parameters:
    source_parameters__dynamodb_stream_parameters list ->
  ?filter_criteria:source_parameters__filter_criteria list ->
  ?kinesis_stream_parameters:
    source_parameters__kinesis_stream_parameters list ->
  ?managed_streaming_kafka_parameters:
    source_parameters__managed_streaming_kafka_parameters list ->
  ?rabbitmq_broker_parameters:
    source_parameters__rabbitmq_broker_parameters list ->
  ?self_managed_kafka_parameters:
    source_parameters__self_managed_kafka_parameters list ->
  ?sqs_queue_parameters:source_parameters__sqs_queue_parameters list ->
  unit ->
  source_parameters

type target_parameters__batch_job_parameters__array_properties

val target_parameters__batch_job_parameters__array_properties :
  ?size:float prop ->
  unit ->
  target_parameters__batch_job_parameters__array_properties

type target_parameters__batch_job_parameters__container_overrides__environment

val target_parameters__batch_job_parameters__container_overrides__environment :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  target_parameters__batch_job_parameters__container_overrides__environment

type target_parameters__batch_job_parameters__container_overrides__resource_requirement

val target_parameters__batch_job_parameters__container_overrides__resource_requirement :
  type_:string prop ->
  value:string prop ->
  unit ->
  target_parameters__batch_job_parameters__container_overrides__resource_requirement

type target_parameters__batch_job_parameters__container_overrides

val target_parameters__batch_job_parameters__container_overrides :
  ?command:string prop list ->
  ?instance_type:string prop ->
  ?environment:
    target_parameters__batch_job_parameters__container_overrides__environment
    list ->
  ?resource_requirement:
    target_parameters__batch_job_parameters__container_overrides__resource_requirement
    list ->
  unit ->
  target_parameters__batch_job_parameters__container_overrides

type target_parameters__batch_job_parameters__depends_on

val target_parameters__batch_job_parameters__depends_on :
  ?job_id:string prop ->
  ?type_:string prop ->
  unit ->
  target_parameters__batch_job_parameters__depends_on

type target_parameters__batch_job_parameters__retry_strategy

val target_parameters__batch_job_parameters__retry_strategy :
  ?attempts:float prop ->
  unit ->
  target_parameters__batch_job_parameters__retry_strategy

type target_parameters__batch_job_parameters

val target_parameters__batch_job_parameters :
  ?parameters:(string * string prop) list ->
  ?array_properties:
    target_parameters__batch_job_parameters__array_properties list ->
  ?container_overrides:
    target_parameters__batch_job_parameters__container_overrides list ->
  ?depends_on:
    target_parameters__batch_job_parameters__depends_on list ->
  ?retry_strategy:
    target_parameters__batch_job_parameters__retry_strategy list ->
  job_definition:string prop ->
  job_name:string prop ->
  unit ->
  target_parameters__batch_job_parameters

type target_parameters__cloudwatch_logs_parameters

val target_parameters__cloudwatch_logs_parameters :
  ?log_stream_name:string prop ->
  ?timestamp:string prop ->
  unit ->
  target_parameters__cloudwatch_logs_parameters

type target_parameters__ecs_task_parameters__capacity_provider_strategy

val target_parameters__ecs_task_parameters__capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__capacity_provider_strategy

type target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration

val target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration :
  ?assign_public_ip:string prop ->
  ?security_groups:string prop list ->
  ?subnets:string prop list ->
  unit ->
  target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration

type target_parameters__ecs_task_parameters__network_configuration

val target_parameters__ecs_task_parameters__network_configuration :
  ?aws_vpc_configuration:
    target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    list ->
  unit ->
  target_parameters__ecs_task_parameters__network_configuration

type target_parameters__ecs_task_parameters__overrides__container_override__environment

val target_parameters__ecs_task_parameters__overrides__container_override__environment :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__container_override__environment

type target_parameters__ecs_task_parameters__overrides__container_override__environment_file

val target_parameters__ecs_task_parameters__overrides__container_override__environment_file :
  type_:string prop ->
  value:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__container_override__environment_file

type target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement

val target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement :
  type_:string prop ->
  value:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement

type target_parameters__ecs_task_parameters__overrides__container_override

val target_parameters__ecs_task_parameters__overrides__container_override :
  ?command:string prop list ->
  ?cpu:float prop ->
  ?memory:float prop ->
  ?memory_reservation:float prop ->
  ?name:string prop ->
  ?environment:
    target_parameters__ecs_task_parameters__overrides__container_override__environment
    list ->
  ?environment_file:
    target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    list ->
  ?resource_requirement:
    target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    list ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__container_override

type target_parameters__ecs_task_parameters__overrides__ephemeral_storage

val target_parameters__ecs_task_parameters__overrides__ephemeral_storage :
  size_in_gib:float prop ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__ephemeral_storage

type target_parameters__ecs_task_parameters__overrides__inference_accelerator_override

val target_parameters__ecs_task_parameters__overrides__inference_accelerator_override :
  ?device_name:string prop ->
  ?device_type:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__overrides__inference_accelerator_override

type target_parameters__ecs_task_parameters__overrides

val target_parameters__ecs_task_parameters__overrides :
  ?cpu:string prop ->
  ?execution_role_arn:string prop ->
  ?memory:string prop ->
  ?task_role_arn:string prop ->
  ?container_override:
    target_parameters__ecs_task_parameters__overrides__container_override
    list ->
  ?ephemeral_storage:
    target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    list ->
  ?inference_accelerator_override:
    target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    list ->
  unit ->
  target_parameters__ecs_task_parameters__overrides

type target_parameters__ecs_task_parameters__placement_constraint

val target_parameters__ecs_task_parameters__placement_constraint :
  ?expression:string prop ->
  ?type_:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__placement_constraint

type target_parameters__ecs_task_parameters__placement_strategy

val target_parameters__ecs_task_parameters__placement_strategy :
  ?field:string prop ->
  ?type_:string prop ->
  unit ->
  target_parameters__ecs_task_parameters__placement_strategy

type target_parameters__ecs_task_parameters

val target_parameters__ecs_task_parameters :
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?reference_id:string prop ->
  ?tags:(string * string prop) list ->
  ?task_count:float prop ->
  ?capacity_provider_strategy:
    target_parameters__ecs_task_parameters__capacity_provider_strategy
    list ->
  ?network_configuration:
    target_parameters__ecs_task_parameters__network_configuration
    list ->
  ?overrides:target_parameters__ecs_task_parameters__overrides list ->
  ?placement_constraint:
    target_parameters__ecs_task_parameters__placement_constraint list ->
  ?placement_strategy:
    target_parameters__ecs_task_parameters__placement_strategy list ->
  task_definition_arn:string prop ->
  unit ->
  target_parameters__ecs_task_parameters

type target_parameters__eventbridge_event_bus_parameters

val target_parameters__eventbridge_event_bus_parameters :
  ?detail_type:string prop ->
  ?endpoint_id:string prop ->
  ?resources:string prop list ->
  ?source:string prop ->
  ?time:string prop ->
  unit ->
  target_parameters__eventbridge_event_bus_parameters

type target_parameters__http_parameters

val target_parameters__http_parameters :
  ?header_parameters:(string * string prop) list ->
  ?path_parameter_values:string prop list ->
  ?query_string_parameters:(string * string prop) list ->
  unit ->
  target_parameters__http_parameters

type target_parameters__kinesis_stream_parameters

val target_parameters__kinesis_stream_parameters :
  partition_key:string prop ->
  unit ->
  target_parameters__kinesis_stream_parameters

type target_parameters__lambda_function_parameters

val target_parameters__lambda_function_parameters :
  invocation_type:string prop ->
  unit ->
  target_parameters__lambda_function_parameters

type target_parameters__redshift_data_parameters

val target_parameters__redshift_data_parameters :
  ?db_user:string prop ->
  ?secret_manager_arn:string prop ->
  ?statement_name:string prop ->
  ?with_event:bool prop ->
  database:string prop ->
  sqls:string prop list ->
  unit ->
  target_parameters__redshift_data_parameters

type target_parameters__sagemaker_pipeline_parameters__pipeline_parameter

val target_parameters__sagemaker_pipeline_parameters__pipeline_parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  target_parameters__sagemaker_pipeline_parameters__pipeline_parameter

type target_parameters__sagemaker_pipeline_parameters

val target_parameters__sagemaker_pipeline_parameters :
  ?pipeline_parameter:
    target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    list ->
  unit ->
  target_parameters__sagemaker_pipeline_parameters

type target_parameters__sqs_queue_parameters

val target_parameters__sqs_queue_parameters :
  ?message_deduplication_id:string prop ->
  ?message_group_id:string prop ->
  unit ->
  target_parameters__sqs_queue_parameters

type target_parameters__step_function_state_machine_parameters

val target_parameters__step_function_state_machine_parameters :
  invocation_type:string prop ->
  unit ->
  target_parameters__step_function_state_machine_parameters

type target_parameters

val target_parameters :
  ?input_template:string prop ->
  ?batch_job_parameters:target_parameters__batch_job_parameters list ->
  ?cloudwatch_logs_parameters:
    target_parameters__cloudwatch_logs_parameters list ->
  ?ecs_task_parameters:target_parameters__ecs_task_parameters list ->
  ?eventbridge_event_bus_parameters:
    target_parameters__eventbridge_event_bus_parameters list ->
  ?http_parameters:target_parameters__http_parameters list ->
  ?kinesis_stream_parameters:
    target_parameters__kinesis_stream_parameters list ->
  ?lambda_function_parameters:
    target_parameters__lambda_function_parameters list ->
  ?redshift_data_parameters:
    target_parameters__redshift_data_parameters list ->
  ?sagemaker_pipeline_parameters:
    target_parameters__sagemaker_pipeline_parameters list ->
  ?sqs_queue_parameters:target_parameters__sqs_queue_parameters list ->
  ?step_function_state_machine_parameters:
    target_parameters__step_function_state_machine_parameters list ->
  unit ->
  target_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_pipes_pipe

val aws_pipes_pipe :
  ?description:string prop ->
  ?desired_state:string prop ->
  ?enrichment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?enrichment_parameters:enrichment_parameters list ->
  ?log_configuration:log_configuration list ->
  ?source_parameters:source_parameters list ->
  ?target_parameters:target_parameters list ->
  ?timeouts:timeouts ->
  role_arn:string prop ->
  source:string prop ->
  target:string prop ->
  unit ->
  aws_pipes_pipe

val yojson_of_aws_pipes_pipe : aws_pipes_pipe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  desired_state : string prop;
  enrichment : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  source : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?desired_state:string prop ->
  ?enrichment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?enrichment_parameters:enrichment_parameters list ->
  ?log_configuration:log_configuration list ->
  ?source_parameters:source_parameters list ->
  ?target_parameters:target_parameters list ->
  ?timeouts:timeouts ->
  role_arn:string prop ->
  source:string prop ->
  target:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?desired_state:string prop ->
  ?enrichment:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?enrichment_parameters:enrichment_parameters list ->
  ?log_configuration:log_configuration list ->
  ?source_parameters:source_parameters list ->
  ?target_parameters:target_parameters list ->
  ?timeouts:timeouts ->
  role_arn:string prop ->
  source:string prop ->
  target:string prop ->
  string ->
  t Tf_core.resource
