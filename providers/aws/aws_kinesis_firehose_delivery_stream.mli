(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type elasticsearch_configuration__cloudwatch_logging_options

val elasticsearch_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  elasticsearch_configuration__cloudwatch_logging_options

type elasticsearch_configuration__processing_configuration__processors__parameters

val elasticsearch_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  elasticsearch_configuration__processing_configuration__processors__parameters

type elasticsearch_configuration__processing_configuration__processors

val elasticsearch_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    elasticsearch_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  elasticsearch_configuration__processing_configuration__processors

type elasticsearch_configuration__processing_configuration

val elasticsearch_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    elasticsearch_configuration__processing_configuration__processors
    list ->
  unit ->
  elasticsearch_configuration__processing_configuration

type elasticsearch_configuration__s3_configuration__cloudwatch_logging_options

val elasticsearch_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  elasticsearch_configuration__s3_configuration__cloudwatch_logging_options

type elasticsearch_configuration__s3_configuration

val elasticsearch_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    elasticsearch_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  elasticsearch_configuration__s3_configuration

type elasticsearch_configuration__vpc_config

val elasticsearch_configuration__vpc_config :
  role_arn:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  elasticsearch_configuration__vpc_config

type elasticsearch_configuration

val elasticsearch_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?cluster_endpoint:string prop ->
  ?domain_arn:string prop ->
  ?index_rotation_period:string prop ->
  ?retry_duration:float prop ->
  ?s3_backup_mode:string prop ->
  ?type_name:string prop ->
  index_name:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    elasticsearch_configuration__cloudwatch_logging_options list ->
  processing_configuration:
    elasticsearch_configuration__processing_configuration list ->
  s3_configuration:elasticsearch_configuration__s3_configuration list ->
  vpc_config:elasticsearch_configuration__vpc_config list ->
  unit ->
  elasticsearch_configuration

type extended_s3_configuration__cloudwatch_logging_options

val extended_s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  extended_s3_configuration__cloudwatch_logging_options

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de

val extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de :
  ?timestamp_formats:string prop list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de

val extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de :
  ?case_insensitive:bool prop ->
  ?column_to_json_key_mappings:(string * string prop) list ->
  ?convert_dots_in_json_keys_to_underscores:bool prop ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer

val extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer :
  hive_json_ser_de:
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__hive_json_ser_de
    list ->
  open_x_json_ser_de:
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer__open_x_json_ser_de
    list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer

type extended_s3_configuration__data_format_conversion_configuration__input_format_configuration

val extended_s3_configuration__data_format_conversion_configuration__input_format_configuration :
  deserializer:
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration__deserializer
    list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__input_format_configuration

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de

val extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de :
  ?block_size_bytes:float prop ->
  ?bloom_filter_columns:string prop list ->
  ?bloom_filter_false_positive_probability:float prop ->
  ?compression:string prop ->
  ?dictionary_key_threshold:float prop ->
  ?enable_padding:bool prop ->
  ?format_version:string prop ->
  ?padding_tolerance:float prop ->
  ?row_index_stride:float prop ->
  ?stripe_size_bytes:float prop ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de

val extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de :
  ?block_size_bytes:float prop ->
  ?compression:string prop ->
  ?enable_dictionary_compression:bool prop ->
  ?max_padding_bytes:float prop ->
  ?page_size_bytes:float prop ->
  ?writer_version:string prop ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer

val extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer :
  orc_ser_de:
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__orc_ser_de
    list ->
  parquet_ser_de:
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer__parquet_ser_de
    list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer

type extended_s3_configuration__data_format_conversion_configuration__output_format_configuration

val extended_s3_configuration__data_format_conversion_configuration__output_format_configuration :
  serializer:
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration__serializer
    list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__output_format_configuration

type extended_s3_configuration__data_format_conversion_configuration__schema_configuration

val extended_s3_configuration__data_format_conversion_configuration__schema_configuration :
  ?catalog_id:string prop ->
  ?region:string prop ->
  ?version_id:string prop ->
  database_name:string prop ->
  role_arn:string prop ->
  table_name:string prop ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration__schema_configuration

type extended_s3_configuration__data_format_conversion_configuration

val extended_s3_configuration__data_format_conversion_configuration :
  ?enabled:bool prop ->
  input_format_configuration:
    extended_s3_configuration__data_format_conversion_configuration__input_format_configuration
    list ->
  output_format_configuration:
    extended_s3_configuration__data_format_conversion_configuration__output_format_configuration
    list ->
  schema_configuration:
    extended_s3_configuration__data_format_conversion_configuration__schema_configuration
    list ->
  unit ->
  extended_s3_configuration__data_format_conversion_configuration

type extended_s3_configuration__dynamic_partitioning_configuration

val extended_s3_configuration__dynamic_partitioning_configuration :
  ?enabled:bool prop ->
  ?retry_duration:float prop ->
  unit ->
  extended_s3_configuration__dynamic_partitioning_configuration

type extended_s3_configuration__processing_configuration__processors__parameters

val extended_s3_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  extended_s3_configuration__processing_configuration__processors__parameters

type extended_s3_configuration__processing_configuration__processors

val extended_s3_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    extended_s3_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  extended_s3_configuration__processing_configuration__processors

type extended_s3_configuration__processing_configuration

val extended_s3_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    extended_s3_configuration__processing_configuration__processors
    list ->
  unit ->
  extended_s3_configuration__processing_configuration

type extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options

val extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options

type extended_s3_configuration__s3_backup_configuration

val extended_s3_configuration__s3_backup_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    extended_s3_configuration__s3_backup_configuration__cloudwatch_logging_options
    list ->
  unit ->
  extended_s3_configuration__s3_backup_configuration

type extended_s3_configuration

val extended_s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?custom_time_zone:string prop ->
  ?error_output_prefix:string prop ->
  ?file_extension:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  ?s3_backup_mode:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    extended_s3_configuration__cloudwatch_logging_options list ->
  data_format_conversion_configuration:
    extended_s3_configuration__data_format_conversion_configuration
    list ->
  dynamic_partitioning_configuration:
    extended_s3_configuration__dynamic_partitioning_configuration
    list ->
  processing_configuration:
    extended_s3_configuration__processing_configuration list ->
  s3_backup_configuration:
    extended_s3_configuration__s3_backup_configuration list ->
  unit ->
  extended_s3_configuration

type http_endpoint_configuration__cloudwatch_logging_options

val http_endpoint_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  http_endpoint_configuration__cloudwatch_logging_options

type http_endpoint_configuration__processing_configuration__processors__parameters

val http_endpoint_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  http_endpoint_configuration__processing_configuration__processors__parameters

type http_endpoint_configuration__processing_configuration__processors

val http_endpoint_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    http_endpoint_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  http_endpoint_configuration__processing_configuration__processors

type http_endpoint_configuration__processing_configuration

val http_endpoint_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    http_endpoint_configuration__processing_configuration__processors
    list ->
  unit ->
  http_endpoint_configuration__processing_configuration

type http_endpoint_configuration__request_configuration__common_attributes

val http_endpoint_configuration__request_configuration__common_attributes :
  name:string prop ->
  value:string prop ->
  unit ->
  http_endpoint_configuration__request_configuration__common_attributes

type http_endpoint_configuration__request_configuration

val http_endpoint_configuration__request_configuration :
  ?content_encoding:string prop ->
  common_attributes:
    http_endpoint_configuration__request_configuration__common_attributes
    list ->
  unit ->
  http_endpoint_configuration__request_configuration

type http_endpoint_configuration__s3_configuration__cloudwatch_logging_options

val http_endpoint_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  http_endpoint_configuration__s3_configuration__cloudwatch_logging_options

type http_endpoint_configuration__s3_configuration

val http_endpoint_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    http_endpoint_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  http_endpoint_configuration__s3_configuration

type http_endpoint_configuration

val http_endpoint_configuration :
  ?access_key:string prop ->
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?name:string prop ->
  ?retry_duration:float prop ->
  ?role_arn:string prop ->
  ?s3_backup_mode:string prop ->
  url:string prop ->
  cloudwatch_logging_options:
    http_endpoint_configuration__cloudwatch_logging_options list ->
  processing_configuration:
    http_endpoint_configuration__processing_configuration list ->
  request_configuration:
    http_endpoint_configuration__request_configuration list ->
  s3_configuration:http_endpoint_configuration__s3_configuration list ->
  unit ->
  http_endpoint_configuration

type kinesis_source_configuration

val kinesis_source_configuration :
  kinesis_stream_arn:string prop ->
  role_arn:string prop ->
  unit ->
  kinesis_source_configuration

type msk_source_configuration__authentication_configuration

val msk_source_configuration__authentication_configuration :
  connectivity:string prop ->
  role_arn:string prop ->
  unit ->
  msk_source_configuration__authentication_configuration

type msk_source_configuration

val msk_source_configuration :
  msk_cluster_arn:string prop ->
  topic_name:string prop ->
  authentication_configuration:
    msk_source_configuration__authentication_configuration list ->
  unit ->
  msk_source_configuration

type opensearch_configuration__cloudwatch_logging_options

val opensearch_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  opensearch_configuration__cloudwatch_logging_options

type opensearch_configuration__document_id_options

val opensearch_configuration__document_id_options :
  default_document_id_format:string prop ->
  unit ->
  opensearch_configuration__document_id_options

type opensearch_configuration__processing_configuration__processors__parameters

val opensearch_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  opensearch_configuration__processing_configuration__processors__parameters

type opensearch_configuration__processing_configuration__processors

val opensearch_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    opensearch_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  opensearch_configuration__processing_configuration__processors

type opensearch_configuration__processing_configuration

val opensearch_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    opensearch_configuration__processing_configuration__processors
    list ->
  unit ->
  opensearch_configuration__processing_configuration

type opensearch_configuration__s3_configuration__cloudwatch_logging_options

val opensearch_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  opensearch_configuration__s3_configuration__cloudwatch_logging_options

type opensearch_configuration__s3_configuration

val opensearch_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    opensearch_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  opensearch_configuration__s3_configuration

type opensearch_configuration__vpc_config

val opensearch_configuration__vpc_config :
  role_arn:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  opensearch_configuration__vpc_config

type opensearch_configuration

val opensearch_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?cluster_endpoint:string prop ->
  ?domain_arn:string prop ->
  ?index_rotation_period:string prop ->
  ?retry_duration:float prop ->
  ?s3_backup_mode:string prop ->
  ?type_name:string prop ->
  index_name:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    opensearch_configuration__cloudwatch_logging_options list ->
  document_id_options:
    opensearch_configuration__document_id_options list ->
  processing_configuration:
    opensearch_configuration__processing_configuration list ->
  s3_configuration:opensearch_configuration__s3_configuration list ->
  vpc_config:opensearch_configuration__vpc_config list ->
  unit ->
  opensearch_configuration

type opensearchserverless_configuration__cloudwatch_logging_options

val opensearchserverless_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  opensearchserverless_configuration__cloudwatch_logging_options

type opensearchserverless_configuration__processing_configuration__processors__parameters

val opensearchserverless_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  opensearchserverless_configuration__processing_configuration__processors__parameters

type opensearchserverless_configuration__processing_configuration__processors

val opensearchserverless_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    opensearchserverless_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  opensearchserverless_configuration__processing_configuration__processors

type opensearchserverless_configuration__processing_configuration

val opensearchserverless_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    opensearchserverless_configuration__processing_configuration__processors
    list ->
  unit ->
  opensearchserverless_configuration__processing_configuration

type opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options

val opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options

type opensearchserverless_configuration__s3_configuration

val opensearchserverless_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    opensearchserverless_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  opensearchserverless_configuration__s3_configuration

type opensearchserverless_configuration__vpc_config

val opensearchserverless_configuration__vpc_config :
  role_arn:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  opensearchserverless_configuration__vpc_config

type opensearchserverless_configuration

val opensearchserverless_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?retry_duration:float prop ->
  ?s3_backup_mode:string prop ->
  collection_endpoint:string prop ->
  index_name:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    opensearchserverless_configuration__cloudwatch_logging_options
    list ->
  processing_configuration:
    opensearchserverless_configuration__processing_configuration list ->
  s3_configuration:
    opensearchserverless_configuration__s3_configuration list ->
  vpc_config:opensearchserverless_configuration__vpc_config list ->
  unit ->
  opensearchserverless_configuration

type redshift_configuration__cloudwatch_logging_options

val redshift_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  redshift_configuration__cloudwatch_logging_options

type redshift_configuration__processing_configuration__processors__parameters

val redshift_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  redshift_configuration__processing_configuration__processors__parameters

type redshift_configuration__processing_configuration__processors

val redshift_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    redshift_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  redshift_configuration__processing_configuration__processors

type redshift_configuration__processing_configuration

val redshift_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    redshift_configuration__processing_configuration__processors list ->
  unit ->
  redshift_configuration__processing_configuration

type redshift_configuration__s3_backup_configuration__cloudwatch_logging_options

val redshift_configuration__s3_backup_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  redshift_configuration__s3_backup_configuration__cloudwatch_logging_options

type redshift_configuration__s3_backup_configuration

val redshift_configuration__s3_backup_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    redshift_configuration__s3_backup_configuration__cloudwatch_logging_options
    list ->
  unit ->
  redshift_configuration__s3_backup_configuration

type redshift_configuration__s3_configuration__cloudwatch_logging_options

val redshift_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  redshift_configuration__s3_configuration__cloudwatch_logging_options

type redshift_configuration__s3_configuration

val redshift_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    redshift_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  redshift_configuration__s3_configuration

type redshift_configuration

val redshift_configuration :
  ?copy_options:string prop ->
  ?data_table_columns:string prop ->
  ?retry_duration:float prop ->
  ?s3_backup_mode:string prop ->
  cluster_jdbcurl:string prop ->
  data_table_name:string prop ->
  password:string prop ->
  role_arn:string prop ->
  username:string prop ->
  cloudwatch_logging_options:
    redshift_configuration__cloudwatch_logging_options list ->
  processing_configuration:
    redshift_configuration__processing_configuration list ->
  s3_backup_configuration:
    redshift_configuration__s3_backup_configuration list ->
  s3_configuration:redshift_configuration__s3_configuration list ->
  unit ->
  redshift_configuration

type server_side_encryption

val server_side_encryption :
  ?enabled:bool prop ->
  ?key_arn:string prop ->
  ?key_type:string prop ->
  unit ->
  server_side_encryption

type splunk_configuration__cloudwatch_logging_options

val splunk_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  splunk_configuration__cloudwatch_logging_options

type splunk_configuration__processing_configuration__processors__parameters

val splunk_configuration__processing_configuration__processors__parameters :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  splunk_configuration__processing_configuration__processors__parameters

type splunk_configuration__processing_configuration__processors

val splunk_configuration__processing_configuration__processors :
  type_:string prop ->
  parameters:
    splunk_configuration__processing_configuration__processors__parameters
    list ->
  unit ->
  splunk_configuration__processing_configuration__processors

type splunk_configuration__processing_configuration

val splunk_configuration__processing_configuration :
  ?enabled:bool prop ->
  processors:
    splunk_configuration__processing_configuration__processors list ->
  unit ->
  splunk_configuration__processing_configuration

type splunk_configuration__s3_configuration__cloudwatch_logging_options

val splunk_configuration__s3_configuration__cloudwatch_logging_options :
  ?enabled:bool prop ->
  ?log_group_name:string prop ->
  ?log_stream_name:string prop ->
  unit ->
  splunk_configuration__s3_configuration__cloudwatch_logging_options

type splunk_configuration__s3_configuration

val splunk_configuration__s3_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?compression_format:string prop ->
  ?error_output_prefix:string prop ->
  ?kms_key_arn:string prop ->
  ?prefix:string prop ->
  bucket_arn:string prop ->
  role_arn:string prop ->
  cloudwatch_logging_options:
    splunk_configuration__s3_configuration__cloudwatch_logging_options
    list ->
  unit ->
  splunk_configuration__s3_configuration

type splunk_configuration

val splunk_configuration :
  ?buffering_interval:float prop ->
  ?buffering_size:float prop ->
  ?hec_acknowledgment_timeout:float prop ->
  ?hec_endpoint_type:string prop ->
  ?retry_duration:float prop ->
  ?s3_backup_mode:string prop ->
  hec_endpoint:string prop ->
  hec_token:string prop ->
  cloudwatch_logging_options:
    splunk_configuration__cloudwatch_logging_options list ->
  processing_configuration:
    splunk_configuration__processing_configuration list ->
  s3_configuration:splunk_configuration__s3_configuration list ->
  unit ->
  splunk_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kinesis_firehose_delivery_stream

val aws_kinesis_firehose_delivery_stream :
  ?arn:string prop ->
  ?destination_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_id:string prop ->
  ?timeouts:timeouts ->
  destination:string prop ->
  name:string prop ->
  elasticsearch_configuration:elasticsearch_configuration list ->
  extended_s3_configuration:extended_s3_configuration list ->
  http_endpoint_configuration:http_endpoint_configuration list ->
  kinesis_source_configuration:kinesis_source_configuration list ->
  msk_source_configuration:msk_source_configuration list ->
  opensearch_configuration:opensearch_configuration list ->
  opensearchserverless_configuration:
    opensearchserverless_configuration list ->
  redshift_configuration:redshift_configuration list ->
  server_side_encryption:server_side_encryption list ->
  splunk_configuration:splunk_configuration list ->
  unit ->
  aws_kinesis_firehose_delivery_stream

val yojson_of_aws_kinesis_firehose_delivery_stream :
  aws_kinesis_firehose_delivery_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  destination : string prop;
  destination_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?destination_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_id:string prop ->
  ?timeouts:timeouts ->
  destination:string prop ->
  name:string prop ->
  elasticsearch_configuration:elasticsearch_configuration list ->
  extended_s3_configuration:extended_s3_configuration list ->
  http_endpoint_configuration:http_endpoint_configuration list ->
  kinesis_source_configuration:kinesis_source_configuration list ->
  msk_source_configuration:msk_source_configuration list ->
  opensearch_configuration:opensearch_configuration list ->
  opensearchserverless_configuration:
    opensearchserverless_configuration list ->
  redshift_configuration:redshift_configuration list ->
  server_side_encryption:server_side_encryption list ->
  splunk_configuration:splunk_configuration list ->
  string ->
  t
