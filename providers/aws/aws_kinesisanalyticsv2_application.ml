(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content__s3_content_location = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  object_version : string prop option; [@option]
      (** object_version *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content__s3_content_location *)

type aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content = {
  text_content : string prop option; [@option]  (** text_content *)
  s3_content_location :
    aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content__s3_content_location
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content *)

type aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration = {
  code_content_type : string prop;  (** code_content_type *)
  code_content :
    aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration__code_content
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__application_snapshot_configuration = {
  snapshots_enabled : bool prop;  (** snapshots_enabled *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__application_snapshot_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__environment_properties__property_group = {
  property_group_id : string prop;  (** property_group_id *)
  property_map : (string * string prop) list;  (** property_map *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__environment_properties__property_group *)

type aws_kinesisanalyticsv2_application__application_configuration__environment_properties = {
  property_group :
    aws_kinesisanalyticsv2_application__application_configuration__environment_properties__property_group
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__environment_properties *)

type aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__checkpoint_configuration = {
  checkpoint_interval : float prop option; [@option]
      (** checkpoint_interval *)
  checkpointing_enabled : bool prop option; [@option]
      (** checkpointing_enabled *)
  configuration_type : string prop;  (** configuration_type *)
  min_pause_between_checkpoints : float prop option; [@option]
      (** min_pause_between_checkpoints *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__checkpoint_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__monitoring_configuration = {
  configuration_type : string prop;  (** configuration_type *)
  log_level : string prop option; [@option]  (** log_level *)
  metrics_level : string prop option; [@option]  (** metrics_level *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__monitoring_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__parallelism_configuration = {
  auto_scaling_enabled : bool prop option; [@option]
      (** auto_scaling_enabled *)
  configuration_type : string prop;  (** configuration_type *)
  parallelism : float prop option; [@option]  (** parallelism *)
  parallelism_per_kpu : float prop option; [@option]
      (** parallelism_per_kpu *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__parallelism_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration = {
  checkpoint_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__checkpoint_configuration
    list;
  monitoring_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__monitoring_configuration
    list;
  parallelism_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration__parallelism_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__run_configuration__application_restore_configuration = {
  application_restore_type : string prop option; [@option]
      (** application_restore_type *)
  snapshot_name : string prop option; [@option]  (** snapshot_name *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__run_configuration__application_restore_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__run_configuration__flink_run_configuration = {
  allow_non_restored_state : bool prop option; [@option]
      (** allow_non_restored_state *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__run_configuration__flink_run_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__run_configuration = {
  application_restore_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__run_configuration__application_restore_configuration
    list;
  flink_run_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__run_configuration__flink_run_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__run_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_parallelism = {
  count : float prop option; [@option]  (** count *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_parallelism *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration = {
  input_lambda_processor :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration__input_lambda_processor
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_column = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_column *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
  json_mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format = {
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_column :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_column
    list;
  record_format :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema__record_format
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_starting_position_configuration = {
  input_starting_position : string prop option; [@option]
      (** input_starting_position *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_starting_position_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_firehose_input = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_firehose_input *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_streams_input = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_streams_input *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input = {
  in_app_stream_names : string prop list;  (** in_app_stream_names *)
  input_id : string prop;  (** input_id *)
  name_prefix : string prop;  (** name_prefix *)
  input_parallelism :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_parallelism
    list;
  input_processing_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_processing_configuration
    list;
  input_schema :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_schema
    list;
  input_starting_position_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__input_starting_position_configuration
    list;
  kinesis_firehose_input :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_firehose_input
    list;
  kinesis_streams_input :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input__kinesis_streams_input
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__destination_schema = {
  record_format_type : string prop;  (** record_format_type *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__destination_schema *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_firehose_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_firehose_output *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_streams_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_streams_output *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__lambda_output = {
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__lambda_output *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output = {
  name : string prop;  (** name *)
  output_id : string prop;  (** output_id *)
  destination_schema :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__destination_schema
    list;
  kinesis_firehose_output :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_firehose_output
    list;
  kinesis_streams_output :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__kinesis_streams_output
    list;
  lambda_output :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output__lambda_output
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column = {
  mapping : string prop option; [@option]  (** mapping *)
  name : string prop;  (** name *)
  sql_type : string prop;  (** sql_type *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters = {
  record_column_delimiter : string prop;
      (** record_column_delimiter *)
  record_row_delimiter : string prop;  (** record_row_delimiter *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters = {
  record_row_path : string prop;  (** record_row_path *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters = {
  csv_mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__csv_mapping_parameters
    list;
  json_mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters__json_mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format = {
  record_format_type : string prop;  (** record_format_type *)
  mapping_parameters :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format__mapping_parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema = {
  record_encoding : string prop option; [@option]
      (** record_encoding *)
  record_column :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_column
    list;
  record_format :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema__record_format
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source = {
  reference_id : string prop;  (** reference_id *)
  table_name : string prop;  (** table_name *)
  reference_schema :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__reference_schema
    list;
  s3_reference_data_source :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source__s3_reference_data_source
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source *)

type aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration = {
  input :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__input
    list;
  output :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__output
    list;
  reference_data_source :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration__reference_data_source
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration__vpc_configuration = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_configuration_id : string prop;  (** vpc_configuration_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration__vpc_configuration *)

type aws_kinesisanalyticsv2_application__application_configuration = {
  application_code_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__application_code_configuration
    list;
  application_snapshot_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__application_snapshot_configuration
    list;
  environment_properties :
    aws_kinesisanalyticsv2_application__application_configuration__environment_properties
    list;
  flink_application_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__flink_application_configuration
    list;
  run_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__run_configuration
    list;
  sql_application_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__sql_application_configuration
    list;
  vpc_configuration :
    aws_kinesisanalyticsv2_application__application_configuration__vpc_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__application_configuration *)

type aws_kinesisanalyticsv2_application__cloudwatch_logging_options = {
  cloudwatch_logging_option_id : string prop;
      (** cloudwatch_logging_option_id *)
  log_stream_arn : string prop;  (** log_stream_arn *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__cloudwatch_logging_options *)

type aws_kinesisanalyticsv2_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application__timeouts *)

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
  application_configuration :
    aws_kinesisanalyticsv2_application__application_configuration
    list;
  cloudwatch_logging_options :
    aws_kinesisanalyticsv2_application__cloudwatch_logging_options
    list;
  timeouts : aws_kinesisanalyticsv2_application__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application *)

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

let aws_kinesisanalyticsv2_application ?description ?force_stop ?id
    ?start_application ?tags ?tags_all ?timeouts ~name
    ~runtime_environment ~service_execution_role
    ~application_configuration ~cloudwatch_logging_options
    __resource_id =
  let __resource_type = "aws_kinesisanalyticsv2_application" in
  let __resource =
    ({
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
      : aws_kinesisanalyticsv2_application)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesisanalyticsv2_application __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       create_timestamp =
         Prop.computed __resource_type __resource_id
           "create_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_stop =
         Prop.computed __resource_type __resource_id "force_stop";
       id = Prop.computed __resource_type __resource_id "id";
       last_update_timestamp =
         Prop.computed __resource_type __resource_id
           "last_update_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       runtime_environment =
         Prop.computed __resource_type __resource_id
           "runtime_environment";
       service_execution_role =
         Prop.computed __resource_type __resource_id
           "service_execution_role";
       start_application =
         Prop.computed __resource_type __resource_id
           "start_application";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
