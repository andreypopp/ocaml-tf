(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_configuration__application_code_configuration__code_content__s3_content_location

val application_configuration__application_code_configuration__code_content__s3_content_location :
  ?object_version:string prop ->
  bucket_arn:string prop ->
  file_key:string prop ->
  unit ->
  application_configuration__application_code_configuration__code_content__s3_content_location

type application_configuration__application_code_configuration__code_content

val application_configuration__application_code_configuration__code_content :
  ?text_content:string prop ->
  ?s3_content_location:
    application_configuration__application_code_configuration__code_content__s3_content_location
    list ->
  unit ->
  application_configuration__application_code_configuration__code_content

type application_configuration__application_code_configuration

val application_configuration__application_code_configuration :
  ?code_content:
    application_configuration__application_code_configuration__code_content
    list ->
  code_content_type:string prop ->
  unit ->
  application_configuration__application_code_configuration

type application_configuration__application_snapshot_configuration

val application_configuration__application_snapshot_configuration :
  snapshots_enabled:bool prop ->
  unit ->
  application_configuration__application_snapshot_configuration

type application_configuration__environment_properties__property_group

val application_configuration__environment_properties__property_group :
  property_group_id:string prop ->
  property_map:(string * string prop) list ->
  unit ->
  application_configuration__environment_properties__property_group

type application_configuration__environment_properties

val application_configuration__environment_properties :
  property_group:
    application_configuration__environment_properties__property_group
    list ->
  unit ->
  application_configuration__environment_properties

type application_configuration__flink_application_configuration__checkpoint_configuration

val application_configuration__flink_application_configuration__checkpoint_configuration :
  ?checkpoint_interval:float prop ->
  ?checkpointing_enabled:bool prop ->
  ?min_pause_between_checkpoints:float prop ->
  configuration_type:string prop ->
  unit ->
  application_configuration__flink_application_configuration__checkpoint_configuration

type application_configuration__flink_application_configuration__monitoring_configuration

val application_configuration__flink_application_configuration__monitoring_configuration :
  ?log_level:string prop ->
  ?metrics_level:string prop ->
  configuration_type:string prop ->
  unit ->
  application_configuration__flink_application_configuration__monitoring_configuration

type application_configuration__flink_application_configuration__parallelism_configuration

val application_configuration__flink_application_configuration__parallelism_configuration :
  ?auto_scaling_enabled:bool prop ->
  ?parallelism:float prop ->
  ?parallelism_per_kpu:float prop ->
  configuration_type:string prop ->
  unit ->
  application_configuration__flink_application_configuration__parallelism_configuration

type application_configuration__flink_application_configuration

val application_configuration__flink_application_configuration :
  ?checkpoint_configuration:
    application_configuration__flink_application_configuration__checkpoint_configuration
    list ->
  ?monitoring_configuration:
    application_configuration__flink_application_configuration__monitoring_configuration
    list ->
  ?parallelism_configuration:
    application_configuration__flink_application_configuration__parallelism_configuration
    list ->
  unit ->
  application_configuration__flink_application_configuration

type application_configuration__run_configuration__application_restore_configuration

val application_configuration__run_configuration__application_restore_configuration :
  ?application_restore_type:string prop ->
  ?snapshot_name:string prop ->
  unit ->
  application_configuration__run_configuration__application_restore_configuration

type application_configuration__run_configuration__flink_run_configuration

val application_configuration__run_configuration__flink_run_configuration :
  ?allow_non_restored_state:bool prop ->
  unit ->
  application_configuration__run_configuration__flink_run_configuration

type application_configuration__run_configuration

val application_configuration__run_configuration :
  ?application_restore_configuration:
    application_configuration__run_configuration__application_restore_configuration
    list ->
  ?flink_run_configuration:
    application_configuration__run_configuration__flink_run_configuration
    list ->
  unit ->
  application_configuration__run_configuration

type application_configuration__sql_application_configuration__input__input_parallelism

val application_configuration__sql_application_configuration__input__input_parallelism :
  ?count:float prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_parallelism

type application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor

val application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor

type application_configuration__sql_application_configuration__input__input_processing_configuration

val application_configuration__sql_application_configuration__input__input_processing_configuration :
  input_lambda_processor:
    application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    list ->
  unit ->
  application_configuration__sql_application_configuration__input__input_processing_configuration

type application_configuration__sql_application_configuration__input__input_schema__record_column

val application_configuration__sql_application_configuration__input__input_schema__record_column :
  ?mapping:string prop ->
  name:string prop ->
  sql_type:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema__record_column

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters

val application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters :
  record_column_delimiter:string prop ->
  record_row_delimiter:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters

val application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters :
  record_row_path:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters

val application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters :
  ?csv_mapping_parameters:
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    list ->
  ?json_mapping_parameters:
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    list ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters

type application_configuration__sql_application_configuration__input__input_schema__record_format

val application_configuration__sql_application_configuration__input__input_schema__record_format :
  record_format_type:string prop ->
  mapping_parameters:
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    list ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema__record_format

type application_configuration__sql_application_configuration__input__input_schema

val application_configuration__sql_application_configuration__input__input_schema :
  ?record_encoding:string prop ->
  record_column:
    application_configuration__sql_application_configuration__input__input_schema__record_column
    list ->
  record_format:
    application_configuration__sql_application_configuration__input__input_schema__record_format
    list ->
  unit ->
  application_configuration__sql_application_configuration__input__input_schema

type application_configuration__sql_application_configuration__input__input_starting_position_configuration

val application_configuration__sql_application_configuration__input__input_starting_position_configuration :
  ?input_starting_position:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__input_starting_position_configuration

type application_configuration__sql_application_configuration__input__kinesis_firehose_input

val application_configuration__sql_application_configuration__input__kinesis_firehose_input :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__kinesis_firehose_input

type application_configuration__sql_application_configuration__input__kinesis_streams_input

val application_configuration__sql_application_configuration__input__kinesis_streams_input :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__input__kinesis_streams_input

type application_configuration__sql_application_configuration__input

val application_configuration__sql_application_configuration__input :
  ?input_parallelism:
    application_configuration__sql_application_configuration__input__input_parallelism
    list ->
  ?input_processing_configuration:
    application_configuration__sql_application_configuration__input__input_processing_configuration
    list ->
  ?input_starting_position_configuration:
    application_configuration__sql_application_configuration__input__input_starting_position_configuration
    list ->
  ?kinesis_firehose_input:
    application_configuration__sql_application_configuration__input__kinesis_firehose_input
    list ->
  ?kinesis_streams_input:
    application_configuration__sql_application_configuration__input__kinesis_streams_input
    list ->
  name_prefix:string prop ->
  input_schema:
    application_configuration__sql_application_configuration__input__input_schema
    list ->
  unit ->
  application_configuration__sql_application_configuration__input

type application_configuration__sql_application_configuration__output__destination_schema

val application_configuration__sql_application_configuration__output__destination_schema :
  record_format_type:string prop ->
  unit ->
  application_configuration__sql_application_configuration__output__destination_schema

type application_configuration__sql_application_configuration__output__kinesis_firehose_output

val application_configuration__sql_application_configuration__output__kinesis_firehose_output :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__output__kinesis_firehose_output

type application_configuration__sql_application_configuration__output__kinesis_streams_output

val application_configuration__sql_application_configuration__output__kinesis_streams_output :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__output__kinesis_streams_output

type application_configuration__sql_application_configuration__output__lambda_output

val application_configuration__sql_application_configuration__output__lambda_output :
  resource_arn:string prop ->
  unit ->
  application_configuration__sql_application_configuration__output__lambda_output

type application_configuration__sql_application_configuration__output

val application_configuration__sql_application_configuration__output :
  ?kinesis_firehose_output:
    application_configuration__sql_application_configuration__output__kinesis_firehose_output
    list ->
  ?kinesis_streams_output:
    application_configuration__sql_application_configuration__output__kinesis_streams_output
    list ->
  ?lambda_output:
    application_configuration__sql_application_configuration__output__lambda_output
    list ->
  name:string prop ->
  destination_schema:
    application_configuration__sql_application_configuration__output__destination_schema
    list ->
  unit ->
  application_configuration__sql_application_configuration__output

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column

val application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column :
  ?mapping:string prop ->
  name:string prop ->
  sql_type:string prop ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters

val application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters :
  record_column_delimiter:string prop ->
  record_row_delimiter:string prop ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters

val application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters :
  record_row_path:string prop ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters

val application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters :
  ?csv_mapping_parameters:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    list ->
  ?json_mapping_parameters:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    list ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format

val application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format :
  record_format_type:string prop ->
  mapping_parameters:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    list ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format

type application_configuration__sql_application_configuration__reference_data_source__reference_schema

val application_configuration__sql_application_configuration__reference_data_source__reference_schema :
  ?record_encoding:string prop ->
  record_column:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    list ->
  record_format:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    list ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__reference_schema

type application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source

val application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source :
  bucket_arn:string prop ->
  file_key:string prop ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source

type application_configuration__sql_application_configuration__reference_data_source

val application_configuration__sql_application_configuration__reference_data_source :
  table_name:string prop ->
  reference_schema:
    application_configuration__sql_application_configuration__reference_data_source__reference_schema
    list ->
  s3_reference_data_source:
    application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    list ->
  unit ->
  application_configuration__sql_application_configuration__reference_data_source

type application_configuration__sql_application_configuration

val application_configuration__sql_application_configuration :
  ?input:
    application_configuration__sql_application_configuration__input
    list ->
  ?reference_data_source:
    application_configuration__sql_application_configuration__reference_data_source
    list ->
  output:
    application_configuration__sql_application_configuration__output
    list ->
  unit ->
  application_configuration__sql_application_configuration

type application_configuration__vpc_configuration

val application_configuration__vpc_configuration :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  application_configuration__vpc_configuration

type application_configuration

val application_configuration :
  ?application_snapshot_configuration:
    application_configuration__application_snapshot_configuration
    list ->
  ?environment_properties:
    application_configuration__environment_properties list ->
  ?flink_application_configuration:
    application_configuration__flink_application_configuration list ->
  ?run_configuration:
    application_configuration__run_configuration list ->
  ?sql_application_configuration:
    application_configuration__sql_application_configuration list ->
  ?vpc_configuration:
    application_configuration__vpc_configuration list ->
  application_code_configuration:
    application_configuration__application_code_configuration list ->
  unit ->
  application_configuration

type cloudwatch_logging_options

val cloudwatch_logging_options :
  log_stream_arn:string prop -> unit -> cloudwatch_logging_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kinesisanalyticsv2_application

val aws_kinesisanalyticsv2_application :
  ?description:string prop ->
  ?force_stop:bool prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?application_configuration:application_configuration list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  runtime_environment:string prop ->
  service_execution_role:string prop ->
  unit ->
  aws_kinesisanalyticsv2_application

val yojson_of_aws_kinesisanalyticsv2_application :
  aws_kinesisanalyticsv2_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  create_timestamp : string prop;
  description : string prop;
  force_stop : bool prop;
  id : string prop;
  last_update_timestamp : string prop;
  name : string prop;
  runtime_environment : string prop;
  service_execution_role : string prop;
  start_application : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_stop:bool prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?application_configuration:application_configuration list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  runtime_environment:string prop ->
  service_execution_role:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_stop:bool prop ->
  ?id:string prop ->
  ?start_application:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?application_configuration:application_configuration list ->
  ?cloudwatch_logging_options:cloudwatch_logging_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  runtime_environment:string prop ->
  service_execution_role:string prop ->
  string ->
  t Tf_core.resource
