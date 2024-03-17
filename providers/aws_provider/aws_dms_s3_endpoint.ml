(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_s3_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dms_s3_endpoint__timeouts *)

type aws_dms_s3_endpoint = {
  add_column_name : bool option; [@option]  (** add_column_name *)
  add_trailing_padding_character : bool option; [@option]
      (** add_trailing_padding_character *)
  bucket_folder : string option; [@option]  (** bucket_folder *)
  bucket_name : string;  (** bucket_name *)
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
  date_partition_timezone : string option; [@option]
      (** date_partition_timezone *)
  detach_target_on_lob_lookup_failure_parquet : bool option;
      [@option]
      (** detach_target_on_lob_lookup_failure_parquet *)
  dict_page_size_limit : float option; [@option]
      (** dict_page_size_limit *)
  enable_statistics : bool option; [@option]
      (** enable_statistics *)
  encoding_type : string option; [@option]  (** encoding_type *)
  encryption_mode : string option; [@option]  (** encryption_mode *)
  endpoint_id : string;  (** endpoint_id *)
  endpoint_type : string;  (** endpoint_type *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
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
  service_access_role_arn : string;  (** service_access_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  timestamp_column_name : string option; [@option]
      (** timestamp_column_name *)
  use_csv_no_sup_value : bool option; [@option]
      (** use_csv_no_sup_value *)
  use_task_start_time_for_full_load_timestamp : bool option;
      [@option]
      (** use_task_start_time_for_full_load_timestamp *)
  timeouts : aws_dms_s3_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_s3_endpoint *)

let aws_dms_s3_endpoint ?add_column_name
    ?add_trailing_padding_character ?bucket_folder
    ?canned_acl_for_objects ?cdc_inserts_and_updates
    ?cdc_inserts_only ?cdc_max_batch_interval ?cdc_min_file_size
    ?cdc_path ?compression_type ?csv_delimiter ?csv_no_sup_value
    ?csv_null_value ?csv_row_delimiter ?data_format ?data_page_size
    ?date_partition_delimiter ?date_partition_enabled
    ?date_partition_sequence ?date_partition_timezone
    ?detach_target_on_lob_lookup_failure_parquet
    ?dict_page_size_limit ?enable_statistics ?encoding_type
    ?encryption_mode ?expected_bucket_owner
    ?external_table_definition ?glue_catalog_generation
    ?ignore_header_rows ?include_op_for_full_load ?max_file_size
    ?parquet_timestamp_in_millisecond ?parquet_version
    ?preserve_transactions ?rfc_4180 ?row_group_length
    ?server_side_encryption_kms_key_id ?tags ?timestamp_column_name
    ?use_csv_no_sup_value
    ?use_task_start_time_for_full_load_timestamp ?timeouts
    ~bucket_name ~endpoint_id ~endpoint_type ~service_access_role_arn
    __resource_id =
  let __resource_type = "aws_dms_s3_endpoint" in
  let __resource =
    {
      add_column_name;
      add_trailing_padding_character;
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
      date_partition_timezone;
      detach_target_on_lob_lookup_failure_parquet;
      dict_page_size_limit;
      enable_statistics;
      encoding_type;
      encryption_mode;
      endpoint_id;
      endpoint_type;
      expected_bucket_owner;
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
      tags;
      timestamp_column_name;
      use_csv_no_sup_value;
      use_task_start_time_for_full_load_timestamp;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_s3_endpoint __resource);
  ()
