(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type elasticsearch_settings = {
  endpoint_uri : string prop;  (** endpoint_uri *)
  error_retry_duration : float prop;  (** error_retry_duration *)
  full_load_error_percentage : float prop;
      (** full_load_error_percentage *)
  service_access_role_arn : string prop;
      (** service_access_role_arn *)
}

type kafka_settings = {
  broker : string prop;  (** broker *)
  include_control_details : bool prop;
      (** include_control_details *)
  include_null_and_empty : bool prop;  (** include_null_and_empty *)
  include_partition_value : bool prop;
      (** include_partition_value *)
  include_table_alter_operations : bool prop;
      (** include_table_alter_operations *)
  include_transaction_details : bool prop;
      (** include_transaction_details *)
  message_format : string prop;  (** message_format *)
  message_max_bytes : float prop;  (** message_max_bytes *)
  no_hex_prefix : bool prop;  (** no_hex_prefix *)
  partition_include_schema_table : bool prop;
      (** partition_include_schema_table *)
  sasl_password : string prop;  (** sasl_password *)
  sasl_username : string prop;  (** sasl_username *)
  security_protocol : string prop;  (** security_protocol *)
  ssl_ca_certificate_arn : string prop;
      (** ssl_ca_certificate_arn *)
  ssl_client_certificate_arn : string prop;
      (** ssl_client_certificate_arn *)
  ssl_client_key_arn : string prop;  (** ssl_client_key_arn *)
  ssl_client_key_password : string prop;
      (** ssl_client_key_password *)
  topic : string prop;  (** topic *)
}

type kinesis_settings = {
  include_control_details : bool prop;
      (** include_control_details *)
  include_null_and_empty : bool prop;  (** include_null_and_empty *)
  include_partition_value : bool prop;
      (** include_partition_value *)
  include_table_alter_operations : bool prop;
      (** include_table_alter_operations *)
  include_transaction_details : bool prop;
      (** include_transaction_details *)
  message_format : string prop;  (** message_format *)
  partition_include_schema_table : bool prop;
      (** partition_include_schema_table *)
  service_access_role_arn : string prop;
      (** service_access_role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}

type mongodb_settings = {
  auth_mechanism : string prop;  (** auth_mechanism *)
  auth_source : string prop;  (** auth_source *)
  auth_type : string prop;  (** auth_type *)
  docs_to_investigate : string prop;  (** docs_to_investigate *)
  extract_doc_id : string prop;  (** extract_doc_id *)
  nesting_level : string prop;  (** nesting_level *)
}

type postgres_settings = {
  after_connect_script : string prop;  (** after_connect_script *)
  babelfish_database_name : string prop;
      (** babelfish_database_name *)
  capture_ddls : bool prop;  (** capture_ddls *)
  database_mode : string prop;  (** database_mode *)
  ddl_artifacts_schema : string prop;  (** ddl_artifacts_schema *)
  execute_timeout : float prop;  (** execute_timeout *)
  fail_tasks_on_lob_truncation : bool prop;
      (** fail_tasks_on_lob_truncation *)
  heartbeat_enable : bool prop;  (** heartbeat_enable *)
  heartbeat_frequency : float prop;  (** heartbeat_frequency *)
  heartbeat_schema : string prop;  (** heartbeat_schema *)
  map_boolean_as_boolean : bool prop;  (** map_boolean_as_boolean *)
  map_jsonb_as_clob : bool prop;  (** map_jsonb_as_clob *)
  map_long_varchar_as : string prop;  (** map_long_varchar_as *)
  max_file_size : float prop;  (** max_file_size *)
  plugin_name : string prop;  (** plugin_name *)
  slot_name : string prop;  (** slot_name *)
}

type redis_settings = {
  auth_password : string prop;  (** auth_password *)
  auth_type : string prop;  (** auth_type *)
  auth_user_name : string prop;  (** auth_user_name *)
  port : float prop;  (** port *)
  server_name : string prop;  (** server_name *)
  ssl_ca_certificate_arn : string prop;
      (** ssl_ca_certificate_arn *)
  ssl_security_protocol : string prop;  (** ssl_security_protocol *)
}

type redshift_settings = {
  bucket_folder : string prop;  (** bucket_folder *)
  bucket_name : string prop;  (** bucket_name *)
  encryption_mode : string prop;  (** encryption_mode *)
  server_side_encryption_kms_key_id : string prop;
      (** server_side_encryption_kms_key_id *)
  service_access_role_arn : string prop;
      (** service_access_role_arn *)
}

type s3_settings = {
  add_column_name : bool prop;  (** add_column_name *)
  bucket_folder : string prop;  (** bucket_folder *)
  bucket_name : string prop;  (** bucket_name *)
  canned_acl_for_objects : string prop;
      (** canned_acl_for_objects *)
  cdc_inserts_and_updates : bool prop;
      (** cdc_inserts_and_updates *)
  cdc_inserts_only : bool prop;  (** cdc_inserts_only *)
  cdc_max_batch_interval : float prop;  (** cdc_max_batch_interval *)
  cdc_min_file_size : float prop;  (** cdc_min_file_size *)
  cdc_path : string prop;  (** cdc_path *)
  compression_type : string prop;  (** compression_type *)
  csv_delimiter : string prop;  (** csv_delimiter *)
  csv_no_sup_value : string prop;  (** csv_no_sup_value *)
  csv_null_value : string prop;  (** csv_null_value *)
  csv_row_delimiter : string prop;  (** csv_row_delimiter *)
  data_format : string prop;  (** data_format *)
  data_page_size : float prop;  (** data_page_size *)
  date_partition_delimiter : string prop;
      (** date_partition_delimiter *)
  date_partition_enabled : bool prop;  (** date_partition_enabled *)
  date_partition_sequence : string prop;
      (** date_partition_sequence *)
  dict_page_size_limit : float prop;  (** dict_page_size_limit *)
  enable_statistics : bool prop;  (** enable_statistics *)
  encoding_type : string prop;  (** encoding_type *)
  encryption_mode : string prop;  (** encryption_mode *)
  external_table_definition : string prop;
      (** external_table_definition *)
  glue_catalog_generation : bool prop;
      (** glue_catalog_generation *)
  ignore_header_rows : float prop;  (** ignore_header_rows *)
  ignore_headers_row : float prop;  (** ignore_headers_row *)
  include_op_for_full_load : bool prop;
      (** include_op_for_full_load *)
  max_file_size : float prop;  (** max_file_size *)
  parquet_timestamp_in_millisecond : bool prop;
      (** parquet_timestamp_in_millisecond *)
  parquet_version : string prop;  (** parquet_version *)
  preserve_transactions : bool prop;  (** preserve_transactions *)
  rfc_4180 : bool prop;  (** rfc_4180 *)
  row_group_length : float prop;  (** row_group_length *)
  server_side_encryption_kms_key_id : string prop;
      (** server_side_encryption_kms_key_id *)
  service_access_role_arn : string prop;
      (** service_access_role_arn *)
  timestamp_column_name : string prop;  (** timestamp_column_name *)
  use_csv_no_sup_value : bool prop;  (** use_csv_no_sup_value *)
  use_task_start_time_for_full_load_timestamp : bool prop;
      (** use_task_start_time_for_full_load_timestamp *)
}

type aws_dms_endpoint

val aws_dms_endpoint :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  endpoint_id:string prop ->
  unit ->
  aws_dms_endpoint

val yojson_of_aws_dms_endpoint : aws_dms_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_arn : string prop;
  database_name : string prop;
  elasticsearch_settings : elasticsearch_settings list prop;
  endpoint_arn : string prop;
  endpoint_id : string prop;
  endpoint_type : string prop;
  engine_name : string prop;
  extra_connection_attributes : string prop;
  id : string prop;
  kafka_settings : kafka_settings list prop;
  kinesis_settings : kinesis_settings list prop;
  kms_key_arn : string prop;
  mongodb_settings : mongodb_settings list prop;
  password : string prop;
  port : float prop;
  postgres_settings : postgres_settings list prop;
  redis_settings : redis_settings list prop;
  redshift_settings : redshift_settings list prop;
  s3_settings : s3_settings list prop;
  secrets_manager_access_role_arn : string prop;
  secrets_manager_arn : string prop;
  server_name : string prop;
  service_access_role : string prop;
  ssl_mode : string prop;
  tags : (string * string) list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  endpoint_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  endpoint_id:string prop ->
  string ->
  t Tf_core.resource
