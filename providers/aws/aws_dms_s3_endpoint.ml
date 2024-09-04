(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_dms_s3_endpoint = {
  add_column_name : bool prop option; [@option]
  add_trailing_padding_character : bool prop option; [@option]
  bucket_folder : string prop option; [@option]
  bucket_name : string prop;
  canned_acl_for_objects : string prop option; [@option]
  cdc_inserts_and_updates : bool prop option; [@option]
  cdc_inserts_only : bool prop option; [@option]
  cdc_max_batch_interval : float prop option; [@option]
  cdc_min_file_size : float prop option; [@option]
  cdc_path : string prop option; [@option]
  certificate_arn : string prop option; [@option]
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
  date_partition_timezone : string prop option; [@option]
  detach_target_on_lob_lookup_failure_parquet : bool prop option;
      [@option]
  dict_page_size_limit : float prop option; [@option]
  enable_statistics : bool prop option; [@option]
  encoding_type : string prop option; [@option]
  encryption_mode : string prop option; [@option]
  endpoint_id : string prop;
  endpoint_type : string prop;
  expected_bucket_owner : string prop option; [@option]
  external_table_definition : string prop option; [@option]
  glue_catalog_generation : bool prop option; [@option]
  id : string prop option; [@option]
  ignore_header_rows : float prop option; [@option]
  include_op_for_full_load : bool prop option; [@option]
  kms_key_arn : string prop option; [@option]
  max_file_size : float prop option; [@option]
  parquet_timestamp_in_millisecond : bool prop option; [@option]
  parquet_version : string prop option; [@option]
  preserve_transactions : bool prop option; [@option]
  rfc_4180 : bool prop option; [@option]
  row_group_length : float prop option; [@option]
  server_side_encryption_kms_key_id : string prop option; [@option]
  service_access_role_arn : string prop;
  ssl_mode : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timestamp_column_name : string prop option; [@option]
  use_csv_no_sup_value : bool prop option; [@option]
  use_task_start_time_for_full_load_timestamp : bool prop option;
      [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_s3_endpoint) -> ()

let yojson_of_aws_dms_s3_endpoint =
  (function
   | {
       add_column_name = v_add_column_name;
       add_trailing_padding_character =
         v_add_trailing_padding_character;
       bucket_folder = v_bucket_folder;
       bucket_name = v_bucket_name;
       canned_acl_for_objects = v_canned_acl_for_objects;
       cdc_inserts_and_updates = v_cdc_inserts_and_updates;
       cdc_inserts_only = v_cdc_inserts_only;
       cdc_max_batch_interval = v_cdc_max_batch_interval;
       cdc_min_file_size = v_cdc_min_file_size;
       cdc_path = v_cdc_path;
       certificate_arn = v_certificate_arn;
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
       date_partition_timezone = v_date_partition_timezone;
       detach_target_on_lob_lookup_failure_parquet =
         v_detach_target_on_lob_lookup_failure_parquet;
       dict_page_size_limit = v_dict_page_size_limit;
       enable_statistics = v_enable_statistics;
       encoding_type = v_encoding_type;
       encryption_mode = v_encryption_mode;
       endpoint_id = v_endpoint_id;
       endpoint_type = v_endpoint_type;
       expected_bucket_owner = v_expected_bucket_owner;
       external_table_definition = v_external_table_definition;
       glue_catalog_generation = v_glue_catalog_generation;
       id = v_id;
       ignore_header_rows = v_ignore_header_rows;
       include_op_for_full_load = v_include_op_for_full_load;
       kms_key_arn = v_kms_key_arn;
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
       ssl_mode = v_ssl_mode;
       tags = v_tags;
       tags_all = v_tags_all;
       timestamp_column_name = v_timestamp_column_name;
       use_csv_no_sup_value = v_use_csv_no_sup_value;
       use_task_start_time_for_full_load_timestamp =
         v_use_task_start_time_for_full_load_timestamp;
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
         let arg =
           yojson_of_prop yojson_of_string v_service_access_role_arn
         in
         ("service_access_role_arn", arg) :: bnds
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
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
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
         match v_detach_target_on_lob_lookup_failure_parquet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "detach_target_on_lob_lookup_failure_parquet", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_date_partition_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date_partition_timezone", arg in
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
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
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
         match v_add_trailing_padding_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "add_trailing_padding_character", arg in
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
    : aws_dms_s3_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_s3_endpoint

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

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
    () : aws_dms_s3_endpoint =
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

type t = {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  timestamp_column_name : string prop;
  use_csv_no_sup_value : bool prop;
  use_task_start_time_for_full_load_timestamp : bool prop;
}

let make ?add_column_name ?add_trailing_padding_character
    ?bucket_folder ?canned_acl_for_objects ?cdc_inserts_and_updates
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
    __id =
  let __type = "aws_dms_s3_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       add_column_name = Prop.computed __type __id "add_column_name";
       add_trailing_padding_character =
         Prop.computed __type __id "add_trailing_padding_character";
       bucket_folder = Prop.computed __type __id "bucket_folder";
       bucket_name = Prop.computed __type __id "bucket_name";
       canned_acl_for_objects =
         Prop.computed __type __id "canned_acl_for_objects";
       cdc_inserts_and_updates =
         Prop.computed __type __id "cdc_inserts_and_updates";
       cdc_inserts_only =
         Prop.computed __type __id "cdc_inserts_only";
       cdc_max_batch_interval =
         Prop.computed __type __id "cdc_max_batch_interval";
       cdc_min_file_size =
         Prop.computed __type __id "cdc_min_file_size";
       cdc_path = Prop.computed __type __id "cdc_path";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       compression_type =
         Prop.computed __type __id "compression_type";
       csv_delimiter = Prop.computed __type __id "csv_delimiter";
       csv_no_sup_value =
         Prop.computed __type __id "csv_no_sup_value";
       csv_null_value = Prop.computed __type __id "csv_null_value";
       csv_row_delimiter =
         Prop.computed __type __id "csv_row_delimiter";
       data_format = Prop.computed __type __id "data_format";
       data_page_size = Prop.computed __type __id "data_page_size";
       date_partition_delimiter =
         Prop.computed __type __id "date_partition_delimiter";
       date_partition_enabled =
         Prop.computed __type __id "date_partition_enabled";
       date_partition_sequence =
         Prop.computed __type __id "date_partition_sequence";
       date_partition_timezone =
         Prop.computed __type __id "date_partition_timezone";
       detach_target_on_lob_lookup_failure_parquet =
         Prop.computed __type __id
           "detach_target_on_lob_lookup_failure_parquet";
       dict_page_size_limit =
         Prop.computed __type __id "dict_page_size_limit";
       enable_statistics =
         Prop.computed __type __id "enable_statistics";
       encoding_type = Prop.computed __type __id "encoding_type";
       encryption_mode = Prop.computed __type __id "encryption_mode";
       endpoint_arn = Prop.computed __type __id "endpoint_arn";
       endpoint_id = Prop.computed __type __id "endpoint_id";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       engine_display_name =
         Prop.computed __type __id "engine_display_name";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       external_id = Prop.computed __type __id "external_id";
       external_table_definition =
         Prop.computed __type __id "external_table_definition";
       glue_catalog_generation =
         Prop.computed __type __id "glue_catalog_generation";
       id = Prop.computed __type __id "id";
       ignore_header_rows =
         Prop.computed __type __id "ignore_header_rows";
       include_op_for_full_load =
         Prop.computed __type __id "include_op_for_full_load";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       max_file_size = Prop.computed __type __id "max_file_size";
       parquet_timestamp_in_millisecond =
         Prop.computed __type __id "parquet_timestamp_in_millisecond";
       parquet_version = Prop.computed __type __id "parquet_version";
       preserve_transactions =
         Prop.computed __type __id "preserve_transactions";
       rfc_4180 = Prop.computed __type __id "rfc_4180";
       row_group_length =
         Prop.computed __type __id "row_group_length";
       server_side_encryption_kms_key_id =
         Prop.computed __type __id
           "server_side_encryption_kms_key_id";
       service_access_role_arn =
         Prop.computed __type __id "service_access_role_arn";
       ssl_mode = Prop.computed __type __id "ssl_mode";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timestamp_column_name =
         Prop.computed __type __id "timestamp_column_name";
       use_csv_no_sup_value =
         Prop.computed __type __id "use_csv_no_sup_value";
       use_task_start_time_for_full_load_timestamp =
         Prop.computed __type __id
           "use_task_start_time_for_full_load_timestamp";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_s3_endpoint
        (aws_dms_s3_endpoint ?add_column_name
           ?add_trailing_padding_character ?bucket_folder
           ?canned_acl_for_objects ?cdc_inserts_and_updates
           ?cdc_inserts_only ?cdc_max_batch_interval
           ?cdc_min_file_size ?cdc_path ?certificate_arn
           ?compression_type ?csv_delimiter ?csv_no_sup_value
           ?csv_null_value ?csv_row_delimiter ?data_format
           ?data_page_size ?date_partition_delimiter
           ?date_partition_enabled ?date_partition_sequence
           ?date_partition_timezone
           ?detach_target_on_lob_lookup_failure_parquet
           ?dict_page_size_limit ?enable_statistics ?encoding_type
           ?encryption_mode ?expected_bucket_owner
           ?external_table_definition ?glue_catalog_generation ?id
           ?ignore_header_rows ?include_op_for_full_load ?kms_key_arn
           ?max_file_size ?parquet_timestamp_in_millisecond
           ?parquet_version ?preserve_transactions ?rfc_4180
           ?row_group_length ?server_side_encryption_kms_key_id
           ?ssl_mode ?tags ?tags_all ?timestamp_column_name
           ?use_csv_no_sup_value
           ?use_task_start_time_for_full_load_timestamp ?timeouts
           ~bucket_name ~endpoint_id ~endpoint_type
           ~service_access_role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?add_column_name
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
    __id =
  let (r : _ Tf_core.resource) =
    make ?add_column_name ?add_trailing_padding_character
      ?bucket_folder ?canned_acl_for_objects ?cdc_inserts_and_updates
      ?cdc_inserts_only ?cdc_max_batch_interval ?cdc_min_file_size
      ?cdc_path ?certificate_arn ?compression_type ?csv_delimiter
      ?csv_no_sup_value ?csv_null_value ?csv_row_delimiter
      ?data_format ?data_page_size ?date_partition_delimiter
      ?date_partition_enabled ?date_partition_sequence
      ?date_partition_timezone
      ?detach_target_on_lob_lookup_failure_parquet
      ?dict_page_size_limit ?enable_statistics ?encoding_type
      ?encryption_mode ?expected_bucket_owner
      ?external_table_definition ?glue_catalog_generation ?id
      ?ignore_header_rows ?include_op_for_full_load ?kms_key_arn
      ?max_file_size ?parquet_timestamp_in_millisecond
      ?parquet_version ?preserve_transactions ?rfc_4180
      ?row_group_length ?server_side_encryption_kms_key_id ?ssl_mode
      ?tags ?tags_all ?timestamp_column_name ?use_csv_no_sup_value
      ?use_task_start_time_for_full_load_timestamp ?timeouts
      ~bucket_name ~endpoint_id ~endpoint_type
      ~service_access_role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
