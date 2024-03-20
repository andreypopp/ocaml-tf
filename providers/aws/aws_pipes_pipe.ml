(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enrichment_parameters__http_parameters = {
  header_parameters : (string * string prop) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string prop list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string prop) list option;
      [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** enrichment_parameters__http_parameters *)

type enrichment_parameters = {
  input_template : string prop option; [@option]
      (** input_template *)
  http_parameters : enrichment_parameters__http_parameters list;
}
[@@deriving yojson_of]
(** enrichment_parameters *)

type source_parameters__activemq_broker_parameters__credentials = {
  basic_auth : string prop;  (** basic_auth *)
}
[@@deriving yojson_of]
(** source_parameters__activemq_broker_parameters__credentials *)

type source_parameters__activemq_broker_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  queue_name : string prop;  (** queue_name *)
  credentials :
    source_parameters__activemq_broker_parameters__credentials list;
}
[@@deriving yojson_of]
(** source_parameters__activemq_broker_parameters *)

type source_parameters__dynamodb_stream_parameters__dead_letter_config = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** source_parameters__dynamodb_stream_parameters__dead_letter_config *)

type source_parameters__dynamodb_stream_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  maximum_record_age_in_seconds : float prop option; [@option]
      (** maximum_record_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
  on_partial_batch_item_failure : string prop option; [@option]
      (** on_partial_batch_item_failure *)
  parallelization_factor : float prop option; [@option]
      (** parallelization_factor *)
  starting_position : string prop;  (** starting_position *)
  dead_letter_config :
    source_parameters__dynamodb_stream_parameters__dead_letter_config
    list;
}
[@@deriving yojson_of]
(** source_parameters__dynamodb_stream_parameters *)

type source_parameters__filter_criteria__filter = {
  pattern : string prop;  (** pattern *)
}
[@@deriving yojson_of]
(** source_parameters__filter_criteria__filter *)

type source_parameters__filter_criteria = {
  filter : source_parameters__filter_criteria__filter list;
}
[@@deriving yojson_of]
(** source_parameters__filter_criteria *)

type source_parameters__kinesis_stream_parameters__dead_letter_config = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** source_parameters__kinesis_stream_parameters__dead_letter_config *)

type source_parameters__kinesis_stream_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  maximum_record_age_in_seconds : float prop option; [@option]
      (** maximum_record_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
  on_partial_batch_item_failure : string prop option; [@option]
      (** on_partial_batch_item_failure *)
  parallelization_factor : float prop option; [@option]
      (** parallelization_factor *)
  starting_position : string prop;  (** starting_position *)
  starting_position_timestamp : string prop option; [@option]
      (** starting_position_timestamp *)
  dead_letter_config :
    source_parameters__kinesis_stream_parameters__dead_letter_config
    list;
}
[@@deriving yojson_of]
(** source_parameters__kinesis_stream_parameters *)

type source_parameters__managed_streaming_kafka_parameters__credentials = {
  client_certificate_tls_auth : string prop option; [@option]
      (** client_certificate_tls_auth *)
  sasl_scram_512_auth : string prop option; [@option]
      (** sasl_scram_512_auth *)
}
[@@deriving yojson_of]
(** source_parameters__managed_streaming_kafka_parameters__credentials *)

type source_parameters__managed_streaming_kafka_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  consumer_group_id : string prop option; [@option]
      (** consumer_group_id *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  starting_position : string prop option; [@option]
      (** starting_position *)
  topic_name : string prop;  (** topic_name *)
  credentials :
    source_parameters__managed_streaming_kafka_parameters__credentials
    list;
}
[@@deriving yojson_of]
(** source_parameters__managed_streaming_kafka_parameters *)

type source_parameters__rabbitmq_broker_parameters__credentials = {
  basic_auth : string prop;  (** basic_auth *)
}
[@@deriving yojson_of]
(** source_parameters__rabbitmq_broker_parameters__credentials *)

type source_parameters__rabbitmq_broker_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  queue_name : string prop;  (** queue_name *)
  virtual_host : string prop option; [@option]  (** virtual_host *)
  credentials :
    source_parameters__rabbitmq_broker_parameters__credentials list;
}
[@@deriving yojson_of]
(** source_parameters__rabbitmq_broker_parameters *)

type source_parameters__self_managed_kafka_parameters__credentials = {
  basic_auth : string prop;  (** basic_auth *)
  client_certificate_tls_auth : string prop option; [@option]
      (** client_certificate_tls_auth *)
  sasl_scram_256_auth : string prop option; [@option]
      (** sasl_scram_256_auth *)
  sasl_scram_512_auth : string prop option; [@option]
      (** sasl_scram_512_auth *)
}
[@@deriving yojson_of]
(** source_parameters__self_managed_kafka_parameters__credentials *)

type source_parameters__self_managed_kafka_parameters__vpc = {
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list option; [@option]  (** subnets *)
}
[@@deriving yojson_of]
(** source_parameters__self_managed_kafka_parameters__vpc *)

type source_parameters__self_managed_kafka_parameters = {
  additional_bootstrap_servers : string prop list option; [@option]
      (** additional_bootstrap_servers *)
  batch_size : float prop option; [@option]  (** batch_size *)
  consumer_group_id : string prop option; [@option]
      (** consumer_group_id *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  server_root_ca_certificate : string prop option; [@option]
      (** server_root_ca_certificate *)
  starting_position : string prop option; [@option]
      (** starting_position *)
  topic_name : string prop;  (** topic_name *)
  credentials :
    source_parameters__self_managed_kafka_parameters__credentials
    list;
  vpc : source_parameters__self_managed_kafka_parameters__vpc list;
}
[@@deriving yojson_of]
(** source_parameters__self_managed_kafka_parameters *)

type source_parameters__sqs_queue_parameters = {
  batch_size : float prop option; [@option]  (** batch_size *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
}
[@@deriving yojson_of]
(** source_parameters__sqs_queue_parameters *)

type source_parameters = {
  activemq_broker_parameters :
    source_parameters__activemq_broker_parameters list;
  dynamodb_stream_parameters :
    source_parameters__dynamodb_stream_parameters list;
  filter_criteria : source_parameters__filter_criteria list;
  kinesis_stream_parameters :
    source_parameters__kinesis_stream_parameters list;
  managed_streaming_kafka_parameters :
    source_parameters__managed_streaming_kafka_parameters list;
  rabbitmq_broker_parameters :
    source_parameters__rabbitmq_broker_parameters list;
  self_managed_kafka_parameters :
    source_parameters__self_managed_kafka_parameters list;
  sqs_queue_parameters : source_parameters__sqs_queue_parameters list;
}
[@@deriving yojson_of]
(** source_parameters *)

type target_parameters__batch_job_parameters__array_properties = {
  size : float prop option; [@option]  (** size *)
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__array_properties *)

type target_parameters__batch_job_parameters__container_overrides__environment = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__container_overrides__environment *)

type target_parameters__batch_job_parameters__container_overrides__resource_requirement = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__container_overrides__resource_requirement *)

type target_parameters__batch_job_parameters__container_overrides = {
  command : string prop list option; [@option]  (** command *)
  instance_type : string prop option; [@option]  (** instance_type *)
  environment :
    target_parameters__batch_job_parameters__container_overrides__environment
    list;
  resource_requirement :
    target_parameters__batch_job_parameters__container_overrides__resource_requirement
    list;
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__container_overrides *)

type target_parameters__batch_job_parameters__depends_on = {
  job_id : string prop option; [@option]  (** job_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__depends_on *)

type target_parameters__batch_job_parameters__retry_strategy = {
  attempts : float prop option; [@option]  (** attempts *)
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters__retry_strategy *)

type target_parameters__batch_job_parameters = {
  job_definition : string prop;  (** job_definition *)
  job_name : string prop;  (** job_name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  array_properties :
    target_parameters__batch_job_parameters__array_properties list;
  container_overrides :
    target_parameters__batch_job_parameters__container_overrides list;
  depends_on :
    target_parameters__batch_job_parameters__depends_on list;
  retry_strategy :
    target_parameters__batch_job_parameters__retry_strategy list;
}
[@@deriving yojson_of]
(** target_parameters__batch_job_parameters *)

type target_parameters__cloudwatch_logs_parameters = {
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
  timestamp : string prop option; [@option]  (** timestamp *)
}
[@@deriving yojson_of]
(** target_parameters__cloudwatch_logs_parameters *)

type target_parameters__ecs_task_parameters__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__capacity_provider_strategy *)

type target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration = {
  assign_public_ip : string prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list option; [@option]  (** subnets *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration *)

type target_parameters__ecs_task_parameters__network_configuration = {
  aws_vpc_configuration :
    target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    list;
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__network_configuration *)

type target_parameters__ecs_task_parameters__overrides__container_override__environment = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__container_override__environment *)

type target_parameters__ecs_task_parameters__overrides__container_override__environment_file = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__container_override__environment_file *)

type target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement *)

type target_parameters__ecs_task_parameters__overrides__container_override = {
  command : string prop list option; [@option]  (** command *)
  cpu : float prop option; [@option]  (** cpu *)
  memory : float prop option; [@option]  (** memory *)
  memory_reservation : float prop option; [@option]
      (** memory_reservation *)
  name : string prop option; [@option]  (** name *)
  environment :
    target_parameters__ecs_task_parameters__overrides__container_override__environment
    list;
  environment_file :
    target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    list;
  resource_requirement :
    target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    list;
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__container_override *)

type target_parameters__ecs_task_parameters__overrides__ephemeral_storage = {
  size_in_gib : float prop;  (** size_in_gib *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__ephemeral_storage *)

type target_parameters__ecs_task_parameters__overrides__inference_accelerator_override = {
  device_name : string prop option; [@option]  (** device_name *)
  device_type : string prop option; [@option]  (** device_type *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides__inference_accelerator_override *)

type target_parameters__ecs_task_parameters__overrides = {
  cpu : string prop option; [@option]  (** cpu *)
  execution_role_arn : string prop option; [@option]
      (** execution_role_arn *)
  memory : string prop option; [@option]  (** memory *)
  task_role_arn : string prop option; [@option]  (** task_role_arn *)
  container_override :
    target_parameters__ecs_task_parameters__overrides__container_override
    list;
  ephemeral_storage :
    target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    list;
  inference_accelerator_override :
    target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    list;
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__overrides *)

type target_parameters__ecs_task_parameters__placement_constraint = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__placement_constraint *)

type target_parameters__ecs_task_parameters__placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters__placement_strategy *)

type target_parameters__ecs_task_parameters = {
  enable_ecs_managed_tags : bool prop option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool prop option; [@option]
      (** enable_execute_command *)
  group : string prop option; [@option]  (** group *)
  launch_type : string prop option; [@option]  (** launch_type *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  propagate_tags : string prop option; [@option]
      (** propagate_tags *)
  reference_id : string prop option; [@option]  (** reference_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  task_count : float prop option; [@option]  (** task_count *)
  task_definition_arn : string prop;  (** task_definition_arn *)
  capacity_provider_strategy :
    target_parameters__ecs_task_parameters__capacity_provider_strategy
    list;
  network_configuration :
    target_parameters__ecs_task_parameters__network_configuration
    list;
  overrides : target_parameters__ecs_task_parameters__overrides list;
  placement_constraint :
    target_parameters__ecs_task_parameters__placement_constraint list;
  placement_strategy :
    target_parameters__ecs_task_parameters__placement_strategy list;
}
[@@deriving yojson_of]
(** target_parameters__ecs_task_parameters *)

type target_parameters__eventbridge_event_bus_parameters = {
  detail_type : string prop option; [@option]  (** detail_type *)
  endpoint_id : string prop option; [@option]  (** endpoint_id *)
  resources : string prop list option; [@option]  (** resources *)
  source : string prop option; [@option]  (** source *)
  time : string prop option; [@option]  (** time *)
}
[@@deriving yojson_of]
(** target_parameters__eventbridge_event_bus_parameters *)

type target_parameters__http_parameters = {
  header_parameters : (string * string prop) list option; [@option]
      (** header_parameters *)
  path_parameter_values : string prop list option; [@option]
      (** path_parameter_values *)
  query_string_parameters : (string * string prop) list option;
      [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** target_parameters__http_parameters *)

type target_parameters__kinesis_stream_parameters = {
  partition_key : string prop;  (** partition_key *)
}
[@@deriving yojson_of]
(** target_parameters__kinesis_stream_parameters *)

type target_parameters__lambda_function_parameters = {
  invocation_type : string prop;  (** invocation_type *)
}
[@@deriving yojson_of]
(** target_parameters__lambda_function_parameters *)

type target_parameters__redshift_data_parameters = {
  database : string prop;  (** database *)
  db_user : string prop option; [@option]  (** db_user *)
  secret_manager_arn : string prop option; [@option]
      (** secret_manager_arn *)
  sqls : string prop list;  (** sqls *)
  statement_name : string prop option; [@option]
      (** statement_name *)
  with_event : bool prop option; [@option]  (** with_event *)
}
[@@deriving yojson_of]
(** target_parameters__redshift_data_parameters *)

type target_parameters__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_parameters__sagemaker_pipeline_parameters__pipeline_parameter *)

type target_parameters__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    list;
}
[@@deriving yojson_of]
(** target_parameters__sagemaker_pipeline_parameters *)

type target_parameters__sqs_queue_parameters = {
  message_deduplication_id : string prop option; [@option]
      (** message_deduplication_id *)
  message_group_id : string prop option; [@option]
      (** message_group_id *)
}
[@@deriving yojson_of]
(** target_parameters__sqs_queue_parameters *)

type target_parameters__step_function_state_machine_parameters = {
  invocation_type : string prop;  (** invocation_type *)
}
[@@deriving yojson_of]
(** target_parameters__step_function_state_machine_parameters *)

type target_parameters = {
  input_template : string prop option; [@option]
      (** input_template *)
  batch_job_parameters :
    target_parameters__batch_job_parameters list;
  cloudwatch_logs_parameters :
    target_parameters__cloudwatch_logs_parameters list;
  ecs_task_parameters : target_parameters__ecs_task_parameters list;
  eventbridge_event_bus_parameters :
    target_parameters__eventbridge_event_bus_parameters list;
  http_parameters : target_parameters__http_parameters list;
  kinesis_stream_parameters :
    target_parameters__kinesis_stream_parameters list;
  lambda_function_parameters :
    target_parameters__lambda_function_parameters list;
  redshift_data_parameters :
    target_parameters__redshift_data_parameters list;
  sagemaker_pipeline_parameters :
    target_parameters__sagemaker_pipeline_parameters list;
  sqs_queue_parameters :
    target_parameters__sqs_queue_parameters list;
  step_function_state_machine_parameters :
    target_parameters__step_function_state_machine_parameters list;
}
[@@deriving yojson_of]
(** target_parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_pipes_pipe = {
  description : string prop option; [@option]  (** description *)
  desired_state : string prop option; [@option]  (** desired_state *)
  enrichment : string prop option; [@option]  (** enrichment *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  role_arn : string prop;  (** role_arn *)
  source : string prop;  (** source *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target : string prop;  (** target *)
  enrichment_parameters : enrichment_parameters list;
  source_parameters : source_parameters list;
  target_parameters : target_parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_pipes_pipe *)

let enrichment_parameters__http_parameters ?header_parameters
    ?path_parameter_values ?query_string_parameters () :
    enrichment_parameters__http_parameters =
  {
    header_parameters;
    path_parameter_values;
    query_string_parameters;
  }

let enrichment_parameters ?input_template ~http_parameters () :
    enrichment_parameters =
  { input_template; http_parameters }

let source_parameters__activemq_broker_parameters__credentials
    ~basic_auth () :
    source_parameters__activemq_broker_parameters__credentials =
  { basic_auth }

let source_parameters__activemq_broker_parameters ?batch_size
    ?maximum_batching_window_in_seconds ~queue_name ~credentials () :
    source_parameters__activemq_broker_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    queue_name;
    credentials;
  }

let source_parameters__dynamodb_stream_parameters__dead_letter_config
    ?arn () :
    source_parameters__dynamodb_stream_parameters__dead_letter_config
    =
  { arn }

let source_parameters__dynamodb_stream_parameters ?batch_size
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?on_partial_batch_item_failure ?parallelization_factor
    ~starting_position ~dead_letter_config () :
    source_parameters__dynamodb_stream_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    maximum_record_age_in_seconds;
    maximum_retry_attempts;
    on_partial_batch_item_failure;
    parallelization_factor;
    starting_position;
    dead_letter_config;
  }

let source_parameters__filter_criteria__filter ~pattern () :
    source_parameters__filter_criteria__filter =
  { pattern }

let source_parameters__filter_criteria ~filter () :
    source_parameters__filter_criteria =
  { filter }

let source_parameters__kinesis_stream_parameters__dead_letter_config
    ?arn () :
    source_parameters__kinesis_stream_parameters__dead_letter_config
    =
  { arn }

let source_parameters__kinesis_stream_parameters ?batch_size
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?on_partial_batch_item_failure ?parallelization_factor
    ?starting_position_timestamp ~starting_position
    ~dead_letter_config () :
    source_parameters__kinesis_stream_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    maximum_record_age_in_seconds;
    maximum_retry_attempts;
    on_partial_batch_item_failure;
    parallelization_factor;
    starting_position;
    starting_position_timestamp;
    dead_letter_config;
  }

let source_parameters__managed_streaming_kafka_parameters__credentials
    ?client_certificate_tls_auth ?sasl_scram_512_auth () :
    source_parameters__managed_streaming_kafka_parameters__credentials
    =
  { client_certificate_tls_auth; sasl_scram_512_auth }

let source_parameters__managed_streaming_kafka_parameters ?batch_size
    ?consumer_group_id ?maximum_batching_window_in_seconds
    ?starting_position ~topic_name ~credentials () :
    source_parameters__managed_streaming_kafka_parameters =
  {
    batch_size;
    consumer_group_id;
    maximum_batching_window_in_seconds;
    starting_position;
    topic_name;
    credentials;
  }

let source_parameters__rabbitmq_broker_parameters__credentials
    ~basic_auth () :
    source_parameters__rabbitmq_broker_parameters__credentials =
  { basic_auth }

let source_parameters__rabbitmq_broker_parameters ?batch_size
    ?maximum_batching_window_in_seconds ?virtual_host ~queue_name
    ~credentials () : source_parameters__rabbitmq_broker_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    queue_name;
    virtual_host;
    credentials;
  }

let source_parameters__self_managed_kafka_parameters__credentials
    ?client_certificate_tls_auth ?sasl_scram_256_auth
    ?sasl_scram_512_auth ~basic_auth () :
    source_parameters__self_managed_kafka_parameters__credentials =
  {
    basic_auth;
    client_certificate_tls_auth;
    sasl_scram_256_auth;
    sasl_scram_512_auth;
  }

let source_parameters__self_managed_kafka_parameters__vpc
    ?security_groups ?subnets () :
    source_parameters__self_managed_kafka_parameters__vpc =
  { security_groups; subnets }

let source_parameters__self_managed_kafka_parameters
    ?additional_bootstrap_servers ?batch_size ?consumer_group_id
    ?maximum_batching_window_in_seconds ?server_root_ca_certificate
    ?starting_position ~topic_name ~credentials ~vpc () :
    source_parameters__self_managed_kafka_parameters =
  {
    additional_bootstrap_servers;
    batch_size;
    consumer_group_id;
    maximum_batching_window_in_seconds;
    server_root_ca_certificate;
    starting_position;
    topic_name;
    credentials;
    vpc;
  }

let source_parameters__sqs_queue_parameters ?batch_size
    ?maximum_batching_window_in_seconds () :
    source_parameters__sqs_queue_parameters =
  { batch_size; maximum_batching_window_in_seconds }

let source_parameters ~activemq_broker_parameters
    ~dynamodb_stream_parameters ~filter_criteria
    ~kinesis_stream_parameters ~managed_streaming_kafka_parameters
    ~rabbitmq_broker_parameters ~self_managed_kafka_parameters
    ~sqs_queue_parameters () : source_parameters =
  {
    activemq_broker_parameters;
    dynamodb_stream_parameters;
    filter_criteria;
    kinesis_stream_parameters;
    managed_streaming_kafka_parameters;
    rabbitmq_broker_parameters;
    self_managed_kafka_parameters;
    sqs_queue_parameters;
  }

let target_parameters__batch_job_parameters__array_properties ?size
    () : target_parameters__batch_job_parameters__array_properties =
  { size }

let target_parameters__batch_job_parameters__container_overrides__environment
    ?name ?value () :
    target_parameters__batch_job_parameters__container_overrides__environment
    =
  { name; value }

let target_parameters__batch_job_parameters__container_overrides__resource_requirement
    ~type_ ~value () :
    target_parameters__batch_job_parameters__container_overrides__resource_requirement
    =
  { type_; value }

let target_parameters__batch_job_parameters__container_overrides
    ?command ?instance_type ~environment ~resource_requirement () :
    target_parameters__batch_job_parameters__container_overrides =
  { command; instance_type; environment; resource_requirement }

let target_parameters__batch_job_parameters__depends_on ?job_id
    ?type_ () : target_parameters__batch_job_parameters__depends_on =
  { job_id; type_ }

let target_parameters__batch_job_parameters__retry_strategy ?attempts
    () : target_parameters__batch_job_parameters__retry_strategy =
  { attempts }

let target_parameters__batch_job_parameters ?parameters
    ~job_definition ~job_name ~array_properties ~container_overrides
    ~depends_on ~retry_strategy () :
    target_parameters__batch_job_parameters =
  {
    job_definition;
    job_name;
    parameters;
    array_properties;
    container_overrides;
    depends_on;
    retry_strategy;
  }

let target_parameters__cloudwatch_logs_parameters ?log_stream_name
    ?timestamp () : target_parameters__cloudwatch_logs_parameters =
  { log_stream_name; timestamp }

let target_parameters__ecs_task_parameters__capacity_provider_strategy
    ?base ?weight ~capacity_provider () :
    target_parameters__ecs_task_parameters__capacity_provider_strategy
    =
  { base; capacity_provider; weight }

let target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    ?assign_public_ip ?security_groups ?subnets () :
    target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    =
  { assign_public_ip; security_groups; subnets }

let target_parameters__ecs_task_parameters__network_configuration
    ~aws_vpc_configuration () :
    target_parameters__ecs_task_parameters__network_configuration =
  { aws_vpc_configuration }

let target_parameters__ecs_task_parameters__overrides__container_override__environment
    ?name ?value () :
    target_parameters__ecs_task_parameters__overrides__container_override__environment
    =
  { name; value }

let target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    ~type_ ~value () :
    target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    =
  { type_; value }

let target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    ~type_ ~value () :
    target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    =
  { type_; value }

let target_parameters__ecs_task_parameters__overrides__container_override
    ?command ?cpu ?memory ?memory_reservation ?name ~environment
    ~environment_file ~resource_requirement () :
    target_parameters__ecs_task_parameters__overrides__container_override
    =
  {
    command;
    cpu;
    memory;
    memory_reservation;
    name;
    environment;
    environment_file;
    resource_requirement;
  }

let target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    ~size_in_gib () :
    target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    =
  { size_in_gib }

let target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    ?device_name ?device_type () :
    target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    =
  { device_name; device_type }

let target_parameters__ecs_task_parameters__overrides ?cpu
    ?execution_role_arn ?memory ?task_role_arn ~container_override
    ~ephemeral_storage ~inference_accelerator_override () :
    target_parameters__ecs_task_parameters__overrides =
  {
    cpu;
    execution_role_arn;
    memory;
    task_role_arn;
    container_override;
    ephemeral_storage;
    inference_accelerator_override;
  }

let target_parameters__ecs_task_parameters__placement_constraint
    ?expression ?type_ () :
    target_parameters__ecs_task_parameters__placement_constraint =
  { expression; type_ }

let target_parameters__ecs_task_parameters__placement_strategy ?field
    ?type_ () :
    target_parameters__ecs_task_parameters__placement_strategy =
  { field; type_ }

let target_parameters__ecs_task_parameters ?enable_ecs_managed_tags
    ?enable_execute_command ?group ?launch_type ?platform_version
    ?propagate_tags ?reference_id ?tags ?task_count
    ~task_definition_arn ~capacity_provider_strategy
    ~network_configuration ~overrides ~placement_constraint
    ~placement_strategy () : target_parameters__ecs_task_parameters =
  {
    enable_ecs_managed_tags;
    enable_execute_command;
    group;
    launch_type;
    platform_version;
    propagate_tags;
    reference_id;
    tags;
    task_count;
    task_definition_arn;
    capacity_provider_strategy;
    network_configuration;
    overrides;
    placement_constraint;
    placement_strategy;
  }

let target_parameters__eventbridge_event_bus_parameters ?detail_type
    ?endpoint_id ?resources ?source ?time () :
    target_parameters__eventbridge_event_bus_parameters =
  { detail_type; endpoint_id; resources; source; time }

let target_parameters__http_parameters ?header_parameters
    ?path_parameter_values ?query_string_parameters () :
    target_parameters__http_parameters =
  {
    header_parameters;
    path_parameter_values;
    query_string_parameters;
  }

let target_parameters__kinesis_stream_parameters ~partition_key () :
    target_parameters__kinesis_stream_parameters =
  { partition_key }

let target_parameters__lambda_function_parameters ~invocation_type ()
    : target_parameters__lambda_function_parameters =
  { invocation_type }

let target_parameters__redshift_data_parameters ?db_user
    ?secret_manager_arn ?statement_name ?with_event ~database ~sqls
    () : target_parameters__redshift_data_parameters =
  {
    database;
    db_user;
    secret_manager_arn;
    sqls;
    statement_name;
    with_event;
  }

let target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    ~name ~value () :
    target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    =
  { name; value }

let target_parameters__sagemaker_pipeline_parameters
    ~pipeline_parameter () :
    target_parameters__sagemaker_pipeline_parameters =
  { pipeline_parameter }

let target_parameters__sqs_queue_parameters ?message_deduplication_id
    ?message_group_id () : target_parameters__sqs_queue_parameters =
  { message_deduplication_id; message_group_id }

let target_parameters__step_function_state_machine_parameters
    ~invocation_type () :
    target_parameters__step_function_state_machine_parameters =
  { invocation_type }

let target_parameters ?input_template ~batch_job_parameters
    ~cloudwatch_logs_parameters ~ecs_task_parameters
    ~eventbridge_event_bus_parameters ~http_parameters
    ~kinesis_stream_parameters ~lambda_function_parameters
    ~redshift_data_parameters ~sagemaker_pipeline_parameters
    ~sqs_queue_parameters ~step_function_state_machine_parameters ()
    : target_parameters =
  {
    input_template;
    batch_job_parameters;
    cloudwatch_logs_parameters;
    ecs_task_parameters;
    eventbridge_event_bus_parameters;
    http_parameters;
    kinesis_stream_parameters;
    lambda_function_parameters;
    redshift_data_parameters;
    sagemaker_pipeline_parameters;
    sqs_queue_parameters;
    step_function_state_machine_parameters;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_pipes_pipe ?description ?desired_state ?enrichment ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source ~target
    ~enrichment_parameters ~source_parameters ~target_parameters () :
    aws_pipes_pipe =
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

type t = {
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

let make ?description ?desired_state ?enrichment ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source ~target
    ~enrichment_parameters ~source_parameters ~target_parameters __id
    =
  let __type = "aws_pipes_pipe" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       desired_state = Prop.computed __type __id "desired_state";
       enrichment = Prop.computed __type __id "enrichment";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       role_arn = Prop.computed __type __id "role_arn";
       source = Prop.computed __type __id "source";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pipes_pipe
        (aws_pipes_pipe ?description ?desired_state ?enrichment ?id
           ?name ?name_prefix ?tags ?tags_all ?timeouts ~role_arn
           ~source ~target ~enrichment_parameters ~source_parameters
           ~target_parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?desired_state ?enrichment ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source
    ~target ~enrichment_parameters ~source_parameters
    ~target_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?description ?desired_state ?enrichment ?id ?name
      ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source
      ~target ~enrichment_parameters ~source_parameters
      ~target_parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
