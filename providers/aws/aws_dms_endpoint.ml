(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type elasticsearch_settings = {
  endpoint_uri : string prop;
  error_retry_duration : float prop option; [@option]
  full_load_error_percentage : float prop option; [@option]
  service_access_role_arn : string prop;
  use_new_mapping_type : bool prop option; [@option]
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
       use_new_mapping_type = v_use_new_mapping_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_new_mapping_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_new_mapping_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
       in
       let bnds =
         match v_full_load_error_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "full_load_error_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "error_retry_duration", arg in
             bnd :: bnds
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
  include_control_details : bool prop option; [@option]
  include_null_and_empty : bool prop option; [@option]
  include_partition_value : bool prop option; [@option]
  include_table_alter_operations : bool prop option; [@option]
  include_transaction_details : bool prop option; [@option]
  message_format : string prop option; [@option]
  message_max_bytes : float prop option; [@option]
  no_hex_prefix : bool prop option; [@option]
  partition_include_schema_table : bool prop option; [@option]
  sasl_password : string prop option; [@option]
  sasl_username : string prop option; [@option]
  security_protocol : string prop option; [@option]
  ssl_ca_certificate_arn : string prop option; [@option]
  ssl_client_certificate_arn : string prop option; [@option]
  ssl_client_key_arn : string prop option; [@option]
  ssl_client_key_password : string prop option; [@option]
  topic : string prop option; [@option]
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
         match v_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_client_key_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_client_key_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_client_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_client_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_client_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_client_certificate_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_ca_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_ca_certificate_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sasl_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sasl_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sasl_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sasl_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_include_schema_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "partition_include_schema_table", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_hex_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_hex_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_max_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "message_max_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_transaction_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_transaction_details", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_table_alter_operations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_table_alter_operations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_partition_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_partition_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_null_and_empty with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_null_and_empty", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_control_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_control_details", arg in
             bnd :: bnds
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
  include_control_details : bool prop option; [@option]
  include_null_and_empty : bool prop option; [@option]
  include_partition_value : bool prop option; [@option]
  include_table_alter_operations : bool prop option; [@option]
  include_transaction_details : bool prop option; [@option]
  message_format : string prop option; [@option]
  partition_include_schema_table : bool prop option; [@option]
  service_access_role_arn : string prop option; [@option]
  stream_arn : string prop option; [@option]
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
         match v_stream_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_include_schema_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "partition_include_schema_table", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_transaction_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_transaction_details", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_table_alter_operations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_table_alter_operations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_partition_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_partition_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_null_and_empty with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_null_and_empty", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_control_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_control_details", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kinesis_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_settings

[@@@deriving.end]

type mongodb_settings = {
  auth_mechanism : string prop option; [@option]
  auth_source : string prop option; [@option]
  auth_type : string prop option; [@option]
  docs_to_investigate : string prop option; [@option]
  extract_doc_id : string prop option; [@option]
  nesting_level : string prop option; [@option]
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
         match v_nesting_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nesting_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extract_doc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extract_doc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docs_to_investigate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docs_to_investigate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_mechanism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_mechanism", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mongodb_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodb_settings

[@@@deriving.end]

type postgres_settings = {
  after_connect_script : string prop option; [@option]
  babelfish_database_name : string prop option; [@option]
  capture_ddls : bool prop option; [@option]
  database_mode : string prop option; [@option]
  ddl_artifacts_schema : string prop option; [@option]
  execute_timeout : float prop option; [@option]
  fail_tasks_on_lob_truncation : bool prop option; [@option]
  heartbeat_enable : bool prop option; [@option]
  heartbeat_frequency : float prop option; [@option]
  heartbeat_schema : string prop option; [@option]
  map_boolean_as_boolean : bool prop option; [@option]
  map_jsonb_as_clob : bool prop option; [@option]
  map_long_varchar_as : string prop option; [@option]
  max_file_size : float prop option; [@option]
  plugin_name : string prop option; [@option]
  slot_name : string prop option; [@option]
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
         match v_slot_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slot_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_plugin_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plugin_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_file_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_file_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_map_long_varchar_as with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "map_long_varchar_as", arg in
             bnd :: bnds
       in
       let bnds =
         match v_map_jsonb_as_clob with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "map_jsonb_as_clob", arg in
             bnd :: bnds
       in
       let bnds =
         match v_map_boolean_as_boolean with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "map_boolean_as_boolean", arg in
             bnd :: bnds
       in
       let bnds =
         match v_heartbeat_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "heartbeat_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_heartbeat_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "heartbeat_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_heartbeat_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "heartbeat_enable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fail_tasks_on_lob_truncation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_tasks_on_lob_truncation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execute_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "execute_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ddl_artifacts_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ddl_artifacts_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capture_ddls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "capture_ddls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_babelfish_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "babelfish_database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_after_connect_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "after_connect_script", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : postgres_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgres_settings

[@@@deriving.end]

type redis_settings = {
  auth_password : string prop option; [@option]
  auth_type : string prop;
  auth_user_name : string prop option; [@option]
  port : float prop;
  server_name : string prop;
  ssl_ca_certificate_arn : string prop option; [@option]
  ssl_security_protocol : string prop option; [@option]
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
         match v_ssl_security_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_security_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_ca_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_ca_certificate_arn", arg in
             bnd :: bnds
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
         match v_auth_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_user_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         match v_auth_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redis_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_settings

[@@@deriving.end]

type redshift_settings = {
  bucket_folder : string prop option; [@option]
  bucket_name : string prop option; [@option]
  encryption_mode : string prop option; [@option]
  server_side_encryption_kms_key_id : string prop option; [@option]
  service_access_role_arn : string prop option; [@option]
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
         match v_service_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_side_encryption_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_side_encryption_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_folder", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redshift_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift_settings

[@@@deriving.end]

type s3_settings = {
  add_column_name : bool prop option; [@option]
  bucket_folder : string prop option; [@option]
  bucket_name : string prop option; [@option]
  canned_acl_for_objects : string prop option; [@option]
  cdc_inserts_and_updates : bool prop option; [@option]
  cdc_inserts_only : bool prop option; [@option]
  cdc_max_batch_interval : float prop option; [@option]
  cdc_min_file_size : float prop option; [@option]
  cdc_path : string prop option; [@option]
  compression_type : string prop option; [@option]
  csv_delimiter : string prop option; [@option]
  csv_no_sup_value : string prop option; [@option]
  csv_null_value : string prop option; [@option]
  csv_row_delimiter : string prop option; [@option]
  data_format : string prop option; [@option]
  data_page_size : float prop option; [@option]
  date_partition_delimiter : string prop option; [@option]
  date_partition_enabled : bool prop option; [@option]
  date_partition_sequence : string prop option; [@option]
  dict_page_size_limit : float prop option; [@option]
  enable_statistics : bool prop option; [@option]
  encoding_type : string prop option; [@option]
  encryption_mode : string prop option; [@option]
  external_table_definition : string prop option; [@option]
  glue_catalog_generation : bool prop option; [@option]
  ignore_header_rows : float prop option; [@option]
  include_op_for_full_load : bool prop option; [@option]
  max_file_size : float prop option; [@option]
  parquet_timestamp_in_millisecond : bool prop option; [@option]
  parquet_version : string prop option; [@option]
  preserve_transactions : bool prop option; [@option]
  rfc_4180 : bool prop option; [@option]
  row_group_length : float prop option; [@option]
  server_side_encryption_kms_key_id : string prop option; [@option]
  service_access_role_arn : string prop option; [@option]
  timestamp_column_name : string prop option; [@option]
  use_csv_no_sup_value : bool prop option; [@option]
  use_task_start_time_for_full_load_timestamp : bool prop option;
      [@option]
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
         match v_use_task_start_time_for_full_load_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "use_task_start_time_for_full_load_timestamp", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_use_csv_no_sup_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_csv_no_sup_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timestamp_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_column_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_side_encryption_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_side_encryption_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_row_group_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "row_group_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rfc_4180 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rfc_4180", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_transactions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_transactions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parquet_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parquet_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parquet_timestamp_in_millisecond with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "parquet_timestamp_in_millisecond", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_file_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_file_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_op_for_full_load with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_op_for_full_load", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_header_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ignore_header_rows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_glue_catalog_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "glue_catalog_generation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_table_definition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_table_definition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_statistics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_statistics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dict_page_size_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dict_page_size_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_partition_sequence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_partition_sequence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_partition_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "date_partition_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date_partition_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_partition_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_page_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_page_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csv_row_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "csv_row_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csv_null_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "csv_null_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csv_no_sup_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "csv_no_sup_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csv_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "csv_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdc_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_min_file_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cdc_min_file_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_max_batch_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cdc_max_batch_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_inserts_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cdc_inserts_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_inserts_and_updates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cdc_inserts_and_updates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_canned_acl_for_objects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl_for_objects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_folder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "add_column_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_dms_endpoint = {
  certificate_arn : string prop option; [@option]
  database_name : string prop option; [@option]
  endpoint_id : string prop;
  endpoint_type : string prop;
  engine_name : string prop;
  extra_connection_attributes : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  password : string prop option; [@option]
  pause_replication_tasks : bool prop option; [@option]
  port : float prop option; [@option]
  secrets_manager_access_role_arn : string prop option; [@option]
  secrets_manager_arn : string prop option; [@option]
  server_name : string prop option; [@option]
  service_access_role : string prop option; [@option]
  ssl_mode : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  username : string prop option; [@option]
  elasticsearch_settings : elasticsearch_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kafka_settings : kafka_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_settings : kinesis_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mongodb_settings : mongodb_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgres_settings : postgres_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redis_settings : redis_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redshift_settings : redshift_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_settings : s3_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_endpoint) -> ()

let yojson_of_aws_dms_endpoint =
  (function
   | {
       certificate_arn = v_certificate_arn;
       database_name = v_database_name;
       endpoint_id = v_endpoint_id;
       endpoint_type = v_endpoint_type;
       engine_name = v_engine_name;
       extra_connection_attributes = v_extra_connection_attributes;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       password = v_password;
       pause_replication_tasks = v_pause_replication_tasks;
       port = v_port;
       secrets_manager_access_role_arn =
         v_secrets_manager_access_role_arn;
       secrets_manager_arn = v_secrets_manager_arn;
       server_name = v_server_name;
       service_access_role = v_service_access_role;
       ssl_mode = v_ssl_mode;
       tags = v_tags;
       tags_all = v_tags_all;
       username = v_username;
       elasticsearch_settings = v_elasticsearch_settings;
       kafka_settings = v_kafka_settings;
       kinesis_settings = v_kinesis_settings;
       mongodb_settings = v_mongodb_settings;
       postgres_settings = v_postgres_settings;
       redis_settings = v_redis_settings;
       redshift_settings = v_redshift_settings;
       s3_settings = v_s3_settings;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_settings) v_s3_settings
           in
           let bnd = "s3_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_redshift_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_redshift_settings)
               v_redshift_settings
           in
           let bnd = "redshift_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_redis_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_redis_settings)
               v_redis_settings
           in
           let bnd = "redis_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_postgres_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_postgres_settings)
               v_postgres_settings
           in
           let bnd = "postgres_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mongodb_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mongodb_settings)
               v_mongodb_settings
           in
           let bnd = "mongodb_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kinesis_settings)
               v_kinesis_settings
           in
           let bnd = "kinesis_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kafka_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kafka_settings)
               v_kafka_settings
           in
           let bnd = "kafka_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elasticsearch_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elasticsearch_settings)
               v_elasticsearch_settings
           in
           let bnd = "elasticsearch_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_access_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_access_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets_manager_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secrets_manager_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secrets_manager_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secrets_manager_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pause_replication_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pause_replication_tasks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         match v_extra_connection_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extra_connection_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_name in
         ("engine_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_id in
         ("endpoint_id", arg) :: bnds
       in
       let bnds =
         match v_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dms_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_endpoint

[@@@deriving.end]

let elasticsearch_settings ?error_retry_duration
    ?full_load_error_percentage ?use_new_mapping_type ~endpoint_uri
    ~service_access_role_arn () : elasticsearch_settings =
  {
    endpoint_uri;
    error_retry_duration;
    full_load_error_percentage;
    service_access_role_arn;
    use_new_mapping_type;
  }

let kafka_settings ?include_control_details ?include_null_and_empty
    ?include_partition_value ?include_table_alter_operations
    ?include_transaction_details ?message_format ?message_max_bytes
    ?no_hex_prefix ?partition_include_schema_table ?sasl_password
    ?sasl_username ?security_protocol ?ssl_ca_certificate_arn
    ?ssl_client_certificate_arn ?ssl_client_key_arn
    ?ssl_client_key_password ?topic ~broker () : kafka_settings =
  {
    broker;
    include_control_details;
    include_null_and_empty;
    include_partition_value;
    include_table_alter_operations;
    include_transaction_details;
    message_format;
    message_max_bytes;
    no_hex_prefix;
    partition_include_schema_table;
    sasl_password;
    sasl_username;
    security_protocol;
    ssl_ca_certificate_arn;
    ssl_client_certificate_arn;
    ssl_client_key_arn;
    ssl_client_key_password;
    topic;
  }

let kinesis_settings ?include_control_details ?include_null_and_empty
    ?include_partition_value ?include_table_alter_operations
    ?include_transaction_details ?message_format
    ?partition_include_schema_table ?service_access_role_arn
    ?stream_arn () : kinesis_settings =
  {
    include_control_details;
    include_null_and_empty;
    include_partition_value;
    include_table_alter_operations;
    include_transaction_details;
    message_format;
    partition_include_schema_table;
    service_access_role_arn;
    stream_arn;
  }

let mongodb_settings ?auth_mechanism ?auth_source ?auth_type
    ?docs_to_investigate ?extract_doc_id ?nesting_level () :
    mongodb_settings =
  {
    auth_mechanism;
    auth_source;
    auth_type;
    docs_to_investigate;
    extract_doc_id;
    nesting_level;
  }

let postgres_settings ?after_connect_script ?babelfish_database_name
    ?capture_ddls ?database_mode ?ddl_artifacts_schema
    ?execute_timeout ?fail_tasks_on_lob_truncation ?heartbeat_enable
    ?heartbeat_frequency ?heartbeat_schema ?map_boolean_as_boolean
    ?map_jsonb_as_clob ?map_long_varchar_as ?max_file_size
    ?plugin_name ?slot_name () : postgres_settings =
  {
    after_connect_script;
    babelfish_database_name;
    capture_ddls;
    database_mode;
    ddl_artifacts_schema;
    execute_timeout;
    fail_tasks_on_lob_truncation;
    heartbeat_enable;
    heartbeat_frequency;
    heartbeat_schema;
    map_boolean_as_boolean;
    map_jsonb_as_clob;
    map_long_varchar_as;
    max_file_size;
    plugin_name;
    slot_name;
  }

let redis_settings ?auth_password ?auth_user_name
    ?ssl_ca_certificate_arn ?ssl_security_protocol ~auth_type ~port
    ~server_name () : redis_settings =
  {
    auth_password;
    auth_type;
    auth_user_name;
    port;
    server_name;
    ssl_ca_certificate_arn;
    ssl_security_protocol;
  }

let redshift_settings ?bucket_folder ?bucket_name ?encryption_mode
    ?server_side_encryption_kms_key_id ?service_access_role_arn () :
    redshift_settings =
  {
    bucket_folder;
    bucket_name;
    encryption_mode;
    server_side_encryption_kms_key_id;
    service_access_role_arn;
  }

let s3_settings ?add_column_name ?bucket_folder ?bucket_name
    ?canned_acl_for_objects ?cdc_inserts_and_updates
    ?cdc_inserts_only ?cdc_max_batch_interval ?cdc_min_file_size
    ?cdc_path ?compression_type ?csv_delimiter ?csv_no_sup_value
    ?csv_null_value ?csv_row_delimiter ?data_format ?data_page_size
    ?date_partition_delimiter ?date_partition_enabled
    ?date_partition_sequence ?dict_page_size_limit ?enable_statistics
    ?encoding_type ?encryption_mode ?external_table_definition
    ?glue_catalog_generation ?ignore_header_rows
    ?include_op_for_full_load ?max_file_size
    ?parquet_timestamp_in_millisecond ?parquet_version
    ?preserve_transactions ?rfc_4180 ?row_group_length
    ?server_side_encryption_kms_key_id ?service_access_role_arn
    ?timestamp_column_name ?use_csv_no_sup_value
    ?use_task_start_time_for_full_load_timestamp () : s3_settings =
  {
    add_column_name;
    bucket_folder;
    bucket_name;
    canned_acl_for_objects;
    cdc_inserts_and_updates;
    cdc_inserts_only;
    cdc_max_batch_interval;
    cdc_min_file_size;
    cdc_path;
    compression_type;
    csv_delimiter;
    csv_no_sup_value;
    csv_null_value;
    csv_row_delimiter;
    data_format;
    data_page_size;
    date_partition_delimiter;
    date_partition_enabled;
    date_partition_sequence;
    dict_page_size_limit;
    enable_statistics;
    encoding_type;
    encryption_mode;
    external_table_definition;
    glue_catalog_generation;
    ignore_header_rows;
    include_op_for_full_load;
    max_file_size;
    parquet_timestamp_in_millisecond;
    parquet_version;
    preserve_transactions;
    rfc_4180;
    row_group_length;
    server_side_encryption_kms_key_id;
    service_access_role_arn;
    timestamp_column_name;
    use_csv_no_sup_value;
    use_task_start_time_for_full_load_timestamp;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dms_endpoint ?certificate_arn ?database_name
    ?extra_connection_attributes ?id ?kms_key_arn ?password
    ?pause_replication_tasks ?port ?secrets_manager_access_role_arn
    ?secrets_manager_arn ?server_name ?service_access_role ?ssl_mode
    ?tags ?tags_all ?username ?(elasticsearch_settings = [])
    ?(kafka_settings = []) ?(kinesis_settings = [])
    ?(mongodb_settings = []) ?(postgres_settings = [])
    ?(redis_settings = []) ?(redshift_settings = [])
    ?(s3_settings = []) ?timeouts ~endpoint_id ~endpoint_type
    ~engine_name () : aws_dms_endpoint =
  {
    certificate_arn;
    database_name;
    endpoint_id;
    endpoint_type;
    engine_name;
    extra_connection_attributes;
    id;
    kms_key_arn;
    password;
    pause_replication_tasks;
    port;
    secrets_manager_access_role_arn;
    secrets_manager_arn;
    server_name;
    service_access_role;
    ssl_mode;
    tags;
    tags_all;
    username;
    elasticsearch_settings;
    kafka_settings;
    kinesis_settings;
    mongodb_settings;
    postgres_settings;
    redis_settings;
    redshift_settings;
    s3_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_arn : string prop;
  database_name : string prop;
  endpoint_arn : string prop;
  endpoint_id : string prop;
  endpoint_type : string prop;
  engine_name : string prop;
  extra_connection_attributes : string prop;
  id : string prop;
  kms_key_arn : string prop;
  password : string prop;
  pause_replication_tasks : bool prop;
  port : float prop;
  secrets_manager_access_role_arn : string prop;
  secrets_manager_arn : string prop;
  server_name : string prop;
  service_access_role : string prop;
  ssl_mode : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  username : string prop;
}

let make ?certificate_arn ?database_name ?extra_connection_attributes
    ?id ?kms_key_arn ?password ?pause_replication_tasks ?port
    ?secrets_manager_access_role_arn ?secrets_manager_arn
    ?server_name ?service_access_role ?ssl_mode ?tags ?tags_all
    ?username ?(elasticsearch_settings = []) ?(kafka_settings = [])
    ?(kinesis_settings = []) ?(mongodb_settings = [])
    ?(postgres_settings = []) ?(redis_settings = [])
    ?(redshift_settings = []) ?(s3_settings = []) ?timeouts
    ~endpoint_id ~endpoint_type ~engine_name __id =
  let __type = "aws_dms_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_arn = Prop.computed __type __id "certificate_arn";
       database_name = Prop.computed __type __id "database_name";
       endpoint_arn = Prop.computed __type __id "endpoint_arn";
       endpoint_id = Prop.computed __type __id "endpoint_id";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       engine_name = Prop.computed __type __id "engine_name";
       extra_connection_attributes =
         Prop.computed __type __id "extra_connection_attributes";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       password = Prop.computed __type __id "password";
       pause_replication_tasks =
         Prop.computed __type __id "pause_replication_tasks";
       port = Prop.computed __type __id "port";
       secrets_manager_access_role_arn =
         Prop.computed __type __id "secrets_manager_access_role_arn";
       secrets_manager_arn =
         Prop.computed __type __id "secrets_manager_arn";
       server_name = Prop.computed __type __id "server_name";
       service_access_role =
         Prop.computed __type __id "service_access_role";
       ssl_mode = Prop.computed __type __id "ssl_mode";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_endpoint
        (aws_dms_endpoint ?certificate_arn ?database_name
           ?extra_connection_attributes ?id ?kms_key_arn ?password
           ?pause_replication_tasks ?port
           ?secrets_manager_access_role_arn ?secrets_manager_arn
           ?server_name ?service_access_role ?ssl_mode ?tags
           ?tags_all ?username ~elasticsearch_settings
           ~kafka_settings ~kinesis_settings ~mongodb_settings
           ~postgres_settings ~redis_settings ~redshift_settings
           ~s3_settings ?timeouts ~endpoint_id ~endpoint_type
           ~engine_name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_arn ?database_name
    ?extra_connection_attributes ?id ?kms_key_arn ?password
    ?pause_replication_tasks ?port ?secrets_manager_access_role_arn
    ?secrets_manager_arn ?server_name ?service_access_role ?ssl_mode
    ?tags ?tags_all ?username ?(elasticsearch_settings = [])
    ?(kafka_settings = []) ?(kinesis_settings = [])
    ?(mongodb_settings = []) ?(postgres_settings = [])
    ?(redis_settings = []) ?(redshift_settings = [])
    ?(s3_settings = []) ?timeouts ~endpoint_id ~endpoint_type
    ~engine_name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_arn ?database_name ?extra_connection_attributes
      ?id ?kms_key_arn ?password ?pause_replication_tasks ?port
      ?secrets_manager_access_role_arn ?secrets_manager_arn
      ?server_name ?service_access_role ?ssl_mode ?tags ?tags_all
      ?username ~elasticsearch_settings ~kafka_settings
      ~kinesis_settings ~mongodb_settings ~postgres_settings
      ~redis_settings ~redshift_settings ~s3_settings ?timeouts
      ~endpoint_id ~endpoint_type ~engine_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
