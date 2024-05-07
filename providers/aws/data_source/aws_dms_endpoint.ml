(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type elasticsearch_settings = {
  endpoint_uri : string prop;
  error_retry_duration : float prop;
  full_load_error_percentage : float prop;
  service_access_role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch_settings) -> ()

let yojson_of_elasticsearch_settings =
  (function
   | {
       endpoint_uri = v_endpoint_uri;
       error_retry_duration = v_error_retry_duration;
       full_load_error_percentage = v_full_load_error_percentage;
       service_access_role_arn = v_service_access_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_full_load_error_percentage
         in
         ("full_load_error_percentage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_error_retry_duration
         in
         ("error_retry_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_uri in
         ("endpoint_uri", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch_settings

[@@@deriving.end]

type kafka_settings = {
  broker : string prop;
  include_control_details : bool prop;
  include_null_and_empty : bool prop;
  include_partition_value : bool prop;
  include_table_alter_operations : bool prop;
  include_transaction_details : bool prop;
  message_format : string prop;
  message_max_bytes : float prop;
  no_hex_prefix : bool prop;
  partition_include_schema_table : bool prop;
  sasl_password : string prop;
  sasl_username : string prop;
  security_protocol : string prop;
  ssl_ca_certificate_arn : string prop;
  ssl_client_certificate_arn : string prop;
  ssl_client_key_arn : string prop;
  ssl_client_key_password : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_settings) -> ()

let yojson_of_kafka_settings =
  (function
   | {
       broker = v_broker;
       include_control_details = v_include_control_details;
       include_null_and_empty = v_include_null_and_empty;
       include_partition_value = v_include_partition_value;
       include_table_alter_operations =
         v_include_table_alter_operations;
       include_transaction_details = v_include_transaction_details;
       message_format = v_message_format;
       message_max_bytes = v_message_max_bytes;
       no_hex_prefix = v_no_hex_prefix;
       partition_include_schema_table =
         v_partition_include_schema_table;
       sasl_password = v_sasl_password;
       sasl_username = v_sasl_username;
       security_protocol = v_security_protocol;
       ssl_ca_certificate_arn = v_ssl_ca_certificate_arn;
       ssl_client_certificate_arn = v_ssl_client_certificate_arn;
       ssl_client_key_arn = v_ssl_client_key_arn;
       ssl_client_key_password = v_ssl_client_key_password;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_client_key_password
         in
         ("ssl_client_key_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_client_key_arn
         in
         ("ssl_client_key_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ssl_client_certificate_arn
         in
         ("ssl_client_certificate_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_ca_certificate_arn
         in
         ("ssl_ca_certificate_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_protocol
         in
         ("security_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sasl_username in
         ("sasl_username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sasl_password in
         ("sasl_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_partition_include_schema_table
         in
         ("partition_include_schema_table", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_no_hex_prefix in
         ("no_hex_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_message_max_bytes
         in
         ("message_max_bytes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_format
         in
         ("message_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_include_transaction_details
         in
         ("include_transaction_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_include_table_alter_operations
         in
         ("include_table_alter_operations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_partition_value
         in
         ("include_partition_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_null_and_empty
         in
         ("include_null_and_empty", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_control_details
         in
         ("include_control_details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_broker in
         ("broker", arg) :: bnds
       in
       `Assoc bnds
    : kafka_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_settings

[@@@deriving.end]

type kinesis_settings = {
  include_control_details : bool prop;
  include_null_and_empty : bool prop;
  include_partition_value : bool prop;
  include_table_alter_operations : bool prop;
  include_transaction_details : bool prop;
  message_format : string prop;
  partition_include_schema_table : bool prop;
  service_access_role_arn : string prop;
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis_settings) -> ()

let yojson_of_kinesis_settings =
  (function
   | {
       include_control_details = v_include_control_details;
       include_null_and_empty = v_include_null_and_empty;
       include_partition_value = v_include_partition_value;
       include_table_alter_operations =
         v_include_table_alter_operations;
       include_transaction_details = v_include_transaction_details;
       message_format = v_message_format;
       partition_include_schema_table =
         v_partition_include_schema_table;
       service_access_role_arn = v_service_access_role_arn;
       stream_arn = v_stream_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_partition_include_schema_table
         in
         ("partition_include_schema_table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_format
         in
         ("message_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_include_transaction_details
         in
         ("include_transaction_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_include_table_alter_operations
         in
         ("include_table_alter_operations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_partition_value
         in
         ("include_partition_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_null_and_empty
         in
         ("include_null_and_empty", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_control_details
         in
         ("include_control_details", arg) :: bnds
       in
       `Assoc bnds
    : kinesis_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_settings

[@@@deriving.end]

type mongodb_settings = {
  auth_mechanism : string prop;
  auth_source : string prop;
  auth_type : string prop;
  docs_to_investigate : string prop;
  extract_doc_id : string prop;
  nesting_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodb_settings) -> ()

let yojson_of_mongodb_settings =
  (function
   | {
       auth_mechanism = v_auth_mechanism;
       auth_source = v_auth_source;
       auth_type = v_auth_type;
       docs_to_investigate = v_docs_to_investigate;
       extract_doc_id = v_extract_doc_id;
       nesting_level = v_nesting_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nesting_level in
         ("nesting_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_extract_doc_id
         in
         ("extract_doc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_docs_to_investigate
         in
         ("docs_to_investigate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_source in
         ("auth_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_mechanism
         in
         ("auth_mechanism", arg) :: bnds
       in
       `Assoc bnds
    : mongodb_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodb_settings

[@@@deriving.end]

type postgres_settings = {
  after_connect_script : string prop;
  babelfish_database_name : string prop;
  capture_ddls : bool prop;
  database_mode : string prop;
  ddl_artifacts_schema : string prop;
  execute_timeout : float prop;
  fail_tasks_on_lob_truncation : bool prop;
  heartbeat_enable : bool prop;
  heartbeat_frequency : float prop;
  heartbeat_schema : string prop;
  map_boolean_as_boolean : bool prop;
  map_jsonb_as_clob : bool prop;
  map_long_varchar_as : string prop;
  max_file_size : float prop;
  plugin_name : string prop;
  slot_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgres_settings) -> ()

let yojson_of_postgres_settings =
  (function
   | {
       after_connect_script = v_after_connect_script;
       babelfish_database_name = v_babelfish_database_name;
       capture_ddls = v_capture_ddls;
       database_mode = v_database_mode;
       ddl_artifacts_schema = v_ddl_artifacts_schema;
       execute_timeout = v_execute_timeout;
       fail_tasks_on_lob_truncation = v_fail_tasks_on_lob_truncation;
       heartbeat_enable = v_heartbeat_enable;
       heartbeat_frequency = v_heartbeat_frequency;
       heartbeat_schema = v_heartbeat_schema;
       map_boolean_as_boolean = v_map_boolean_as_boolean;
       map_jsonb_as_clob = v_map_jsonb_as_clob;
       map_long_varchar_as = v_map_long_varchar_as;
       max_file_size = v_max_file_size;
       plugin_name = v_plugin_name;
       slot_name = v_slot_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slot_name in
         ("slot_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plugin_name in
         ("plugin_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_file_size in
         ("max_file_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_map_long_varchar_as
         in
         ("map_long_varchar_as", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_map_jsonb_as_clob
         in
         ("map_jsonb_as_clob", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_map_boolean_as_boolean
         in
         ("map_boolean_as_boolean", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_heartbeat_schema
         in
         ("heartbeat_schema", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_heartbeat_frequency
         in
         ("heartbeat_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_heartbeat_enable
         in
         ("heartbeat_enable", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_fail_tasks_on_lob_truncation
         in
         ("fail_tasks_on_lob_truncation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_execute_timeout
         in
         ("execute_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ddl_artifacts_schema
         in
         ("ddl_artifacts_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_mode in
         ("database_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_capture_ddls in
         ("capture_ddls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_babelfish_database_name
         in
         ("babelfish_database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_after_connect_script
         in
         ("after_connect_script", arg) :: bnds
       in
       `Assoc bnds
    : postgres_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgres_settings

[@@@deriving.end]

type redis_settings = {
  auth_password : string prop;
  auth_type : string prop;
  auth_user_name : string prop;
  port : float prop;
  server_name : string prop;
  ssl_ca_certificate_arn : string prop;
  ssl_security_protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis_settings) -> ()

let yojson_of_redis_settings =
  (function
   | {
       auth_password = v_auth_password;
       auth_type = v_auth_type;
       auth_user_name = v_auth_user_name;
       port = v_port;
       server_name = v_server_name;
       ssl_ca_certificate_arn = v_ssl_ca_certificate_arn;
       ssl_security_protocol = v_ssl_security_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_security_protocol
         in
         ("ssl_security_protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_ca_certificate_arn
         in
         ("ssl_ca_certificate_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_user_name
         in
         ("auth_user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_password in
         ("auth_password", arg) :: bnds
       in
       `Assoc bnds
    : redis_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_settings

[@@@deriving.end]

type redshift_settings = {
  bucket_folder : string prop;
  bucket_name : string prop;
  encryption_mode : string prop;
  server_side_encryption_kms_key_id : string prop;
  service_access_role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift_settings) -> ()

let yojson_of_redshift_settings =
  (function
   | {
       bucket_folder = v_bucket_folder;
       bucket_name = v_bucket_name;
       encryption_mode = v_encryption_mode;
       server_side_encryption_kms_key_id =
         v_server_side_encryption_kms_key_id;
       service_access_role_arn = v_service_access_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_server_side_encryption_kms_key_id
         in
         ("server_side_encryption_kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_mode
         in
         ("encryption_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_folder in
         ("bucket_folder", arg) :: bnds
       in
       `Assoc bnds
    : redshift_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_settings

[@@@deriving.end]

type s3_settings = {
  add_column_name : bool prop;
  bucket_folder : string prop;
  bucket_name : string prop;
  canned_acl_for_objects : string prop;
  cdc_inserts_and_updates : bool prop;
  cdc_inserts_only : bool prop;
  cdc_max_batch_interval : float prop;
  cdc_min_file_size : float prop;
  cdc_path : string prop;
  compression_type : string prop;
  csv_delimiter : string prop;
  csv_no_sup_value : string prop;
  csv_null_value : string prop;
  csv_row_delimiter : string prop;
  data_format : string prop;
  data_page_size : float prop;
  date_partition_delimiter : string prop;
  date_partition_enabled : bool prop;
  date_partition_sequence : string prop;
  dict_page_size_limit : float prop;
  enable_statistics : bool prop;
  encoding_type : string prop;
  encryption_mode : string prop;
  external_table_definition : string prop;
  glue_catalog_generation : bool prop;
  ignore_header_rows : float prop;
  ignore_headers_row : float prop;
  include_op_for_full_load : bool prop;
  max_file_size : float prop;
  parquet_timestamp_in_millisecond : bool prop;
  parquet_version : string prop;
  preserve_transactions : bool prop;
  rfc_4180 : bool prop;
  row_group_length : float prop;
  server_side_encryption_kms_key_id : string prop;
  service_access_role_arn : string prop;
  timestamp_column_name : string prop;
  use_csv_no_sup_value : bool prop;
  use_task_start_time_for_full_load_timestamp : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_settings) -> ()

let yojson_of_s3_settings =
  (function
   | {
       add_column_name = v_add_column_name;
       bucket_folder = v_bucket_folder;
       bucket_name = v_bucket_name;
       canned_acl_for_objects = v_canned_acl_for_objects;
       cdc_inserts_and_updates = v_cdc_inserts_and_updates;
       cdc_inserts_only = v_cdc_inserts_only;
       cdc_max_batch_interval = v_cdc_max_batch_interval;
       cdc_min_file_size = v_cdc_min_file_size;
       cdc_path = v_cdc_path;
       compression_type = v_compression_type;
       csv_delimiter = v_csv_delimiter;
       csv_no_sup_value = v_csv_no_sup_value;
       csv_null_value = v_csv_null_value;
       csv_row_delimiter = v_csv_row_delimiter;
       data_format = v_data_format;
       data_page_size = v_data_page_size;
       date_partition_delimiter = v_date_partition_delimiter;
       date_partition_enabled = v_date_partition_enabled;
       date_partition_sequence = v_date_partition_sequence;
       dict_page_size_limit = v_dict_page_size_limit;
       enable_statistics = v_enable_statistics;
       encoding_type = v_encoding_type;
       encryption_mode = v_encryption_mode;
       external_table_definition = v_external_table_definition;
       glue_catalog_generation = v_glue_catalog_generation;
       ignore_header_rows = v_ignore_header_rows;
       ignore_headers_row = v_ignore_headers_row;
       include_op_for_full_load = v_include_op_for_full_load;
       max_file_size = v_max_file_size;
       parquet_timestamp_in_millisecond =
         v_parquet_timestamp_in_millisecond;
       parquet_version = v_parquet_version;
       preserve_transactions = v_preserve_transactions;
       rfc_4180 = v_rfc_4180;
       row_group_length = v_row_group_length;
       server_side_encryption_kms_key_id =
         v_server_side_encryption_kms_key_id;
       service_access_role_arn = v_service_access_role_arn;
       timestamp_column_name = v_timestamp_column_name;
       use_csv_no_sup_value = v_use_csv_no_sup_value;
       use_task_start_time_for_full_load_timestamp =
         v_use_task_start_time_for_full_load_timestamp;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_use_task_start_time_for_full_load_timestamp
         in
         ("use_task_start_time_for_full_load_timestamp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_csv_no_sup_value
         in
         ("use_csv_no_sup_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_timestamp_column_name
         in
         ("timestamp_column_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_server_side_encryption_kms_key_id
         in
         ("server_side_encryption_kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_row_group_length
         in
         ("row_group_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_rfc_4180 in
         ("rfc_4180", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_transactions
         in
         ("preserve_transactions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parquet_version
         in
         ("parquet_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_parquet_timestamp_in_millisecond
         in
         ("parquet_timestamp_in_millisecond", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_file_size in
         ("max_file_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_op_for_full_load
         in
         ("include_op_for_full_load", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ignore_headers_row
         in
         ("ignore_headers_row", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ignore_header_rows
         in
         ("ignore_header_rows", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_glue_catalog_generation
         in
         ("glue_catalog_generation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_external_table_definition
         in
         ("external_table_definition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_mode
         in
         ("encryption_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding_type in
         ("encoding_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_statistics
         in
         ("enable_statistics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_dict_page_size_limit
         in
         ("dict_page_size_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_date_partition_sequence
         in
         ("date_partition_sequence", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_date_partition_enabled
         in
         ("date_partition_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_date_partition_delimiter
         in
         ("date_partition_delimiter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_data_page_size in
         ("data_page_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_format in
         ("data_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_csv_row_delimiter
         in
         ("csv_row_delimiter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_csv_null_value
         in
         ("csv_null_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_csv_no_sup_value
         in
         ("csv_no_sup_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_csv_delimiter in
         ("csv_delimiter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compression_type
         in
         ("compression_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cdc_path in
         ("cdc_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cdc_min_file_size
         in
         ("cdc_min_file_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cdc_max_batch_interval
         in
         ("cdc_max_batch_interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_cdc_inserts_only
         in
         ("cdc_inserts_only", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_cdc_inserts_and_updates
         in
         ("cdc_inserts_and_updates", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_canned_acl_for_objects
         in
         ("canned_acl_for_objects", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_folder in
         ("bucket_folder", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_add_column_name in
         ("add_column_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_settings

[@@@deriving.end]

type aws_dms_endpoint = {
  endpoint_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_endpoint) -> ()

let yojson_of_aws_dms_endpoint =
  (function
   | { endpoint_id = v_endpoint_id; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_id in
         ("endpoint_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_dms_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_endpoint

[@@@deriving.end]

let aws_dms_endpoint ?id ?tags ~endpoint_id () : aws_dms_endpoint =
  { endpoint_id; id; tags }

type t = {
  tf_name : string;
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

let make ?id ?tags ~endpoint_id __id =
  let __type = "aws_dms_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_arn = Prop.computed __type __id "certificate_arn";
       database_name = Prop.computed __type __id "database_name";
       elasticsearch_settings =
         Prop.computed __type __id "elasticsearch_settings";
       endpoint_arn = Prop.computed __type __id "endpoint_arn";
       endpoint_id = Prop.computed __type __id "endpoint_id";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       engine_name = Prop.computed __type __id "engine_name";
       extra_connection_attributes =
         Prop.computed __type __id "extra_connection_attributes";
       id = Prop.computed __type __id "id";
       kafka_settings = Prop.computed __type __id "kafka_settings";
       kinesis_settings =
         Prop.computed __type __id "kinesis_settings";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       mongodb_settings =
         Prop.computed __type __id "mongodb_settings";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       postgres_settings =
         Prop.computed __type __id "postgres_settings";
       redis_settings = Prop.computed __type __id "redis_settings";
       redshift_settings =
         Prop.computed __type __id "redshift_settings";
       s3_settings = Prop.computed __type __id "s3_settings";
       secrets_manager_access_role_arn =
         Prop.computed __type __id "secrets_manager_access_role_arn";
       secrets_manager_arn =
         Prop.computed __type __id "secrets_manager_arn";
       server_name = Prop.computed __type __id "server_name";
       service_access_role =
         Prop.computed __type __id "service_access_role";
       ssl_mode = Prop.computed __type __id "ssl_mode";
       tags = Prop.computed __type __id "tags";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_endpoint
        (aws_dms_endpoint ?id ?tags ~endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~endpoint_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~endpoint_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
