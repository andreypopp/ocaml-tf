(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_s3_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dms_s3_endpoint__timeouts *)

type aws_dms_s3_endpoint = {
  add_column_name : bool prop option; [@option]
      (** add_column_name *)
  add_trailing_padding_character : bool prop option; [@option]
      (** add_trailing_padding_character *)
  bucket_folder : string prop option; [@option]  (** bucket_folder *)
  bucket_name : string prop;  (** bucket_name *)
  canned_acl_for_objects : string prop option; [@option]
      (** canned_acl_for_objects *)
  cdc_inserts_and_updates : bool prop option; [@option]
      (** cdc_inserts_and_updates *)
  cdc_inserts_only : bool prop option; [@option]
      (** cdc_inserts_only *)
  cdc_max_batch_interval : float prop option; [@option]
      (** cdc_max_batch_interval *)
  cdc_min_file_size : float prop option; [@option]
      (** cdc_min_file_size *)
  cdc_path : string prop option; [@option]  (** cdc_path *)
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  compression_type : string prop option; [@option]
      (** compression_type *)
  csv_delimiter : string prop option; [@option]  (** csv_delimiter *)
  csv_no_sup_value : string prop option; [@option]
      (** csv_no_sup_value *)
  csv_null_value : string prop option; [@option]
      (** csv_null_value *)
  csv_row_delimiter : string prop option; [@option]
      (** csv_row_delimiter *)
  data_format : string prop option; [@option]  (** data_format *)
  data_page_size : float prop option; [@option]
      (** data_page_size *)
  date_partition_delimiter : string prop option; [@option]
      (** date_partition_delimiter *)
  date_partition_enabled : bool prop option; [@option]
      (** date_partition_enabled *)
  date_partition_sequence : string prop option; [@option]
      (** date_partition_sequence *)
  date_partition_timezone : string prop option; [@option]
      (** date_partition_timezone *)
  detach_target_on_lob_lookup_failure_parquet : bool prop option;
      [@option]
      (** detach_target_on_lob_lookup_failure_parquet *)
  dict_page_size_limit : float prop option; [@option]
      (** dict_page_size_limit *)
  enable_statistics : bool prop option; [@option]
      (** enable_statistics *)
  encoding_type : string prop option; [@option]  (** encoding_type *)
  encryption_mode : string prop option; [@option]
      (** encryption_mode *)
  endpoint_id : string prop;  (** endpoint_id *)
  endpoint_type : string prop;  (** endpoint_type *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  external_table_definition : string prop option; [@option]
      (** external_table_definition *)
  glue_catalog_generation : bool prop option; [@option]
      (** glue_catalog_generation *)
  id : string prop option; [@option]  (** id *)
  ignore_header_rows : float prop option; [@option]
      (** ignore_header_rows *)
  include_op_for_full_load : bool prop option; [@option]
      (** include_op_for_full_load *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  max_file_size : float prop option; [@option]  (** max_file_size *)
  parquet_timestamp_in_millisecond : bool prop option; [@option]
      (** parquet_timestamp_in_millisecond *)
  parquet_version : string prop option; [@option]
      (** parquet_version *)
  preserve_transactions : bool prop option; [@option]
      (** preserve_transactions *)
  rfc_4180 : bool prop option; [@option]  (** rfc_4180 *)
  row_group_length : float prop option; [@option]
      (** row_group_length *)
  server_side_encryption_kms_key_id : string prop option; [@option]
      (** server_side_encryption_kms_key_id *)
  service_access_role_arn : string prop;
      (** service_access_role_arn *)
  ssl_mode : string prop option; [@option]  (** ssl_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timestamp_column_name : string prop option; [@option]
      (** timestamp_column_name *)
  use_csv_no_sup_value : bool prop option; [@option]
      (** use_csv_no_sup_value *)
  use_task_start_time_for_full_load_timestamp : bool prop option;
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
    ?cdc_path ?certificate_arn ?compression_type ?csv_delimiter
    ?csv_no_sup_value ?csv_null_value ?csv_row_delimiter ?data_format
    ?data_page_size ?date_partition_delimiter ?date_partition_enabled
    ?date_partition_sequence ?date_partition_timezone
    ?detach_target_on_lob_lookup_failure_parquet
    ?dict_page_size_limit ?enable_statistics ?encoding_type
    ?encryption_mode ?expected_bucket_owner
    ?external_table_definition ?glue_catalog_generation ?id
    ?ignore_header_rows ?include_op_for_full_load ?kms_key_arn
    ?max_file_size ?parquet_timestamp_in_millisecond ?parquet_version
    ?preserve_transactions ?rfc_4180 ?row_group_length
    ?server_side_encryption_kms_key_id ?ssl_mode ?tags ?tags_all
    ?timestamp_column_name ?use_csv_no_sup_value
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
      certificate_arn;
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
      id;
      ignore_header_rows;
      include_op_for_full_load;
      kms_key_arn;
      max_file_size;
      parquet_timestamp_in_millisecond;
      parquet_version;
      preserve_transactions;
      rfc_4180;
      row_group_length;
      server_side_encryption_kms_key_id;
      service_access_role_arn;
      ssl_mode;
      tags;
      tags_all;
      timestamp_column_name;
      use_csv_no_sup_value;
      use_task_start_time_for_full_load_timestamp;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_s3_endpoint __resource);
  ()
