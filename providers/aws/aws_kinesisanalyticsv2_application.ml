(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_configuration__application_code_configuration__code_content__s3_content_location = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  object_version : string prop option; [@option]
      (** object_version *)
}
[@@deriving yojson_of]
(** application_configuration__application_code_configuration__code_content__s3_content_location *)

type application_configuration__application_code_configuration__code_content = {
  text_content : string prop option; [@option]  (** text_content *)
  s3_content_location :
    application_configuration__application_code_configuration__code_content__s3_content_location
    list;
}
[@@deriving yojson_of]
(** application_configuration__application_code_configuration__code_content *)

type application_configuration__application_code_configuration = {
  code_content_type : string prop;  (** code_content_type *)
  code_content :
    application_configuration__application_code_configuration__code_content
    list;
}
[@@deriving yojson_of]
(** application_configuration__application_code_configuration *)

type application_configuration__application_snapshot_configuration = {
  snapshots_enabled : bool prop;  (** snapshots_enabled *)
}
[@@deriving yojson_of]
(** application_configuration__application_snapshot_configuration *)

type application_configuration__environment_properties__property_group = {
  property_group_id : string prop;  (** property_group_id *)
  property_map : (string * string prop) list;  (** property_map *)
}
[@@deriving yojson_of]
(** application_configuration__environment_properties__property_group *)

type application_configuration__environment_properties = {
  property_group :
    application_configuration__environment_properties__property_group
    list;
}
[@@deriving yojson_of]
(** application_configuration__environment_properties *)

type application_configuration__flink_application_configuration__checkpoint_configuration = {
  checkpoint_interval : float prop option; [@option]
      (** checkpoint_interval *)
  checkpointing_enabled : bool prop option; [@option]
      (** checkpointing_enabled *)
  configuration_type : string prop;  (** configuration_type *)
  min_pause_between_checkpoints : float prop option; [@option]
      (** min_pause_between_checkpoints *)
}
[@@deriving yojson_of]
(** application_configuration__flink_application_configuration__checkpoint_configuration *)

type application_configuration__flink_application_configuration__monitoring_configuration = {
  configuration_type : string prop;  (** configuration_type *)
  log_level : string prop option; [@option]  (** log_level *)
  metrics_level : string prop option; [@option]  (** metrics_level *)
}
[@@deriving yojson_of]
(** application_configuration__flink_application_configuration__monitoring_configuration *)

type application_configuration__flink_application_configuration__parallelism_configuration = {
  auto_scaling_enabled : bool prop option; [@option]
      (** auto_scaling_enabled *)
  configuration_type : string prop;  (** configuration_type *)
  parallelism : float prop option; [@option]  (** parallelism *)
  parallelism_per_kpu : float prop option; [@option]
      (** parallelism_per_kpu *)
}
[@@deriving yojson_of]
(** application_configuration__flink_application_configuration__parallelism_configuration *)

type application_configuration__flink_application_configuration = {
  checkpoint_configuration :
    application_configuration__flink_application_configuration__checkpoint_configuration
    list;
  monitoring_configuration :
    application_configuration__flink_application_configuration__monitoring_configuration
    list;
  parallelism_configuration :
    application_configuration__flink_application_configuration__parallelism_configuration
    list;
}
[@@deriving yojson_of]
(** application_configuration__flink_application_configuration *)

type application_configuration__run_configuration__application_restore_configuration = {
  application_restore_type : string prop option; [@option]
      (** application_restore_type *)
  snapshot_name : string prop option; [@option]  (** snapshot_name *)
}
[@@deriving yojson_of]
(** application_configuration__run_configuration__application_restore_configuration *)

type application_configuration__run_configuration__flink_run_configuration = {
  allow_non_restored_state : bool prop option; [@option]
      (** allow_non_restored_state *)
}
[@@deriving yojson_of]
(** application_configuration__run_configuration__flink_run_configuration *)

type application_configuration__run_configuration = {
  application_restore_configuration :
    application_configuration__run_configuration__application_restore_configuration
    list;
  flink_run_configuration :
    application_configuration__run_configuration__flink_run_configuration
    list;
}
[@@deriving yojson_of]
(** application_configuration__run_configuration *)

type application_configuration__sql_application_configuration__input__input_parallelism = {
  count : float prop option; [@option]  (** count *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_parallelism *)

type application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor *)

type application_configuration__sql_application_configuration__input__input_processing_configuration = {
  input_lambda_processor :
    application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_processing_configuration *)

type application_configuration__sql_application_configuration__input__input_schema__record_column = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema__record_column *)

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters *)

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters *)

type application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
  json_mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters *)

type application_configuration__sql_application_configuration__input__input_schema__record_format = {
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema__record_format *)

type application_configuration__sql_application_configuration__input__input_schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_column :
    application_configuration__sql_application_configuration__input__input_schema__record_column
    list;
  record_format :
    application_configuration__sql_application_configuration__input__input_schema__record_format
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_schema *)

type application_configuration__sql_application_configuration__input__input_starting_position_configuration = {
  input_starting_position : string prop option; [@option]
      (** input_starting_position *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__input_starting_position_configuration *)

type application_configuration__sql_application_configuration__input__kinesis_firehose_input = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__kinesis_firehose_input *)

type application_configuration__sql_application_configuration__input__kinesis_streams_input = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input__kinesis_streams_input *)

type application_configuration__sql_application_configuration__input = {
  name_prefix : string prop;  (** name_prefix *)
  input_parallelism :
    application_configuration__sql_application_configuration__input__input_parallelism
    list;
  input_processing_configuration :
    application_configuration__sql_application_configuration__input__input_processing_configuration
    list;
  input_schema :
    application_configuration__sql_application_configuration__input__input_schema
    list;
  input_starting_position_configuration :
    application_configuration__sql_application_configuration__input__input_starting_position_configuration
    list;
  kinesis_firehose_input :
    application_configuration__sql_application_configuration__input__kinesis_firehose_input
    list;
  kinesis_streams_input :
    application_configuration__sql_application_configuration__input__kinesis_streams_input
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__input *)

type application_configuration__sql_application_configuration__output__destination_schema = {
  record_format_type : string prop;  (** record_format_type *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__output__destination_schema *)

type application_configuration__sql_application_configuration__output__kinesis_firehose_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__output__kinesis_firehose_output *)

type application_configuration__sql_application_configuration__output__kinesis_streams_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__output__kinesis_streams_output *)

type application_configuration__sql_application_configuration__output__lambda_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__output__lambda_output *)

type application_configuration__sql_application_configuration__output = {
  name : string prop;  (** name *)
  destination_schema :
    application_configuration__sql_application_configuration__output__destination_schema
    list;
  kinesis_firehose_output :
    application_configuration__sql_application_configuration__output__kinesis_firehose_output
    list;
  kinesis_streams_output :
    application_configuration__sql_application_configuration__output__kinesis_streams_output
    list;
  lambda_output :
    application_configuration__sql_application_configuration__output__lambda_output
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__output *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
  json_mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format = {
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format *)

type application_configuration__sql_application_configuration__reference_data_source__reference_schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_column :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    list;
  record_format :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__reference_schema *)

type application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source *)

type application_configuration__sql_application_configuration__reference_data_source = {
  table_name : string prop;  (** table_name *)
  reference_schema :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema
    list;
  s3_reference_data_source :
    application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration__reference_data_source *)

type application_configuration__sql_application_configuration = {
  input :
    application_configuration__sql_application_configuration__input
    list;
  output :
    application_configuration__sql_application_configuration__output
    list;
  reference_data_source :
    application_configuration__sql_application_configuration__reference_data_source
    list;
}
[@@deriving yojson_of]
(** application_configuration__sql_application_configuration *)

type application_configuration__vpc_configuration = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** application_configuration__vpc_configuration *)

type application_configuration = {
  application_code_configuration :
    application_configuration__application_code_configuration list;
  application_snapshot_configuration :
    application_configuration__application_snapshot_configuration
    list;
  environment_properties :
    application_configuration__environment_properties list;
  flink_application_configuration :
    application_configuration__flink_application_configuration list;
  run_configuration :
    application_configuration__run_configuration list;
  sql_application_configuration :
    application_configuration__sql_application_configuration list;
  vpc_configuration :
    application_configuration__vpc_configuration list;
}
[@@deriving yojson_of]
(** application_configuration *)

type cloudwatch_logging_options = {
  log_stream_arn : string prop;  (** log_stream_arn *)
}
[@@deriving yojson_of]
(** cloudwatch_logging_options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kinesisanalyticsv2_application = {
  description : string prop option; [@option]  (** description *)
  force_stop : bool prop option; [@option]  (** force_stop *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  runtime_environment : string prop;  (** runtime_environment *)
  service_execution_role : string prop;
      (** service_execution_role *)
  start_application : bool prop option; [@option]
      (** start_application *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  application_configuration : application_configuration list;
  cloudwatch_logging_options : cloudwatch_logging_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application *)

let application_configuration__application_code_configuration__code_content__s3_content_location
    ?object_version ~bucket_arn ~file_key () :
    application_configuration__application_code_configuration__code_content__s3_content_location
    =
  { bucket_arn; file_key; object_version }

let application_configuration__application_code_configuration__code_content
    ?text_content ~s3_content_location () :
    application_configuration__application_code_configuration__code_content
    =
  { text_content; s3_content_location }

let application_configuration__application_code_configuration
    ~code_content_type ~code_content () :
    application_configuration__application_code_configuration =
  { code_content_type; code_content }

let application_configuration__application_snapshot_configuration
    ~snapshots_enabled () :
    application_configuration__application_snapshot_configuration =
  { snapshots_enabled }

let application_configuration__environment_properties__property_group
    ~property_group_id ~property_map () :
    application_configuration__environment_properties__property_group
    =
  { property_group_id; property_map }

let application_configuration__environment_properties ~property_group
    () : application_configuration__environment_properties =
  { property_group }

let application_configuration__flink_application_configuration__checkpoint_configuration
    ?checkpoint_interval ?checkpointing_enabled
    ?min_pause_between_checkpoints ~configuration_type () :
    application_configuration__flink_application_configuration__checkpoint_configuration
    =
  {
    checkpoint_interval;
    checkpointing_enabled;
    configuration_type;
    min_pause_between_checkpoints;
  }

let application_configuration__flink_application_configuration__monitoring_configuration
    ?log_level ?metrics_level ~configuration_type () :
    application_configuration__flink_application_configuration__monitoring_configuration
    =
  { configuration_type; log_level; metrics_level }

let application_configuration__flink_application_configuration__parallelism_configuration
    ?auto_scaling_enabled ?parallelism ?parallelism_per_kpu
    ~configuration_type () :
    application_configuration__flink_application_configuration__parallelism_configuration
    =
  {
    auto_scaling_enabled;
    configuration_type;
    parallelism;
    parallelism_per_kpu;
  }

let application_configuration__flink_application_configuration
    ~checkpoint_configuration ~monitoring_configuration
    ~parallelism_configuration () :
    application_configuration__flink_application_configuration =
  {
    checkpoint_configuration;
    monitoring_configuration;
    parallelism_configuration;
  }

let application_configuration__run_configuration__application_restore_configuration
    ?application_restore_type ?snapshot_name () :
    application_configuration__run_configuration__application_restore_configuration
    =
  { application_restore_type; snapshot_name }

let application_configuration__run_configuration__flink_run_configuration
    ?allow_non_restored_state () :
    application_configuration__run_configuration__flink_run_configuration
    =
  { allow_non_restored_state }

let application_configuration__run_configuration
    ~application_restore_configuration ~flink_run_configuration () :
    application_configuration__run_configuration =
  { application_restore_configuration; flink_run_configuration }

let application_configuration__sql_application_configuration__input__input_parallelism
    ?count () :
    application_configuration__sql_application_configuration__input__input_parallelism
    =
  { count }

let application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input__input_processing_configuration
    ~input_lambda_processor () :
    application_configuration__sql_application_configuration__input__input_processing_configuration
    =
  { input_lambda_processor }

let application_configuration__sql_application_configuration__input__input_schema__record_column
    ?mapping ~name ~sql_type () :
    application_configuration__sql_application_configuration__input__input_schema__record_column
    =
  { mapping; name; sql_type }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    ~record_column_delimiter ~record_row_delimiter () :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    =
  { record_column_delimiter; record_row_delimiter }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    ~record_row_path () :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    =
  { record_row_path }

let application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    ~csv_mapping_parameters ~json_mapping_parameters () :
    application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    =
  { csv_mapping_parameters; json_mapping_parameters }

let application_configuration__sql_application_configuration__input__input_schema__record_format
    ~record_format_type ~mapping_parameters () :
    application_configuration__sql_application_configuration__input__input_schema__record_format
    =
  { record_format_type; mapping_parameters }

let application_configuration__sql_application_configuration__input__input_schema
    ?record_encoding ~record_column ~record_format () :
    application_configuration__sql_application_configuration__input__input_schema
    =
  { record_encoding; record_column; record_format }

let application_configuration__sql_application_configuration__input__input_starting_position_configuration
    ?input_starting_position () :
    application_configuration__sql_application_configuration__input__input_starting_position_configuration
    =
  { input_starting_position }

let application_configuration__sql_application_configuration__input__kinesis_firehose_input
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__kinesis_firehose_input
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input__kinesis_streams_input
    ~resource_arn () :
    application_configuration__sql_application_configuration__input__kinesis_streams_input
    =
  { resource_arn }

let application_configuration__sql_application_configuration__input
    ~name_prefix ~input_parallelism ~input_processing_configuration
    ~input_schema ~input_starting_position_configuration
    ~kinesis_firehose_input ~kinesis_streams_input () :
    application_configuration__sql_application_configuration__input =
  {
    name_prefix;
    input_parallelism;
    input_processing_configuration;
    input_schema;
    input_starting_position_configuration;
    kinesis_firehose_input;
    kinesis_streams_input;
  }

let application_configuration__sql_application_configuration__output__destination_schema
    ~record_format_type () :
    application_configuration__sql_application_configuration__output__destination_schema
    =
  { record_format_type }

let application_configuration__sql_application_configuration__output__kinesis_firehose_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__kinesis_firehose_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output__kinesis_streams_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__kinesis_streams_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output__lambda_output
    ~resource_arn () :
    application_configuration__sql_application_configuration__output__lambda_output
    =
  { resource_arn }

let application_configuration__sql_application_configuration__output
    ~name ~destination_schema ~kinesis_firehose_output
    ~kinesis_streams_output ~lambda_output () :
    application_configuration__sql_application_configuration__output
    =
  {
    name;
    destination_schema;
    kinesis_firehose_output;
    kinesis_streams_output;
    lambda_output;
  }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    ?mapping ~name ~sql_type () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    =
  { mapping; name; sql_type }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    ~record_column_delimiter ~record_row_delimiter () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    =
  { record_column_delimiter; record_row_delimiter }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    ~record_row_path () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    =
  { record_row_path }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    ~csv_mapping_parameters ~json_mapping_parameters () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    =
  { csv_mapping_parameters; json_mapping_parameters }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    ~record_format_type ~mapping_parameters () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    =
  { record_format_type; mapping_parameters }

let application_configuration__sql_application_configuration__reference_data_source__reference_schema
    ?record_encoding ~record_column ~record_format () :
    application_configuration__sql_application_configuration__reference_data_source__reference_schema
    =
  { record_encoding; record_column; record_format }

let application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    ~bucket_arn ~file_key () :
    application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    =
  { bucket_arn; file_key }

let application_configuration__sql_application_configuration__reference_data_source
    ~table_name ~reference_schema ~s3_reference_data_source () :
    application_configuration__sql_application_configuration__reference_data_source
    =
  { table_name; reference_schema; s3_reference_data_source }

let application_configuration__sql_application_configuration ~input
    ~output ~reference_data_source () :
    application_configuration__sql_application_configuration =
  { input; output; reference_data_source }

let application_configuration__vpc_configuration ~security_group_ids
    ~subnet_ids () : application_configuration__vpc_configuration =
  { security_group_ids; subnet_ids }

let application_configuration ~application_code_configuration
    ~application_snapshot_configuration ~environment_properties
    ~flink_application_configuration ~run_configuration
    ~sql_application_configuration ~vpc_configuration () :
    application_configuration =
  {
    application_code_configuration;
    application_snapshot_configuration;
    environment_properties;
    flink_application_configuration;
    run_configuration;
    sql_application_configuration;
    vpc_configuration;
  }

let cloudwatch_logging_options ~log_stream_arn () :
    cloudwatch_logging_options =
  { log_stream_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesisanalyticsv2_application ?description ?force_stop ?id
    ?start_application ?tags ?tags_all ?timeouts ~name
    ~runtime_environment ~service_execution_role
    ~application_configuration ~cloudwatch_logging_options () :
    aws_kinesisanalyticsv2_application =
  {
    description;
    force_stop;
    id;
    name;
    runtime_environment;
    service_execution_role;
    start_application;
    tags;
    tags_all;
    application_configuration;
    cloudwatch_logging_options;
    timeouts;
  }

type t = {
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

let make ?description ?force_stop ?id ?start_application ?tags
    ?tags_all ?timeouts ~name ~runtime_environment
    ~service_execution_role ~application_configuration
    ~cloudwatch_logging_options __id =
  let __type = "aws_kinesisanalyticsv2_application" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       create_timestamp =
         Prop.computed __type __id "create_timestamp";
       description = Prop.computed __type __id "description";
       force_stop = Prop.computed __type __id "force_stop";
       id = Prop.computed __type __id "id";
       last_update_timestamp =
         Prop.computed __type __id "last_update_timestamp";
       name = Prop.computed __type __id "name";
       runtime_environment =
         Prop.computed __type __id "runtime_environment";
       service_execution_role =
         Prop.computed __type __id "service_execution_role";
       start_application =
         Prop.computed __type __id "start_application";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesisanalyticsv2_application
        (aws_kinesisanalyticsv2_application ?description ?force_stop
           ?id ?start_application ?tags ?tags_all ?timeouts ~name
           ~runtime_environment ~service_execution_role
           ~application_configuration ~cloudwatch_logging_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_stop ?id
    ?start_application ?tags ?tags_all ?timeouts ~name
    ~runtime_environment ~service_execution_role
    ~application_configuration ~cloudwatch_logging_options __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_stop ?id ?start_application ?tags
      ?tags_all ?timeouts ~name ~runtime_environment
      ~service_execution_role ~application_configuration
      ~cloudwatch_logging_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
