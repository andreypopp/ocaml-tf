(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type elasticsearch_settings

val elasticsearch_settings :
  ?error_retry_duration:float prop ->
  ?full_load_error_percentage:float prop ->
  ?use_new_mapping_type:bool prop ->
  endpoint_uri:string prop ->
  service_access_role_arn:string prop ->
  unit ->
  elasticsearch_settings

type kafka_settings

val kafka_settings :
  ?include_control_details:bool prop ->
  ?include_null_and_empty:bool prop ->
  ?include_partition_value:bool prop ->
  ?include_table_alter_operations:bool prop ->
  ?include_transaction_details:bool prop ->
  ?message_format:string prop ->
  ?message_max_bytes:float prop ->
  ?no_hex_prefix:bool prop ->
  ?partition_include_schema_table:bool prop ->
  ?sasl_password:string prop ->
  ?sasl_username:string prop ->
  ?security_protocol:string prop ->
  ?ssl_ca_certificate_arn:string prop ->
  ?ssl_client_certificate_arn:string prop ->
  ?ssl_client_key_arn:string prop ->
  ?ssl_client_key_password:string prop ->
  ?topic:string prop ->
  broker:string prop ->
  unit ->
  kafka_settings

type kinesis_settings

val kinesis_settings :
  ?include_control_details:bool prop ->
  ?include_null_and_empty:bool prop ->
  ?include_partition_value:bool prop ->
  ?include_table_alter_operations:bool prop ->
  ?include_transaction_details:bool prop ->
  ?message_format:string prop ->
  ?partition_include_schema_table:bool prop ->
  ?service_access_role_arn:string prop ->
  ?stream_arn:string prop ->
  unit ->
  kinesis_settings

type mongodb_settings

val mongodb_settings :
  ?auth_mechanism:string prop ->
  ?auth_source:string prop ->
  ?auth_type:string prop ->
  ?docs_to_investigate:string prop ->
  ?extract_doc_id:string prop ->
  ?nesting_level:string prop ->
  unit ->
  mongodb_settings

type postgres_settings

val postgres_settings :
  ?after_connect_script:string prop ->
  ?babelfish_database_name:string prop ->
  ?capture_ddls:bool prop ->
  ?database_mode:string prop ->
  ?ddl_artifacts_schema:string prop ->
  ?execute_timeout:float prop ->
  ?fail_tasks_on_lob_truncation:bool prop ->
  ?heartbeat_enable:bool prop ->
  ?heartbeat_frequency:float prop ->
  ?heartbeat_schema:string prop ->
  ?map_boolean_as_boolean:bool prop ->
  ?map_jsonb_as_clob:bool prop ->
  ?map_long_varchar_as:string prop ->
  ?max_file_size:float prop ->
  ?plugin_name:string prop ->
  ?slot_name:string prop ->
  unit ->
  postgres_settings

type redis_settings

val redis_settings :
  ?auth_password:string prop ->
  ?auth_user_name:string prop ->
  ?ssl_ca_certificate_arn:string prop ->
  ?ssl_security_protocol:string prop ->
  auth_type:string prop ->
  port:float prop ->
  server_name:string prop ->
  unit ->
  redis_settings

type redshift_settings

val redshift_settings :
  ?bucket_folder:string prop ->
  ?bucket_name:string prop ->
  ?encryption_mode:string prop ->
  ?server_side_encryption_kms_key_id:string prop ->
  ?service_access_role_arn:string prop ->
  unit ->
  redshift_settings

type s3_settings

val s3_settings :
  ?add_column_name:bool prop ->
  ?bucket_folder:string prop ->
  ?bucket_name:string prop ->
  ?canned_acl_for_objects:string prop ->
  ?cdc_inserts_and_updates:bool prop ->
  ?cdc_inserts_only:bool prop ->
  ?cdc_max_batch_interval:float prop ->
  ?cdc_min_file_size:float prop ->
  ?cdc_path:string prop ->
  ?compression_type:string prop ->
  ?csv_delimiter:string prop ->
  ?csv_no_sup_value:string prop ->
  ?csv_null_value:string prop ->
  ?csv_row_delimiter:string prop ->
  ?data_format:string prop ->
  ?data_page_size:float prop ->
  ?date_partition_delimiter:string prop ->
  ?date_partition_enabled:bool prop ->
  ?date_partition_sequence:string prop ->
  ?dict_page_size_limit:float prop ->
  ?enable_statistics:bool prop ->
  ?encoding_type:string prop ->
  ?encryption_mode:string prop ->
  ?external_table_definition:string prop ->
  ?glue_catalog_generation:bool prop ->
  ?ignore_header_rows:float prop ->
  ?include_op_for_full_load:bool prop ->
  ?max_file_size:float prop ->
  ?parquet_timestamp_in_millisecond:bool prop ->
  ?parquet_version:string prop ->
  ?preserve_transactions:bool prop ->
  ?rfc_4180:bool prop ->
  ?row_group_length:float prop ->
  ?server_side_encryption_kms_key_id:string prop ->
  ?service_access_role_arn:string prop ->
  ?timestamp_column_name:string prop ->
  ?use_csv_no_sup_value:bool prop ->
  ?use_task_start_time_for_full_load_timestamp:bool prop ->
  unit ->
  s3_settings

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dms_endpoint

val aws_dms_endpoint :
  ?certificate_arn:string prop ->
  ?database_name:string prop ->
  ?extra_connection_attributes:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?password:string prop ->
  ?pause_replication_tasks:bool prop ->
  ?port:float prop ->
  ?secrets_manager_access_role_arn:string prop ->
  ?secrets_manager_arn:string prop ->
  ?server_name:string prop ->
  ?service_access_role:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  engine_name:string prop ->
  elasticsearch_settings:elasticsearch_settings list ->
  kafka_settings:kafka_settings list ->
  kinesis_settings:kinesis_settings list ->
  mongodb_settings:mongodb_settings list ->
  postgres_settings:postgres_settings list ->
  redis_settings:redis_settings list ->
  redshift_settings:redshift_settings list ->
  s3_settings:s3_settings list ->
  unit ->
  aws_dms_endpoint

val yojson_of_aws_dms_endpoint : aws_dms_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_arn:string prop ->
  ?database_name:string prop ->
  ?extra_connection_attributes:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?password:string prop ->
  ?pause_replication_tasks:bool prop ->
  ?port:float prop ->
  ?secrets_manager_access_role_arn:string prop ->
  ?secrets_manager_arn:string prop ->
  ?server_name:string prop ->
  ?service_access_role:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  engine_name:string prop ->
  elasticsearch_settings:elasticsearch_settings list ->
  kafka_settings:kafka_settings list ->
  kinesis_settings:kinesis_settings list ->
  mongodb_settings:mongodb_settings list ->
  postgres_settings:postgres_settings list ->
  redis_settings:redis_settings list ->
  redshift_settings:redshift_settings list ->
  s3_settings:s3_settings list ->
  string ->
  t

val make :
  ?certificate_arn:string prop ->
  ?database_name:string prop ->
  ?extra_connection_attributes:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?password:string prop ->
  ?pause_replication_tasks:bool prop ->
  ?port:float prop ->
  ?secrets_manager_access_role_arn:string prop ->
  ?secrets_manager_arn:string prop ->
  ?server_name:string prop ->
  ?service_access_role:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  engine_name:string prop ->
  elasticsearch_settings:elasticsearch_settings list ->
  kafka_settings:kafka_settings list ->
  kinesis_settings:kinesis_settings list ->
  mongodb_settings:mongodb_settings list ->
  postgres_settings:postgres_settings list ->
  redis_settings:redis_settings list ->
  redshift_settings:redshift_settings list ->
  s3_settings:s3_settings list ->
  string ->
  t Tf_core.resource
