(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_s3_endpoint__timeouts
type aws_dms_s3_endpoint

val aws_dms_s3_endpoint :
  ?add_column_name:bool ->
  ?add_trailing_padding_character:bool ->
  ?bucket_folder:string ->
  ?canned_acl_for_objects:string ->
  ?cdc_inserts_and_updates:bool ->
  ?cdc_inserts_only:bool ->
  ?cdc_max_batch_interval:float ->
  ?cdc_min_file_size:float ->
  ?cdc_path:string ->
  ?certificate_arn:string ->
  ?compression_type:string ->
  ?csv_delimiter:string ->
  ?csv_no_sup_value:string ->
  ?csv_null_value:string ->
  ?csv_row_delimiter:string ->
  ?data_format:string ->
  ?data_page_size:float ->
  ?date_partition_delimiter:string ->
  ?date_partition_enabled:bool ->
  ?date_partition_sequence:string ->
  ?date_partition_timezone:string ->
  ?detach_target_on_lob_lookup_failure_parquet:bool ->
  ?dict_page_size_limit:float ->
  ?enable_statistics:bool ->
  ?encoding_type:string ->
  ?encryption_mode:string ->
  ?expected_bucket_owner:string ->
  ?external_table_definition:string ->
  ?glue_catalog_generation:bool ->
  ?id:string ->
  ?ignore_header_rows:float ->
  ?include_op_for_full_load:bool ->
  ?kms_key_arn:string ->
  ?max_file_size:float ->
  ?parquet_timestamp_in_millisecond:bool ->
  ?parquet_version:string ->
  ?preserve_transactions:bool ->
  ?rfc_4180:bool ->
  ?row_group_length:float ->
  ?server_side_encryption_kms_key_id:string ->
  ?ssl_mode:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timestamp_column_name:string ->
  ?use_csv_no_sup_value:bool ->
  ?use_task_start_time_for_full_load_timestamp:bool ->
  ?timeouts:aws_dms_s3_endpoint__timeouts ->
  bucket_name:string ->
  endpoint_id:string ->
  endpoint_type:string ->
  service_access_role_arn:string ->
  string ->
  unit
