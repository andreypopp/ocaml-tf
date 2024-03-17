(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pipes_pipe__enrichment_parameters__http_parameters = {
  header_parameters : (string * string) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string) list option; [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__enrichment_parameters__http_parameters *)

type aws_pipes_pipe__enrichment_parameters = {
  input_template : string option; [@option]  (** input_template *)
  http_parameters :
    aws_pipes_pipe__enrichment_parameters__http_parameters list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__enrichment_parameters *)

type aws_pipes_pipe__source_parameters__activemq_broker_parameters__credentials = {
  basic_auth : string;  (** basic_auth *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__activemq_broker_parameters__credentials *)

type aws_pipes_pipe__source_parameters__activemq_broker_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  queue_name : string;  (** queue_name *)
  credentials :
    aws_pipes_pipe__source_parameters__activemq_broker_parameters__credentials
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__activemq_broker_parameters *)

type aws_pipes_pipe__source_parameters__dynamodb_stream_parameters__dead_letter_config = {
  arn : string option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__dynamodb_stream_parameters__dead_letter_config *)

type aws_pipes_pipe__source_parameters__dynamodb_stream_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  maximum_record_age_in_seconds : float option; [@option]
      (** maximum_record_age_in_seconds *)
  maximum_retry_attempts : float option; [@option]
      (** maximum_retry_attempts *)
  on_partial_batch_item_failure : string option; [@option]
      (** on_partial_batch_item_failure *)
  parallelization_factor : float option; [@option]
      (** parallelization_factor *)
  starting_position : string;  (** starting_position *)
  dead_letter_config :
    aws_pipes_pipe__source_parameters__dynamodb_stream_parameters__dead_letter_config
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__dynamodb_stream_parameters *)

type aws_pipes_pipe__source_parameters__filter_criteria__filter = {
  pattern : string;  (** pattern *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__filter_criteria__filter *)

type aws_pipes_pipe__source_parameters__filter_criteria = {
  filter :
    aws_pipes_pipe__source_parameters__filter_criteria__filter list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__filter_criteria *)

type aws_pipes_pipe__source_parameters__kinesis_stream_parameters__dead_letter_config = {
  arn : string option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__kinesis_stream_parameters__dead_letter_config *)

type aws_pipes_pipe__source_parameters__kinesis_stream_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  maximum_record_age_in_seconds : float option; [@option]
      (** maximum_record_age_in_seconds *)
  maximum_retry_attempts : float option; [@option]
      (** maximum_retry_attempts *)
  on_partial_batch_item_failure : string option; [@option]
      (** on_partial_batch_item_failure *)
  parallelization_factor : float option; [@option]
      (** parallelization_factor *)
  starting_position : string;  (** starting_position *)
  starting_position_timestamp : string option; [@option]
      (** starting_position_timestamp *)
  dead_letter_config :
    aws_pipes_pipe__source_parameters__kinesis_stream_parameters__dead_letter_config
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__kinesis_stream_parameters *)

type aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters__credentials = {
  client_certificate_tls_auth : string option; [@option]
      (** client_certificate_tls_auth *)
  sasl_scram_512_auth : string option; [@option]
      (** sasl_scram_512_auth *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters__credentials *)

type aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  consumer_group_id : string option; [@option]
      (** consumer_group_id *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  starting_position : string option; [@option]
      (** starting_position *)
  topic_name : string;  (** topic_name *)
  credentials :
    aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters__credentials
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters *)

type aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters__credentials = {
  basic_auth : string;  (** basic_auth *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters__credentials *)

type aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  queue_name : string;  (** queue_name *)
  virtual_host : string option; [@option]  (** virtual_host *)
  credentials :
    aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters__credentials
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters *)

type aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__credentials = {
  basic_auth : string;  (** basic_auth *)
  client_certificate_tls_auth : string option; [@option]
      (** client_certificate_tls_auth *)
  sasl_scram_256_auth : string option; [@option]
      (** sasl_scram_256_auth *)
  sasl_scram_512_auth : string option; [@option]
      (** sasl_scram_512_auth *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__credentials *)

type aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__vpc = {
  security_groups : string list option; [@option]
      (** security_groups *)
  subnets : string list option; [@option]  (** subnets *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__vpc *)

type aws_pipes_pipe__source_parameters__self_managed_kafka_parameters = {
  additional_bootstrap_servers : string list option; [@option]
      (** additional_bootstrap_servers *)
  batch_size : float option; [@option]  (** batch_size *)
  consumer_group_id : string option; [@option]
      (** consumer_group_id *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  server_root_ca_certificate : string option; [@option]
      (** server_root_ca_certificate *)
  starting_position : string option; [@option]
      (** starting_position *)
  topic_name : string;  (** topic_name *)
  credentials :
    aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__credentials
    list;
  vpc :
    aws_pipes_pipe__source_parameters__self_managed_kafka_parameters__vpc
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__self_managed_kafka_parameters *)

type aws_pipes_pipe__source_parameters__sqs_queue_parameters = {
  batch_size : float option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters__sqs_queue_parameters *)

type aws_pipes_pipe__source_parameters = {
  activemq_broker_parameters :
    aws_pipes_pipe__source_parameters__activemq_broker_parameters
    list;
  dynamodb_stream_parameters :
    aws_pipes_pipe__source_parameters__dynamodb_stream_parameters
    list;
  filter_criteria :
    aws_pipes_pipe__source_parameters__filter_criteria list;
  kinesis_stream_parameters :
    aws_pipes_pipe__source_parameters__kinesis_stream_parameters list;
  managed_streaming_kafka_parameters :
    aws_pipes_pipe__source_parameters__managed_streaming_kafka_parameters
    list;
  rabbitmq_broker_parameters :
    aws_pipes_pipe__source_parameters__rabbitmq_broker_parameters
    list;
  self_managed_kafka_parameters :
    aws_pipes_pipe__source_parameters__self_managed_kafka_parameters
    list;
  sqs_queue_parameters :
    aws_pipes_pipe__source_parameters__sqs_queue_parameters list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__source_parameters *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__array_properties = {
  size : float option; [@option]  (** size *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__array_properties *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__environment = {
  name : string option; [@option]  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__environment *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__resource_requirement = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__resource_requirement *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides = {
  command : string list option; [@option]  (** command *)
  instance_type : string option; [@option]  (** instance_type *)
  environment :
    aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__environment
    list;
  resource_requirement :
    aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides__resource_requirement
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__depends_on = {
  job_id : string option; [@option]  (** job_id *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__depends_on *)

type aws_pipes_pipe__target_parameters__batch_job_parameters__retry_strategy = {
  attempts : float option; [@option]  (** attempts *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters__retry_strategy *)

type aws_pipes_pipe__target_parameters__batch_job_parameters = {
  job_definition : string;  (** job_definition *)
  job_name : string;  (** job_name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  array_properties :
    aws_pipes_pipe__target_parameters__batch_job_parameters__array_properties
    list;
  container_overrides :
    aws_pipes_pipe__target_parameters__batch_job_parameters__container_overrides
    list;
  depends_on :
    aws_pipes_pipe__target_parameters__batch_job_parameters__depends_on
    list;
  retry_strategy :
    aws_pipes_pipe__target_parameters__batch_job_parameters__retry_strategy
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__batch_job_parameters *)

type aws_pipes_pipe__target_parameters__cloudwatch_logs_parameters = {
  log_stream_name : string option; [@option]  (** log_stream_name *)
  timestamp : string option; [@option]  (** timestamp *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__cloudwatch_logs_parameters *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__capacity_provider_strategy = {
  base : float option; [@option]  (** base *)
  capacity_provider : string;  (** capacity_provider *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__capacity_provider_strategy *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration = {
  assign_public_ip : string option; [@option]
      (** assign_public_ip *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnets : string list option; [@option]  (** subnets *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration = {
  aws_vpc_configuration :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment = {
  name : string option; [@option]  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment_file = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment_file *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override = {
  command : string list option; [@option]  (** command *)
  cpu : float option; [@option]  (** cpu *)
  memory : float option; [@option]  (** memory *)
  memory_reservation : float option; [@option]
      (** memory_reservation *)
  name : string option; [@option]  (** name *)
  environment :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment
    list;
  environment_file :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    list;
  resource_requirement :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__ephemeral_storage = {
  size_in_gib : float;  (** size_in_gib *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__ephemeral_storage *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__inference_accelerator_override = {
  device_name : string option; [@option]  (** device_name *)
  device_type : string option; [@option]  (** device_type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__inference_accelerator_override *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides = {
  cpu : string option; [@option]  (** cpu *)
  execution_role_arn : string option; [@option]
      (** execution_role_arn *)
  memory : string option; [@option]  (** memory *)
  task_role_arn : string option; [@option]  (** task_role_arn *)
  container_override :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__container_override
    list;
  ephemeral_storage :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    list;
  inference_accelerator_override :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_constraint = {
  expression : string option; [@option]  (** expression *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_constraint *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_strategy = {
  field : string option; [@option]  (** field *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_strategy *)

type aws_pipes_pipe__target_parameters__ecs_task_parameters = {
  enable_ecs_managed_tags : bool option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool option; [@option]
      (** enable_execute_command *)
  group : string option; [@option]  (** group *)
  launch_type : string option; [@option]  (** launch_type *)
  platform_version : string option; [@option]
      (** platform_version *)
  propagate_tags : string option; [@option]  (** propagate_tags *)
  reference_id : string option; [@option]  (** reference_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  task_count : float option; [@option]  (** task_count *)
  task_definition_arn : string;  (** task_definition_arn *)
  capacity_provider_strategy :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__capacity_provider_strategy
    list;
  network_configuration :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__network_configuration
    list;
  overrides :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__overrides
    list;
  placement_constraint :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_constraint
    list;
  placement_strategy :
    aws_pipes_pipe__target_parameters__ecs_task_parameters__placement_strategy
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__ecs_task_parameters *)

type aws_pipes_pipe__target_parameters__eventbridge_event_bus_parameters = {
  detail_type : string option; [@option]  (** detail_type *)
  endpoint_id : string option; [@option]  (** endpoint_id *)
  resources : string list option; [@option]  (** resources *)
  source : string option; [@option]  (** source *)
  time : string option; [@option]  (** time *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__eventbridge_event_bus_parameters *)

type aws_pipes_pipe__target_parameters__http_parameters = {
  header_parameters : (string * string) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string) list option; [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__http_parameters *)

type aws_pipes_pipe__target_parameters__kinesis_stream_parameters = {
  partition_key : string;  (** partition_key *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__kinesis_stream_parameters *)

type aws_pipes_pipe__target_parameters__lambda_function_parameters = {
  invocation_type : string;  (** invocation_type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__lambda_function_parameters *)

type aws_pipes_pipe__target_parameters__redshift_data_parameters = {
  database : string;  (** database *)
  db_user : string option; [@option]  (** db_user *)
  secret_manager_arn : string option; [@option]
      (** secret_manager_arn *)
  sqls : string list;  (** sqls *)
  statement_name : string option; [@option]  (** statement_name *)
  with_event : bool option; [@option]  (** with_event *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__redshift_data_parameters *)

type aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters__pipeline_parameter *)

type aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters *)

type aws_pipes_pipe__target_parameters__sqs_queue_parameters = {
  message_deduplication_id : string option; [@option]
      (** message_deduplication_id *)
  message_group_id : string option; [@option]  (** message_group_id *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__sqs_queue_parameters *)

type aws_pipes_pipe__target_parameters__step_function_state_machine_parameters = {
  invocation_type : string;  (** invocation_type *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters__step_function_state_machine_parameters *)

type aws_pipes_pipe__target_parameters = {
  input_template : string option; [@option]  (** input_template *)
  batch_job_parameters :
    aws_pipes_pipe__target_parameters__batch_job_parameters list;
  cloudwatch_logs_parameters :
    aws_pipes_pipe__target_parameters__cloudwatch_logs_parameters
    list;
  ecs_task_parameters :
    aws_pipes_pipe__target_parameters__ecs_task_parameters list;
  eventbridge_event_bus_parameters :
    aws_pipes_pipe__target_parameters__eventbridge_event_bus_parameters
    list;
  http_parameters :
    aws_pipes_pipe__target_parameters__http_parameters list;
  kinesis_stream_parameters :
    aws_pipes_pipe__target_parameters__kinesis_stream_parameters list;
  lambda_function_parameters :
    aws_pipes_pipe__target_parameters__lambda_function_parameters
    list;
  redshift_data_parameters :
    aws_pipes_pipe__target_parameters__redshift_data_parameters list;
  sagemaker_pipeline_parameters :
    aws_pipes_pipe__target_parameters__sagemaker_pipeline_parameters
    list;
  sqs_queue_parameters :
    aws_pipes_pipe__target_parameters__sqs_queue_parameters list;
  step_function_state_machine_parameters :
    aws_pipes_pipe__target_parameters__step_function_state_machine_parameters
    list;
}
[@@deriving yojson_of]
(** aws_pipes_pipe__target_parameters *)

type aws_pipes_pipe__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_pipes_pipe__timeouts *)

type aws_pipes_pipe = {
  description : string option; [@option]  (** description *)
  desired_state : string option; [@option]  (** desired_state *)
  enrichment : string option; [@option]  (** enrichment *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  role_arn : string;  (** role_arn *)
  source : string;  (** source *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target : string;  (** target *)
  enrichment_parameters : aws_pipes_pipe__enrichment_parameters list;
  source_parameters : aws_pipes_pipe__source_parameters list;
  target_parameters : aws_pipes_pipe__target_parameters list;
  timeouts : aws_pipes_pipe__timeouts option;
}
[@@deriving yojson_of]
(** aws_pipes_pipe *)

let aws_pipes_pipe ?description ?desired_state ?enrichment ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source ~target
    ~enrichment_parameters ~source_parameters ~target_parameters
    __resource_id =
  let __resource_type = "aws_pipes_pipe" in
  let __resource =
    {
      description;
      desired_state;
      enrichment;
      id;
      name;
      name_prefix;
      role_arn;
      source;
      tags;
      tags_all;
      target;
      enrichment_parameters;
      source_parameters;
      target_parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pipes_pipe __resource);
  ()
