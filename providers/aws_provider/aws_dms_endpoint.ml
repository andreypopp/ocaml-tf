(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dms_endpoint__elasticsearch_settings = {
  endpoint_uri : string;  (** endpoint_uri *)
  error_retry_duration : float option; [@option]
      (** error_retry_duration *)
  full_load_error_percentage : float option; [@option]
      (** full_load_error_percentage *)
  service_access_role_arn : string;  (** service_access_role_arn *)
  use_new_mapping_type : bool option; [@option]
      (** use_new_mapping_type *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__elasticsearch_settings *)

type aws_dms_endpoint__kafka_settings = {
  broker : string;  (** broker *)
  include_control_details : bool option; [@option]
      (** include_control_details *)
  include_null_and_empty : bool option; [@option]
      (** include_null_and_empty *)
  include_partition_value : bool option; [@option]
      (** include_partition_value *)
  include_table_alter_operations : bool option; [@option]
      (** include_table_alter_operations *)
  include_transaction_details : bool option; [@option]
      (** include_transaction_details *)
  message_format : string option; [@option]  (** message_format *)
  message_max_bytes : float option; [@option]
      (** message_max_bytes *)
  no_hex_prefix : bool option; [@option]  (** no_hex_prefix *)
  partition_include_schema_table : bool option; [@option]
      (** partition_include_schema_table *)
  sasl_password : string option; [@option]  (** sasl_password *)
  sasl_username : string option; [@option]  (** sasl_username *)
  security_protocol : string option; [@option]
      (** security_protocol *)
  ssl_ca_certificate_arn : string option; [@option]
      (** ssl_ca_certificate_arn *)
  ssl_client_certificate_arn : string option; [@option]
      (** ssl_client_certificate_arn *)
  ssl_client_key_arn : string option; [@option]
      (** ssl_client_key_arn *)
  ssl_client_key_password : string option; [@option]
      (** ssl_client_key_password *)
  topic : string option; [@option]  (** topic *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__kafka_settings *)

type aws_dms_endpoint__kinesis_settings = {
  include_control_details : bool option; [@option]
      (** include_control_details *)
  include_null_and_empty : bool option; [@option]
      (** include_null_and_empty *)
  include_partition_value : bool option; [@option]
      (** include_partition_value *)
  include_table_alter_operations : bool option; [@option]
      (** include_table_alter_operations *)
  include_transaction_details : bool option; [@option]
      (** include_transaction_details *)
  message_format : string option; [@option]  (** message_format *)
  partition_include_schema_table : bool option; [@option]
      (** partition_include_schema_table *)
  service_access_role_arn : string option; [@option]
      (** service_access_role_arn *)
  stream_arn : string option; [@option]  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__kinesis_settings *)

type aws_dms_endpoint__mongodb_settings = {
  auth_mechanism : string option; [@option]  (** auth_mechanism *)
  auth_source : string option; [@option]  (** auth_source *)
  auth_type : string option; [@option]  (** auth_type *)
  docs_to_investigate : string option; [@option]
      (** docs_to_investigate *)
  extract_doc_id : string option; [@option]  (** extract_doc_id *)
  nesting_level : string option; [@option]  (** nesting_level *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__mongodb_settings *)

type aws_dms_endpoint__postgres_settings = {
  after_connect_script : string option; [@option]
      (** after_connect_script *)
  babelfish_database_name : string option; [@option]
      (** babelfish_database_name *)
  capture_ddls : bool option; [@option]  (** capture_ddls *)
  database_mode : string option; [@option]  (** database_mode *)
  ddl_artifacts_schema : string option; [@option]
      (** ddl_artifacts_schema *)
  execute_timeout : float option; [@option]  (** execute_timeout *)
  fail_tasks_on_lob_truncation : bool option; [@option]
      (** fail_tasks_on_lob_truncation *)
  heartbeat_enable : bool option; [@option]  (** heartbeat_enable *)
  heartbeat_frequency : float option; [@option]
      (** heartbeat_frequency *)
  heartbeat_schema : string option; [@option]
      (** heartbeat_schema *)
  map_boolean_as_boolean : bool option; [@option]
      (** map_boolean_as_boolean *)
  map_jsonb_as_clob : bool option; [@option]
      (** map_jsonb_as_clob *)
  map_long_varchar_as : string option; [@option]
      (** map_long_varchar_as *)
  max_file_size : float option; [@option]  (** max_file_size *)
  plugin_name : string option; [@option]  (** plugin_name *)
  slot_name : string option; [@option]  (** slot_name *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__postgres_settings *)

type aws_dms_endpoint__redis_settings = {
  auth_password : string option; [@option]  (** auth_password *)
  auth_type : string;  (** auth_type *)
  auth_user_name : string option; [@option]  (** auth_user_name *)
  port : float;  (** port *)
  server_name : string;  (** server_name *)
  ssl_ca_certificate_arn : string option; [@option]
      (** ssl_ca_certificate_arn *)
  ssl_security_protocol : string option; [@option]
      (** ssl_security_protocol *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__redis_settings *)

type aws_dms_endpoint__redshift_settings = {
  bucket_folder : string option; [@option]  (** bucket_folder *)
  bucket_name : string option; [@option]  (** bucket_name *)
  encryption_mode : string option; [@option]  (** encryption_mode *)
  server_side_encryption_kms_key_id : string option; [@option]
      (** server_side_encryption_kms_key_id *)
  service_access_role_arn : string option; [@option]
      (** service_access_role_arn *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__redshift_settings *)

type aws_dms_endpoint__s3_settings = {
  add_column_name : bool option; [@option]  (** add_column_name *)
  bucket_folder : string option; [@option]  (** bucket_folder *)
  bucket_name : string option; [@option]  (** bucket_name *)
  canned_acl_for_objects : string option; [@option]
      (** canned_acl_for_objects *)
  cdc_inserts_and_updates : bool option; [@option]
      (** cdc_inserts_and_updates *)
  cdc_inserts_only : bool option; [@option]  (** cdc_inserts_only *)
  cdc_max_batch_interval : float option; [@option]
      (** cdc_max_batch_interval *)
  cdc_min_file_size : float option; [@option]
      (** cdc_min_file_size *)
  cdc_path : string option; [@option]  (** cdc_path *)
  compression_type : string option; [@option]
      (** compression_type *)
  csv_delimiter : string option; [@option]  (** csv_delimiter *)
  csv_no_sup_value : string option; [@option]
      (** csv_no_sup_value *)
  csv_null_value : string option; [@option]  (** csv_null_value *)
  csv_row_delimiter : string option; [@option]
      (** csv_row_delimiter *)
  data_format : string option; [@option]  (** data_format *)
  data_page_size : float option; [@option]  (** data_page_size *)
  date_partition_delimiter : string option; [@option]
      (** date_partition_delimiter *)
  date_partition_enabled : bool option; [@option]
      (** date_partition_enabled *)
  date_partition_sequence : string option; [@option]
      (** date_partition_sequence *)
  dict_page_size_limit : float option; [@option]
      (** dict_page_size_limit *)
  enable_statistics : bool option; [@option]
      (** enable_statistics *)
  encoding_type : string option; [@option]  (** encoding_type *)
  encryption_mode : string option; [@option]  (** encryption_mode *)
  external_table_definition : string option; [@option]
      (** external_table_definition *)
  glue_catalog_generation : bool option; [@option]
      (** glue_catalog_generation *)
  ignore_header_rows : float option; [@option]
      (** ignore_header_rows *)
  include_op_for_full_load : bool option; [@option]
      (** include_op_for_full_load *)
  max_file_size : float option; [@option]  (** max_file_size *)
  parquet_timestamp_in_millisecond : bool option; [@option]
      (** parquet_timestamp_in_millisecond *)
  parquet_version : string option; [@option]  (** parquet_version *)
  preserve_transactions : bool option; [@option]
      (** preserve_transactions *)
  rfc_4180 : bool option; [@option]  (** rfc_4180 *)
  row_group_length : float option; [@option]  (** row_group_length *)
  server_side_encryption_kms_key_id : string option; [@option]
      (** server_side_encryption_kms_key_id *)
  service_access_role_arn : string option; [@option]
      (** service_access_role_arn *)
  timestamp_column_name : string option; [@option]
      (** timestamp_column_name *)
  use_csv_no_sup_value : bool option; [@option]
      (** use_csv_no_sup_value *)
  use_task_start_time_for_full_load_timestamp : bool option; [@option]
      (** use_task_start_time_for_full_load_timestamp *)
}
[@@deriving yojson_of]
(** This argument is deprecated and will be removed in a future version; use aws_dms_s3_endpoint instead *)

type aws_dms_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dms_endpoint__timeouts *)

type aws_dms_endpoint = {
  database_name : string option; [@option]  (** database_name *)
  endpoint_id : string;  (** endpoint_id *)
  endpoint_type : string;  (** endpoint_type *)
  engine_name : string;  (** engine_name *)
  password : string option; [@option]  (** password *)
  pause_replication_tasks : bool option; [@option]
      (** pause_replication_tasks *)
  port : float option; [@option]  (** port *)
  secrets_manager_access_role_arn : string option; [@option]
      (** secrets_manager_access_role_arn *)
  secrets_manager_arn : string option; [@option]
      (** secrets_manager_arn *)
  server_name : string option; [@option]  (** server_name *)
  service_access_role : string option; [@option]
      (** service_access_role *)
  tags : (string * string) list option; [@option]  (** tags *)
  username : string option; [@option]  (** username *)
  elasticsearch_settings :
    aws_dms_endpoint__elasticsearch_settings list;
  kafka_settings : aws_dms_endpoint__kafka_settings list;
  kinesis_settings : aws_dms_endpoint__kinesis_settings list;
  mongodb_settings : aws_dms_endpoint__mongodb_settings list;
  postgres_settings : aws_dms_endpoint__postgres_settings list;
  redis_settings : aws_dms_endpoint__redis_settings list;
  redshift_settings : aws_dms_endpoint__redshift_settings list;
  s3_settings : aws_dms_endpoint__s3_settings list;
  timeouts : aws_dms_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_endpoint *)

let aws_dms_endpoint ?database_name ?password
    ?pause_replication_tasks ?port ?secrets_manager_access_role_arn
    ?secrets_manager_arn ?server_name ?service_access_role ?tags
    ?username ?timeouts ~endpoint_id ~endpoint_type ~engine_name
    ~elasticsearch_settings ~kafka_settings ~kinesis_settings
    ~mongodb_settings ~postgres_settings ~redis_settings
    ~redshift_settings ~s3_settings __resource_id =
  let __resource_type = "aws_dms_endpoint" in
  let __resource =
    {
      database_name;
      endpoint_id;
      endpoint_type;
      engine_name;
      password;
      pause_replication_tasks;
      port;
      secrets_manager_access_role_arn;
      secrets_manager_arn;
      server_name;
      service_access_role;
      tags;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_endpoint __resource);
  ()
