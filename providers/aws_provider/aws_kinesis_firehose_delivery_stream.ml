(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__vpc_config = {
  role_arn : string;  (** role_arn *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__vpc_config *)

type aws_kinesis_firehose_delivery_stream__elasticsearch_configuration = {
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  cluster_endpoint : string option; [@option]
      (** cluster_endpoint *)
  domain_arn : string option; [@option]  (** domain_arn *)
  index_name : string;  (** index_name *)
  index_rotation_period : string option; [@option]
      (** index_rotation_period *)
  retry_duration : float option; [@option]  (** retry_duration *)
  role_arn : string;  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  type_name : string option; [@option]  (** type_name *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__processing_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__s3_configuration
    list;
  vpc_config :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration__vpc_config
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__elasticsearch_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de = {
  timestamp_formats : string list option; [@option]
      (** timestamp_formats *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de = {
  case_insensitive : bool option; [@option]  (** case_insensitive *)
  column_to_json_key_mappings : (string * string) list option;
      [@option]
      (** column_to_json_key_mappings *)
  convert_dots_in_json_keys_to_underscores : bool option; [@option]
      (** convert_dots_in_json_keys_to_underscores *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer = {
  hive_json_ser_de :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    list;
  open_x_json_ser_de :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration = {
  deserializer :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de = {
  block_size_bytes : float option; [@option]  (** block_size_bytes *)
  bloom_filter_columns : string list option; [@option]
      (** bloom_filter_columns *)
  bloom_filter_false_positive_probability : float option; [@option]
      (** bloom_filter_false_positive_probability *)
  compression : string option; [@option]  (** compression *)
  dictionary_key_threshold : float option; [@option]
      (** dictionary_key_threshold *)
  enable_padding : bool option; [@option]  (** enable_padding *)
  format_version : string option; [@option]  (** format_version *)
  padding_tolerance : float option; [@option]
      (** padding_tolerance *)
  row_index_stride : float option; [@option]  (** row_index_stride *)
  stripe_size_bytes : float option; [@option]
      (** stripe_size_bytes *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de = {
  block_size_bytes : float option; [@option]  (** block_size_bytes *)
  compression : string option; [@option]  (** compression *)
  enable_dictionary_compression : bool option; [@option]
      (** enable_dictionary_compression *)
  max_padding_bytes : float option; [@option]
      (** max_padding_bytes *)
  page_size_bytes : float option; [@option]  (** page_size_bytes *)
  writer_version : string option; [@option]  (** writer_version *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer = {
  orc_ser_de :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    list;
  parquet_ser_de :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration = {
  serializer :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__schema_configuration = {
  catalog_id : string option; [@option]  (** catalog_id *)
  database_name : string;  (** database_name *)
  region : string option; [@option]  (** region *)
  role_arn : string;  (** role_arn *)
  table_name : string;  (** table_name *)
  version_id : string option; [@option]  (** version_id *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__schema_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  input_format_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    list;
  output_format_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    list;
  schema_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__dynamic_partitioning_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  retry_duration : float option; [@option]  (** retry_duration *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__dynamic_partitioning_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration *)

type aws_kinesis_firehose_delivery_stream__extended_s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  custom_time_zone : string option; [@option]
      (** custom_time_zone *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  file_extension : string option; [@option]  (** file_extension *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__cloudwatch_logging_options
    list;
  data_format_conversion_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__data_format_conversion_configuration
    list;
  dynamic_partitioning_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__dynamic_partitioning_configuration
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__processing_configuration
    list;
  s3_backup_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration__s3_backup_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__extended_s3_configuration *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration__common_attributes = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration__common_attributes *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration = {
  content_encoding : string option; [@option]
      (** content_encoding *)
  common_attributes :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration__common_attributes
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__http_endpoint_configuration = {
  access_key : string option; [@option]  (** access_key *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  name : string option; [@option]  (** name *)
  retry_duration : float option; [@option]  (** retry_duration *)
  role_arn : string option; [@option]  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  url : string;  (** url *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__processing_configuration
    list;
  request_configuration :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__request_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration__s3_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__http_endpoint_configuration *)

type aws_kinesis_firehose_delivery_stream__kinesis_source_configuration = {
  kinesis_stream_arn : string;  (** kinesis_stream_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__kinesis_source_configuration *)

type aws_kinesis_firehose_delivery_stream__msk_source_configuration__authentication_configuration = {
  connectivity : string;  (** connectivity *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__msk_source_configuration__authentication_configuration *)

type aws_kinesis_firehose_delivery_stream__msk_source_configuration = {
  msk_cluster_arn : string;  (** msk_cluster_arn *)
  topic_name : string;  (** topic_name *)
  authentication_configuration :
    aws_kinesis_firehose_delivery_stream__msk_source_configuration__authentication_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__msk_source_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__document_id_options = {
  default_document_id_format : string;
      (** default_document_id_format *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__document_id_options *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration__vpc_config = {
  role_arn : string;  (** role_arn *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration__vpc_config *)

type aws_kinesis_firehose_delivery_stream__opensearch_configuration = {
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  cluster_endpoint : string option; [@option]
      (** cluster_endpoint *)
  domain_arn : string option; [@option]  (** domain_arn *)
  index_name : string;  (** index_name *)
  index_rotation_period : string option; [@option]
      (** index_rotation_period *)
  retry_duration : float option; [@option]  (** retry_duration *)
  role_arn : string;  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  type_name : string option; [@option]  (** type_name *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__cloudwatch_logging_options
    list;
  document_id_options :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__document_id_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__processing_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__s3_configuration
    list;
  vpc_config :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration__vpc_config
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearch_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__vpc_config = {
  role_arn : string;  (** role_arn *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__vpc_config *)

type aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration = {
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  collection_endpoint : string;  (** collection_endpoint *)
  index_name : string;  (** index_name *)
  retry_duration : float option; [@option]  (** retry_duration *)
  role_arn : string;  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__processing_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__s3_configuration
    list;
  vpc_config :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration__vpc_config
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__redshift_configuration = {
  cluster_jdbcurl : string;  (** cluster_jdbcurl *)
  copy_options : string option; [@option]  (** copy_options *)
  data_table_columns : string option; [@option]
      (** data_table_columns *)
  data_table_name : string;  (** data_table_name *)
  password : string;  (** password *)
  retry_duration : float option; [@option]  (** retry_duration *)
  role_arn : string;  (** role_arn *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  username : string;  (** username *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__processing_configuration
    list;
  s3_backup_configuration :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_backup_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__redshift_configuration__s3_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__redshift_configuration *)

type aws_kinesis_firehose_delivery_stream__server_side_encryption = {
  enabled : bool option; [@option]  (** enabled *)
  key_arn : string option; [@option]  (** key_arn *)
  key_type : string option; [@option]  (** key_type *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__server_side_encryption *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors__parameters = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors__parameters *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  processors :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool option; [@option]  (** enabled *)
  log_group_name : string option; [@option]  (** log_group_name *)
  log_stream_name : string option; [@option]  (** log_stream_name *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration__cloudwatch_logging_options *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration = {
  bucket_arn : string;  (** bucket_arn *)
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  compression_format : string option; [@option]
      (** compression_format *)
  error_output_prefix : string option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  role_arn : string;  (** role_arn *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration *)

type aws_kinesis_firehose_delivery_stream__splunk_configuration = {
  buffering_interval : float option; [@option]
      (** buffering_interval *)
  buffering_size : float option; [@option]  (** buffering_size *)
  hec_acknowledgment_timeout : float option; [@option]
      (** hec_acknowledgment_timeout *)
  hec_endpoint : string;  (** hec_endpoint *)
  hec_endpoint_type : string option; [@option]
      (** hec_endpoint_type *)
  hec_token : string;  (** hec_token *)
  retry_duration : float option; [@option]  (** retry_duration *)
  s3_backup_mode : string option; [@option]  (** s3_backup_mode *)
  cloudwatch_logging_options :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__processing_configuration
    list;
  s3_configuration :
    aws_kinesis_firehose_delivery_stream__splunk_configuration__s3_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__splunk_configuration *)

type aws_kinesis_firehose_delivery_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream__timeouts *)

type aws_kinesis_firehose_delivery_stream = {
  arn : string option; [@option]  (** arn *)
  destination : string;  (** destination *)
  destination_id : string option; [@option]  (** destination_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  version_id : string option; [@option]  (** version_id *)
  elasticsearch_configuration :
    aws_kinesis_firehose_delivery_stream__elasticsearch_configuration
    list;
  extended_s3_configuration :
    aws_kinesis_firehose_delivery_stream__extended_s3_configuration
    list;
  http_endpoint_configuration :
    aws_kinesis_firehose_delivery_stream__http_endpoint_configuration
    list;
  kinesis_source_configuration :
    aws_kinesis_firehose_delivery_stream__kinesis_source_configuration
    list;
  msk_source_configuration :
    aws_kinesis_firehose_delivery_stream__msk_source_configuration
    list;
  opensearch_configuration :
    aws_kinesis_firehose_delivery_stream__opensearch_configuration
    list;
  opensearchserverless_configuration :
    aws_kinesis_firehose_delivery_stream__opensearchserverless_configuration
    list;
  redshift_configuration :
    aws_kinesis_firehose_delivery_stream__redshift_configuration list;
  server_side_encryption :
    aws_kinesis_firehose_delivery_stream__server_side_encryption list;
  splunk_configuration :
    aws_kinesis_firehose_delivery_stream__splunk_configuration list;
  timeouts : aws_kinesis_firehose_delivery_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream *)

let aws_kinesis_firehose_delivery_stream ?arn ?destination_id ?id
    ?tags ?tags_all ?version_id ?timeouts ~destination ~name
    ~elasticsearch_configuration ~extended_s3_configuration
    ~http_endpoint_configuration ~kinesis_source_configuration
    ~msk_source_configuration ~opensearch_configuration
    ~opensearchserverless_configuration ~redshift_configuration
    ~server_side_encryption ~splunk_configuration __resource_id =
  let __resource_type = "aws_kinesis_firehose_delivery_stream" in
  let __resource =
    {
      arn;
      destination;
      destination_id;
      id;
      name;
      tags;
      tags_all;
      version_id;
      elasticsearch_configuration;
      extended_s3_configuration;
      http_endpoint_configuration;
      kinesis_source_configuration;
      msk_source_configuration;
      opensearch_configuration;
      opensearchserverless_configuration;
      redshift_configuration;
      server_side_encryption;
      splunk_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_firehose_delivery_stream __resource);
  ()
