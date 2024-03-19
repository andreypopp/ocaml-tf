(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dms_s3_endpoint

val aws_dms_s3_endpoint :
  ?add_column_name:bool prop ->
  ?add_trailing_padding_character:bool prop ->
  ?bucket_folder:string prop ->
  ?canned_acl_for_objects:string prop ->
  ?cdc_inserts_and_updates:bool prop ->
  ?cdc_inserts_only:bool prop ->
  ?cdc_max_batch_interval:float prop ->
  ?cdc_min_file_size:float prop ->
  ?cdc_path:string prop ->
  ?certificate_arn:string prop ->
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
  ?date_partition_timezone:string prop ->
  ?detach_target_on_lob_lookup_failure_parquet:bool prop ->
  ?dict_page_size_limit:float prop ->
  ?enable_statistics:bool prop ->
  ?encoding_type:string prop ->
  ?encryption_mode:string prop ->
  ?expected_bucket_owner:string prop ->
  ?external_table_definition:string prop ->
  ?glue_catalog_generation:bool prop ->
  ?id:string prop ->
  ?ignore_header_rows:float prop ->
  ?include_op_for_full_load:bool prop ->
  ?kms_key_arn:string prop ->
  ?max_file_size:float prop ->
  ?parquet_timestamp_in_millisecond:bool prop ->
  ?parquet_version:string prop ->
  ?preserve_transactions:bool prop ->
  ?rfc_4180:bool prop ->
  ?row_group_length:float prop ->
  ?server_side_encryption_kms_key_id:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timestamp_column_name:string prop ->
  ?use_csv_no_sup_value:bool prop ->
  ?use_task_start_time_for_full_load_timestamp:bool prop ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  service_access_role_arn:string prop ->
  unit ->
  aws_dms_s3_endpoint

val yojson_of_aws_dms_s3_endpoint : aws_dms_s3_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  add_column_name : bool prop;
  add_trailing_padding_character : bool prop;
  bucket_folder : string prop;
  bucket_name : string prop;
  canned_acl_for_objects : string prop;
  cdc_inserts_and_updates : bool prop;
  cdc_inserts_only : bool prop;
  cdc_max_batch_interval : float prop;
  cdc_min_file_size : float prop;
  cdc_path : string prop;
  certificate_arn : string prop;
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
  date_partition_timezone : string prop;
  detach_target_on_lob_lookup_failure_parquet : bool prop;
  dict_page_size_limit : float prop;
  enable_statistics : bool prop;
  encoding_type : string prop;
  encryption_mode : string prop;
  endpoint_arn : string prop;
  endpoint_id : string prop;
  endpoint_type : string prop;
  engine_display_name : string prop;
  expected_bucket_owner : string prop;
  external_id : string prop;
  external_table_definition : string prop;
  glue_catalog_generation : bool prop;
  id : string prop;
  ignore_header_rows : float prop;
  include_op_for_full_load : bool prop;
  kms_key_arn : string prop;
  max_file_size : float prop;
  parquet_timestamp_in_millisecond : bool prop;
  parquet_version : string prop;
  preserve_transactions : bool prop;
  rfc_4180 : bool prop;
  row_group_length : float prop;
  server_side_encryption_kms_key_id : string prop;
  service_access_role_arn : string prop;
  ssl_mode : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timestamp_column_name : string prop;
  use_csv_no_sup_value : bool prop;
  use_task_start_time_for_full_load_timestamp : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?add_column_name:bool prop ->
  ?add_trailing_padding_character:bool prop ->
  ?bucket_folder:string prop ->
  ?canned_acl_for_objects:string prop ->
  ?cdc_inserts_and_updates:bool prop ->
  ?cdc_inserts_only:bool prop ->
  ?cdc_max_batch_interval:float prop ->
  ?cdc_min_file_size:float prop ->
  ?cdc_path:string prop ->
  ?certificate_arn:string prop ->
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
  ?date_partition_timezone:string prop ->
  ?detach_target_on_lob_lookup_failure_parquet:bool prop ->
  ?dict_page_size_limit:float prop ->
  ?enable_statistics:bool prop ->
  ?encoding_type:string prop ->
  ?encryption_mode:string prop ->
  ?expected_bucket_owner:string prop ->
  ?external_table_definition:string prop ->
  ?glue_catalog_generation:bool prop ->
  ?id:string prop ->
  ?ignore_header_rows:float prop ->
  ?include_op_for_full_load:bool prop ->
  ?kms_key_arn:string prop ->
  ?max_file_size:float prop ->
  ?parquet_timestamp_in_millisecond:bool prop ->
  ?parquet_version:string prop ->
  ?preserve_transactions:bool prop ->
  ?rfc_4180:bool prop ->
  ?row_group_length:float prop ->
  ?server_side_encryption_kms_key_id:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timestamp_column_name:string prop ->
  ?use_csv_no_sup_value:bool prop ->
  ?use_task_start_time_for_full_load_timestamp:bool prop ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  service_access_role_arn:string prop ->
  string ->
  t
