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

type t = {
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
    ({
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
      : aws_dms_s3_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_s3_endpoint __resource);
  let __resource_attributes =
    ({
       add_column_name =
         Prop.computed __resource_type __resource_id
           "add_column_name";
       add_trailing_padding_character =
         Prop.computed __resource_type __resource_id
           "add_trailing_padding_character";
       bucket_folder =
         Prop.computed __resource_type __resource_id "bucket_folder";
       bucket_name =
         Prop.computed __resource_type __resource_id "bucket_name";
       canned_acl_for_objects =
         Prop.computed __resource_type __resource_id
           "canned_acl_for_objects";
       cdc_inserts_and_updates =
         Prop.computed __resource_type __resource_id
           "cdc_inserts_and_updates";
       cdc_inserts_only =
         Prop.computed __resource_type __resource_id
           "cdc_inserts_only";
       cdc_max_batch_interval =
         Prop.computed __resource_type __resource_id
           "cdc_max_batch_interval";
       cdc_min_file_size =
         Prop.computed __resource_type __resource_id
           "cdc_min_file_size";
       cdc_path =
         Prop.computed __resource_type __resource_id "cdc_path";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       compression_type =
         Prop.computed __resource_type __resource_id
           "compression_type";
       csv_delimiter =
         Prop.computed __resource_type __resource_id "csv_delimiter";
       csv_no_sup_value =
         Prop.computed __resource_type __resource_id
           "csv_no_sup_value";
       csv_null_value =
         Prop.computed __resource_type __resource_id "csv_null_value";
       csv_row_delimiter =
         Prop.computed __resource_type __resource_id
           "csv_row_delimiter";
       data_format =
         Prop.computed __resource_type __resource_id "data_format";
       data_page_size =
         Prop.computed __resource_type __resource_id "data_page_size";
       date_partition_delimiter =
         Prop.computed __resource_type __resource_id
           "date_partition_delimiter";
       date_partition_enabled =
         Prop.computed __resource_type __resource_id
           "date_partition_enabled";
       date_partition_sequence =
         Prop.computed __resource_type __resource_id
           "date_partition_sequence";
       date_partition_timezone =
         Prop.computed __resource_type __resource_id
           "date_partition_timezone";
       detach_target_on_lob_lookup_failure_parquet =
         Prop.computed __resource_type __resource_id
           "detach_target_on_lob_lookup_failure_parquet";
       dict_page_size_limit =
         Prop.computed __resource_type __resource_id
           "dict_page_size_limit";
       enable_statistics =
         Prop.computed __resource_type __resource_id
           "enable_statistics";
       encoding_type =
         Prop.computed __resource_type __resource_id "encoding_type";
       encryption_mode =
         Prop.computed __resource_type __resource_id
           "encryption_mode";
       endpoint_arn =
         Prop.computed __resource_type __resource_id "endpoint_arn";
       endpoint_id =
         Prop.computed __resource_type __resource_id "endpoint_id";
       endpoint_type =
         Prop.computed __resource_type __resource_id "endpoint_type";
       engine_display_name =
         Prop.computed __resource_type __resource_id
           "engine_display_name";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       external_id =
         Prop.computed __resource_type __resource_id "external_id";
       external_table_definition =
         Prop.computed __resource_type __resource_id
           "external_table_definition";
       glue_catalog_generation =
         Prop.computed __resource_type __resource_id
           "glue_catalog_generation";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_header_rows =
         Prop.computed __resource_type __resource_id
           "ignore_header_rows";
       include_op_for_full_load =
         Prop.computed __resource_type __resource_id
           "include_op_for_full_load";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       max_file_size =
         Prop.computed __resource_type __resource_id "max_file_size";
       parquet_timestamp_in_millisecond =
         Prop.computed __resource_type __resource_id
           "parquet_timestamp_in_millisecond";
       parquet_version =
         Prop.computed __resource_type __resource_id
           "parquet_version";
       preserve_transactions =
         Prop.computed __resource_type __resource_id
           "preserve_transactions";
       rfc_4180 =
         Prop.computed __resource_type __resource_id "rfc_4180";
       row_group_length =
         Prop.computed __resource_type __resource_id
           "row_group_length";
       server_side_encryption_kms_key_id =
         Prop.computed __resource_type __resource_id
           "server_side_encryption_kms_key_id";
       service_access_role_arn =
         Prop.computed __resource_type __resource_id
           "service_access_role_arn";
       ssl_mode =
         Prop.computed __resource_type __resource_id "ssl_mode";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       timestamp_column_name =
         Prop.computed __resource_type __resource_id
           "timestamp_column_name";
       use_csv_no_sup_value =
         Prop.computed __resource_type __resource_id
           "use_csv_no_sup_value";
       use_task_start_time_for_full_load_timestamp =
         Prop.computed __resource_type __resource_id
           "use_task_start_time_for_full_load_timestamp";
     }
      : t)
  in
  __resource_attributes
