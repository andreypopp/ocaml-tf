(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type elasticsearch_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** elasticsearch_configuration__cloudwatch_logging_options *)

type elasticsearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** elasticsearch_configuration__processing_configuration__processors__parameters *)

type elasticsearch_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    elasticsearch_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** elasticsearch_configuration__processing_configuration__processors *)

type elasticsearch_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    elasticsearch_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** elasticsearch_configuration__processing_configuration *)

type elasticsearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** elasticsearch_configuration__s3_configuration__cloudwatch_logging_options *)

type elasticsearch_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** elasticsearch_configuration__s3_configuration *)

type elasticsearch_configuration__vpc_config = {
  role_arn : string prop;  (** role_arn *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** elasticsearch_configuration__vpc_config *)

type elasticsearch_configuration = {
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  cluster_endpoint : string prop option; [@option]
      (** cluster_endpoint *)
  domain_arn : string prop option; [@option]  (** domain_arn *)
  index_name : string prop;  (** index_name *)
  index_rotation_period : string prop option; [@option]
      (** index_rotation_period *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  role_arn : string prop;  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  type_name : string prop option; [@option]  (** type_name *)
  cloudwatch_logging_options :
    elasticsearch_configuration__cloudwatch_logging_options list;
  processing_configuration :
    elasticsearch_configuration__processing_configuration list;
  s3_configuration :
    elasticsearch_configuration__s3_configuration list;
  vpc_config : elasticsearch_configuration__vpc_config list;
}
[@@deriving yojson_of]
(** elasticsearch_configuration *)

type extended_s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__cloudwatch_logging_options *)

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de = {
  timestamp_formats : string prop list option; [@option]
      (** timestamp_formats *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de *)

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de = {
  case_insensitive : bool prop option; [@option]
      (** case_insensitive *)
  column_to_json_key_mappings : (string * string prop) list option;
      [@option]
      (** column_to_json_key_mappings *)
  convert_dots_in_json_keys_to_underscores : bool prop option;
      [@option]
      (** convert_dots_in_json_keys_to_underscores *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de *)

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer = {
  hive_json_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    list;
  open_x_json_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer *)

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration = {
  deserializer :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__input_format_configuration *)

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de = {
  block_size_bytes : float prop option; [@option]
      (** block_size_bytes *)
  bloom_filter_columns : string prop list option; [@option]
      (** bloom_filter_columns *)
  bloom_filter_false_positive_probability : float prop option;
      [@option]
      (** bloom_filter_false_positive_probability *)
  compression : string prop option; [@option]  (** compression *)
  dictionary_key_threshold : float prop option; [@option]
      (** dictionary_key_threshold *)
  enable_padding : bool prop option; [@option]  (** enable_padding *)
  format_version : string prop option; [@option]
      (** format_version *)
  padding_tolerance : float prop option; [@option]
      (** padding_tolerance *)
  row_index_stride : float prop option; [@option]
      (** row_index_stride *)
  stripe_size_bytes : float prop option; [@option]
      (** stripe_size_bytes *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de *)

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de = {
  block_size_bytes : float prop option; [@option]
      (** block_size_bytes *)
  compression : string prop option; [@option]  (** compression *)
  enable_dictionary_compression : bool prop option; [@option]
      (** enable_dictionary_compression *)
  max_padding_bytes : float prop option; [@option]
      (** max_padding_bytes *)
  page_size_bytes : float prop option; [@option]
      (** page_size_bytes *)
  writer_version : string prop option; [@option]
      (** writer_version *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de *)

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer = {
  orc_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    list;
  parquet_ser_de :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer *)

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration = {
  serializer :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__output_format_configuration *)

type extended_s3_configuration__data_format_conversion_configuration__schema_configuration = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  region : string prop option; [@option]  (** region *)
  role_arn : string prop;  (** role_arn *)
  table_name : string prop;  (** table_name *)
  version_id : string prop option; [@option]  (** version_id *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration__schema_configuration *)

type extended_s3_configuration__data_format_conversion_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  input_format_configuration :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    list;
  output_format_configuration :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    list;
  schema_configuration :
    extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__data_format_conversion_configuration *)

type extended_s3_configuration__dynamic_partitioning_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  retry_duration : float prop option; [@option]  (** retry_duration *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__dynamic_partitioning_configuration *)

type extended_s3_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__processing_configuration__processors__parameters *)

type extended_s3_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    extended_s3_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__processing_configuration__processors *)

type extended_s3_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    extended_s3_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__processing_configuration *)

type extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options *)

type extended_s3_configuration__s3_backup_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** extended_s3_configuration__s3_backup_configuration *)

type extended_s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  custom_time_zone : string prop option; [@option]
      (** custom_time_zone *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  file_extension : string prop option; [@option]
      (** file_extension *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  cloudwatch_logging_options :
    extended_s3_configuration__cloudwatch_logging_options list;
  data_format_conversion_configuration :
    extended_s3_configuration__data_format_conversion_configuration
    list;
  dynamic_partitioning_configuration :
    extended_s3_configuration__dynamic_partitioning_configuration
    list;
  processing_configuration :
    extended_s3_configuration__processing_configuration list;
  s3_backup_configuration :
    extended_s3_configuration__s3_backup_configuration list;
}
[@@deriving yojson_of]
(** extended_s3_configuration *)

type http_endpoint_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** http_endpoint_configuration__cloudwatch_logging_options *)

type http_endpoint_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** http_endpoint_configuration__processing_configuration__processors__parameters *)

type http_endpoint_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    http_endpoint_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** http_endpoint_configuration__processing_configuration__processors *)

type http_endpoint_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    http_endpoint_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** http_endpoint_configuration__processing_configuration *)

type http_endpoint_configuration__request_configuration__common_attributes = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** http_endpoint_configuration__request_configuration__common_attributes *)

type http_endpoint_configuration__request_configuration = {
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  common_attributes :
    http_endpoint_configuration__request_configuration__common_attributes
    list;
}
[@@deriving yojson_of]
(** http_endpoint_configuration__request_configuration *)

type http_endpoint_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** http_endpoint_configuration__s3_configuration__cloudwatch_logging_options *)

type http_endpoint_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** http_endpoint_configuration__s3_configuration *)

type http_endpoint_configuration = {
  access_key : string prop option; [@option]  (** access_key *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  name : string prop option; [@option]  (** name *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  role_arn : string prop option; [@option]  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  url : string prop;  (** url *)
  cloudwatch_logging_options :
    http_endpoint_configuration__cloudwatch_logging_options list;
  processing_configuration :
    http_endpoint_configuration__processing_configuration list;
  request_configuration :
    http_endpoint_configuration__request_configuration list;
  s3_configuration :
    http_endpoint_configuration__s3_configuration list;
}
[@@deriving yojson_of]
(** http_endpoint_configuration *)

type kinesis_source_configuration = {
  kinesis_stream_arn : string prop;  (** kinesis_stream_arn *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** kinesis_source_configuration *)

type msk_source_configuration__authentication_configuration = {
  connectivity : string prop;  (** connectivity *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** msk_source_configuration__authentication_configuration *)

type msk_source_configuration = {
  msk_cluster_arn : string prop;  (** msk_cluster_arn *)
  topic_name : string prop;  (** topic_name *)
  authentication_configuration :
    msk_source_configuration__authentication_configuration list;
}
[@@deriving yojson_of]
(** msk_source_configuration *)

type opensearch_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** opensearch_configuration__cloudwatch_logging_options *)

type opensearch_configuration__document_id_options = {
  default_document_id_format : string prop;
      (** default_document_id_format *)
}
[@@deriving yojson_of]
(** opensearch_configuration__document_id_options *)

type opensearch_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** opensearch_configuration__processing_configuration__processors__parameters *)

type opensearch_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    opensearch_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** opensearch_configuration__processing_configuration__processors *)

type opensearch_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    opensearch_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** opensearch_configuration__processing_configuration *)

type opensearch_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** opensearch_configuration__s3_configuration__cloudwatch_logging_options *)

type opensearch_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    opensearch_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** opensearch_configuration__s3_configuration *)

type opensearch_configuration__vpc_config = {
  role_arn : string prop;  (** role_arn *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** opensearch_configuration__vpc_config *)

type opensearch_configuration = {
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  cluster_endpoint : string prop option; [@option]
      (** cluster_endpoint *)
  domain_arn : string prop option; [@option]  (** domain_arn *)
  index_name : string prop;  (** index_name *)
  index_rotation_period : string prop option; [@option]
      (** index_rotation_period *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  role_arn : string prop;  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  type_name : string prop option; [@option]  (** type_name *)
  cloudwatch_logging_options :
    opensearch_configuration__cloudwatch_logging_options list;
  document_id_options :
    opensearch_configuration__document_id_options list;
  processing_configuration :
    opensearch_configuration__processing_configuration list;
  s3_configuration : opensearch_configuration__s3_configuration list;
  vpc_config : opensearch_configuration__vpc_config list;
}
[@@deriving yojson_of]
(** opensearch_configuration *)

type opensearchserverless_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__cloudwatch_logging_options *)

type opensearchserverless_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__processing_configuration__processors__parameters *)

type opensearchserverless_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    opensearchserverless_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__processing_configuration__processors *)

type opensearchserverless_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    opensearchserverless_configuration__processing_configuration__processors
    list;
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__processing_configuration *)

type opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options *)

type opensearchserverless_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__s3_configuration *)

type opensearchserverless_configuration__vpc_config = {
  role_arn : string prop;  (** role_arn *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** opensearchserverless_configuration__vpc_config *)

type opensearchserverless_configuration = {
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  collection_endpoint : string prop;  (** collection_endpoint *)
  index_name : string prop;  (** index_name *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  role_arn : string prop;  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  cloudwatch_logging_options :
    opensearchserverless_configuration__cloudwatch_logging_options
    list;
  processing_configuration :
    opensearchserverless_configuration__processing_configuration list;
  s3_configuration :
    opensearchserverless_configuration__s3_configuration list;
  vpc_config : opensearchserverless_configuration__vpc_config list;
}
[@@deriving yojson_of]
(** opensearchserverless_configuration *)

type redshift_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** redshift_configuration__cloudwatch_logging_options *)

type redshift_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** redshift_configuration__processing_configuration__processors__parameters *)

type redshift_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    redshift_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** redshift_configuration__processing_configuration__processors *)

type redshift_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    redshift_configuration__processing_configuration__processors list;
}
[@@deriving yojson_of]
(** redshift_configuration__processing_configuration *)

type redshift_configuration__s3_backup_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** redshift_configuration__s3_backup_configuration__cloudwatch_logging_options *)

type redshift_configuration__s3_backup_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** redshift_configuration__s3_backup_configuration *)

type redshift_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** redshift_configuration__s3_configuration__cloudwatch_logging_options *)

type redshift_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    redshift_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** redshift_configuration__s3_configuration *)

type redshift_configuration = {
  cluster_jdbcurl : string prop;  (** cluster_jdbcurl *)
  copy_options : string prop option; [@option]  (** copy_options *)
  data_table_columns : string prop option; [@option]
      (** data_table_columns *)
  data_table_name : string prop;  (** data_table_name *)
  password : string prop;  (** password *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  role_arn : string prop;  (** role_arn *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  username : string prop;  (** username *)
  cloudwatch_logging_options :
    redshift_configuration__cloudwatch_logging_options list;
  processing_configuration :
    redshift_configuration__processing_configuration list;
  s3_backup_configuration :
    redshift_configuration__s3_backup_configuration list;
  s3_configuration : redshift_configuration__s3_configuration list;
}
[@@deriving yojson_of]
(** redshift_configuration *)

type server_side_encryption = {
  enabled : bool prop option; [@option]  (** enabled *)
  key_arn : string prop option; [@option]  (** key_arn *)
  key_type : string prop option; [@option]  (** key_type *)
}
[@@deriving yojson_of]
(** server_side_encryption *)

type splunk_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** splunk_configuration__cloudwatch_logging_options *)

type splunk_configuration__processing_configuration__processors__parameters = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** splunk_configuration__processing_configuration__processors__parameters *)

type splunk_configuration__processing_configuration__processors = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    splunk_configuration__processing_configuration__processors__parameters
    list;
}
[@@deriving yojson_of]
(** splunk_configuration__processing_configuration__processors *)

type splunk_configuration__processing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  processors :
    splunk_configuration__processing_configuration__processors list;
}
[@@deriving yojson_of]
(** splunk_configuration__processing_configuration *)

type splunk_configuration__s3_configuration__cloudwatch_logging_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  log_stream_name : string prop option; [@option]
      (** log_stream_name *)
}
[@@deriving yojson_of]
(** splunk_configuration__s3_configuration__cloudwatch_logging_options *)

type splunk_configuration__s3_configuration = {
  bucket_arn : string prop;  (** bucket_arn *)
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  compression_format : string prop option; [@option]
      (** compression_format *)
  error_output_prefix : string prop option; [@option]
      (** error_output_prefix *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  role_arn : string prop;  (** role_arn *)
  cloudwatch_logging_options :
    splunk_configuration__s3_configuration__cloudwatch_logging_options
    list;
}
[@@deriving yojson_of]
(** splunk_configuration__s3_configuration *)

type splunk_configuration = {
  buffering_interval : float prop option; [@option]
      (** buffering_interval *)
  buffering_size : float prop option; [@option]
      (** buffering_size *)
  hec_acknowledgment_timeout : float prop option; [@option]
      (** hec_acknowledgment_timeout *)
  hec_endpoint : string prop;  (** hec_endpoint *)
  hec_endpoint_type : string prop option; [@option]
      (** hec_endpoint_type *)
  hec_token : string prop;  (** hec_token *)
  retry_duration : float prop option; [@option]
      (** retry_duration *)
  s3_backup_mode : string prop option; [@option]
      (** s3_backup_mode *)
  cloudwatch_logging_options :
    splunk_configuration__cloudwatch_logging_options list;
  processing_configuration :
    splunk_configuration__processing_configuration list;
  s3_configuration : splunk_configuration__s3_configuration list;
}
[@@deriving yojson_of]
(** splunk_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kinesis_firehose_delivery_stream = {
  arn : string prop option; [@option]  (** arn *)
  destination : string prop;  (** destination *)
  destination_id : string prop option; [@option]
      (** destination_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version_id : string prop option; [@option]  (** version_id *)
  elasticsearch_configuration : elasticsearch_configuration list;
  extended_s3_configuration : extended_s3_configuration list;
  http_endpoint_configuration : http_endpoint_configuration list;
  kinesis_source_configuration : kinesis_source_configuration list;
  msk_source_configuration : msk_source_configuration list;
  opensearch_configuration : opensearch_configuration list;
  opensearchserverless_configuration :
    opensearchserverless_configuration list;
  redshift_configuration : redshift_configuration list;
  server_side_encryption : server_side_encryption list;
  splunk_configuration : splunk_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_firehose_delivery_stream *)

let elasticsearch_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    elasticsearch_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let elasticsearch_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    elasticsearch_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let elasticsearch_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    elasticsearch_configuration__processing_configuration__processors
    =
  { type_; parameters }

let elasticsearch_configuration__processing_configuration ?enabled
    ~processors () :
    elasticsearch_configuration__processing_configuration =
  { enabled; processors }

let elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let elasticsearch_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    elasticsearch_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let elasticsearch_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    elasticsearch_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let elasticsearch_configuration ?buffering_interval ?buffering_size
    ?cluster_endpoint ?domain_arn ?index_rotation_period
    ?retry_duration ?s3_backup_mode ?type_name ~index_name ~role_arn
    ~cloudwatch_logging_options ~processing_configuration
    ~s3_configuration ~vpc_config () : elasticsearch_configuration =
  {
    buffering_interval;
    buffering_size;
    cluster_endpoint;
    domain_arn;
    index_name;
    index_rotation_period;
    retry_duration;
    role_arn;
    s3_backup_mode;
    type_name;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let extended_s3_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    extended_s3_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    ?timestamp_formats () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    =
  { timestamp_formats }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    ?case_insensitive ?column_to_json_key_mappings
    ?convert_dots_in_json_keys_to_underscores () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    =
  {
    case_insensitive;
    column_to_json_key_mappings;
    convert_dots_in_json_keys_to_underscores;
  }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    ~hive_json_ser_de ~open_x_json_ser_de () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    =
  { hive_json_ser_de; open_x_json_ser_de }

let extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    ~deserializer () :
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    =
  { deserializer }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    ?block_size_bytes ?bloom_filter_columns
    ?bloom_filter_false_positive_probability ?compression
    ?dictionary_key_threshold ?enable_padding ?format_version
    ?padding_tolerance ?row_index_stride ?stripe_size_bytes () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    =
  {
    block_size_bytes;
    bloom_filter_columns;
    bloom_filter_false_positive_probability;
    compression;
    dictionary_key_threshold;
    enable_padding;
    format_version;
    padding_tolerance;
    row_index_stride;
    stripe_size_bytes;
  }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    ?block_size_bytes ?compression ?enable_dictionary_compression
    ?max_padding_bytes ?page_size_bytes ?writer_version () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    =
  {
    block_size_bytes;
    compression;
    enable_dictionary_compression;
    max_padding_bytes;
    page_size_bytes;
    writer_version;
  }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    ~orc_ser_de ~parquet_ser_de () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    =
  { orc_ser_de; parquet_ser_de }

let extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    ~serializer () :
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    =
  { serializer }

let extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    ?catalog_id ?region ?version_id ~database_name ~role_arn
    ~table_name () :
    extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    =
  {
    catalog_id;
    database_name;
    region;
    role_arn;
    table_name;
    version_id;
  }

let extended_s3_configuration__data_format_conversion_configuration
    ?enabled ~input_format_configuration ~output_format_configuration
    ~schema_configuration () :
    extended_s3_configuration__data_format_conversion_configuration =
  {
    enabled;
    input_format_configuration;
    output_format_configuration;
    schema_configuration;
  }

let extended_s3_configuration__dynamic_partitioning_configuration
    ?enabled ?retry_duration () :
    extended_s3_configuration__dynamic_partitioning_configuration =
  { enabled; retry_duration }

let extended_s3_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    extended_s3_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let extended_s3_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    extended_s3_configuration__processing_configuration__processors =
  { type_; parameters }

let extended_s3_configuration__processing_configuration ?enabled
    ~processors () :
    extended_s3_configuration__processing_configuration =
  { enabled; processors }

let extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let extended_s3_configuration__s3_backup_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    extended_s3_configuration__s3_backup_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let extended_s3_configuration ?buffering_interval ?buffering_size
    ?compression_format ?custom_time_zone ?error_output_prefix
    ?file_extension ?kms_key_arn ?prefix ?s3_backup_mode ~bucket_arn
    ~role_arn ~cloudwatch_logging_options
    ~data_format_conversion_configuration
    ~dynamic_partitioning_configuration ~processing_configuration
    ~s3_backup_configuration () : extended_s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    custom_time_zone;
    error_output_prefix;
    file_extension;
    kms_key_arn;
    prefix;
    role_arn;
    s3_backup_mode;
    cloudwatch_logging_options;
    data_format_conversion_configuration;
    dynamic_partitioning_configuration;
    processing_configuration;
    s3_backup_configuration;
  }

let http_endpoint_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    http_endpoint_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let http_endpoint_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    http_endpoint_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let http_endpoint_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    http_endpoint_configuration__processing_configuration__processors
    =
  { type_; parameters }

let http_endpoint_configuration__processing_configuration ?enabled
    ~processors () :
    http_endpoint_configuration__processing_configuration =
  { enabled; processors }

let http_endpoint_configuration__request_configuration__common_attributes
    ~name ~value () :
    http_endpoint_configuration__request_configuration__common_attributes
    =
  { name; value }

let http_endpoint_configuration__request_configuration
    ?content_encoding ~common_attributes () :
    http_endpoint_configuration__request_configuration =
  { content_encoding; common_attributes }

let http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let http_endpoint_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    http_endpoint_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let http_endpoint_configuration ?access_key ?buffering_interval
    ?buffering_size ?name ?retry_duration ?role_arn ?s3_backup_mode
    ~url ~cloudwatch_logging_options ~processing_configuration
    ~request_configuration ~s3_configuration () :
    http_endpoint_configuration =
  {
    access_key;
    buffering_interval;
    buffering_size;
    name;
    retry_duration;
    role_arn;
    s3_backup_mode;
    url;
    cloudwatch_logging_options;
    processing_configuration;
    request_configuration;
    s3_configuration;
  }

let kinesis_source_configuration ~kinesis_stream_arn ~role_arn () :
    kinesis_source_configuration =
  { kinesis_stream_arn; role_arn }

let msk_source_configuration__authentication_configuration
    ~connectivity ~role_arn () :
    msk_source_configuration__authentication_configuration =
  { connectivity; role_arn }

let msk_source_configuration ~msk_cluster_arn ~topic_name
    ~authentication_configuration () : msk_source_configuration =
  { msk_cluster_arn; topic_name; authentication_configuration }

let opensearch_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    opensearch_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let opensearch_configuration__document_id_options
    ~default_document_id_format () :
    opensearch_configuration__document_id_options =
  { default_document_id_format }

let opensearch_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    opensearch_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let opensearch_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    opensearch_configuration__processing_configuration__processors =
  { type_; parameters }

let opensearch_configuration__processing_configuration ?enabled
    ~processors () :
    opensearch_configuration__processing_configuration =
  { enabled; processors }

let opensearch_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearch_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let opensearch_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    opensearch_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let opensearch_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    opensearch_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let opensearch_configuration ?buffering_interval ?buffering_size
    ?cluster_endpoint ?domain_arn ?index_rotation_period
    ?retry_duration ?s3_backup_mode ?type_name ~index_name ~role_arn
    ~cloudwatch_logging_options ~document_id_options
    ~processing_configuration ~s3_configuration ~vpc_config () :
    opensearch_configuration =
  {
    buffering_interval;
    buffering_size;
    cluster_endpoint;
    domain_arn;
    index_name;
    index_rotation_period;
    retry_duration;
    role_arn;
    s3_backup_mode;
    type_name;
    cloudwatch_logging_options;
    document_id_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let opensearchserverless_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearchserverless_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let opensearchserverless_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    opensearchserverless_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let opensearchserverless_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    opensearchserverless_configuration__processing_configuration__processors
    =
  { type_; parameters }

let opensearchserverless_configuration__processing_configuration
    ?enabled ~processors () :
    opensearchserverless_configuration__processing_configuration =
  { enabled; processors }

let opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let opensearchserverless_configuration__s3_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    opensearchserverless_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let opensearchserverless_configuration__vpc_config ~role_arn
    ~security_group_ids ~subnet_ids () :
    opensearchserverless_configuration__vpc_config =
  { role_arn; security_group_ids; subnet_ids }

let opensearchserverless_configuration ?buffering_interval
    ?buffering_size ?retry_duration ?s3_backup_mode
    ~collection_endpoint ~index_name ~role_arn
    ~cloudwatch_logging_options ~processing_configuration
    ~s3_configuration ~vpc_config () :
    opensearchserverless_configuration =
  {
    buffering_interval;
    buffering_size;
    collection_endpoint;
    index_name;
    retry_duration;
    role_arn;
    s3_backup_mode;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
    vpc_config;
  }

let redshift_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    redshift_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    redshift_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let redshift_configuration__processing_configuration__processors
    ~type_ ~parameters () :
    redshift_configuration__processing_configuration__processors =
  { type_; parameters }

let redshift_configuration__processing_configuration ?enabled
    ~processors () : redshift_configuration__processing_configuration
    =
  { enabled; processors }

let redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__s3_backup_configuration
    ?buffering_interval ?buffering_size ?compression_format
    ?error_output_prefix ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    redshift_configuration__s3_backup_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let redshift_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    redshift_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let redshift_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    redshift_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let redshift_configuration ?copy_options ?data_table_columns
    ?retry_duration ?s3_backup_mode ~cluster_jdbcurl ~data_table_name
    ~password ~role_arn ~username ~cloudwatch_logging_options
    ~processing_configuration ~s3_backup_configuration
    ~s3_configuration () : redshift_configuration =
  {
    cluster_jdbcurl;
    copy_options;
    data_table_columns;
    data_table_name;
    password;
    retry_duration;
    role_arn;
    s3_backup_mode;
    username;
    cloudwatch_logging_options;
    processing_configuration;
    s3_backup_configuration;
    s3_configuration;
  }

let server_side_encryption ?enabled ?key_arn ?key_type () :
    server_side_encryption =
  { enabled; key_arn; key_type }

let splunk_configuration__cloudwatch_logging_options ?enabled
    ?log_group_name ?log_stream_name () :
    splunk_configuration__cloudwatch_logging_options =
  { enabled; log_group_name; log_stream_name }

let splunk_configuration__processing_configuration__processors__parameters
    ~parameter_name ~parameter_value () :
    splunk_configuration__processing_configuration__processors__parameters
    =
  { parameter_name; parameter_value }

let splunk_configuration__processing_configuration__processors ~type_
    ~parameters () :
    splunk_configuration__processing_configuration__processors =
  { type_; parameters }

let splunk_configuration__processing_configuration ?enabled
    ~processors () : splunk_configuration__processing_configuration =
  { enabled; processors }

let splunk_configuration__s3_configuration__cloudwatch_logging_options
    ?enabled ?log_group_name ?log_stream_name () :
    splunk_configuration__s3_configuration__cloudwatch_logging_options
    =
  { enabled; log_group_name; log_stream_name }

let splunk_configuration__s3_configuration ?buffering_interval
    ?buffering_size ?compression_format ?error_output_prefix
    ?kms_key_arn ?prefix ~bucket_arn ~role_arn
    ~cloudwatch_logging_options () :
    splunk_configuration__s3_configuration =
  {
    bucket_arn;
    buffering_interval;
    buffering_size;
    compression_format;
    error_output_prefix;
    kms_key_arn;
    prefix;
    role_arn;
    cloudwatch_logging_options;
  }

let splunk_configuration ?buffering_interval ?buffering_size
    ?hec_acknowledgment_timeout ?hec_endpoint_type ?retry_duration
    ?s3_backup_mode ~hec_endpoint ~hec_token
    ~cloudwatch_logging_options ~processing_configuration
    ~s3_configuration () : splunk_configuration =
  {
    buffering_interval;
    buffering_size;
    hec_acknowledgment_timeout;
    hec_endpoint;
    hec_endpoint_type;
    hec_token;
    retry_duration;
    s3_backup_mode;
    cloudwatch_logging_options;
    processing_configuration;
    s3_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesis_firehose_delivery_stream ?arn ?destination_id ?id
    ?tags ?tags_all ?version_id ?timeouts ~destination ~name
    ~elasticsearch_configuration ~extended_s3_configuration
    ~http_endpoint_configuration ~kinesis_source_configuration
    ~msk_source_configuration ~opensearch_configuration
    ~opensearchserverless_configuration ~redshift_configuration
    ~server_side_encryption ~splunk_configuration () :
    aws_kinesis_firehose_delivery_stream =
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

type t = {
  arn : string prop;
  destination : string prop;
  destination_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
}

let register ?tf_module ?arn ?destination_id ?id ?tags ?tags_all
    ?version_id ?timeouts ~destination ~name
    ~elasticsearch_configuration ~extended_s3_configuration
    ~http_endpoint_configuration ~kinesis_source_configuration
    ~msk_source_configuration ~opensearch_configuration
    ~opensearchserverless_configuration ~redshift_configuration
    ~server_side_encryption ~splunk_configuration __resource_id =
  let __resource_type = "aws_kinesis_firehose_delivery_stream" in
  let __resource =
    aws_kinesis_firehose_delivery_stream ?arn ?destination_id ?id
      ?tags ?tags_all ?version_id ?timeouts ~destination ~name
      ~elasticsearch_configuration ~extended_s3_configuration
      ~http_endpoint_configuration ~kinesis_source_configuration
      ~msk_source_configuration ~opensearch_configuration
      ~opensearchserverless_configuration ~redshift_configuration
      ~server_side_encryption ~splunk_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_firehose_delivery_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       destination =
         Prop.computed __resource_type __resource_id "destination";
       destination_id =
         Prop.computed __resource_type __resource_id "destination_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
