(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type external_data_configuration__avro_options = {
  use_avro_logical_types : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration__avro_options) -> ()

let yojson_of_external_data_configuration__avro_options =
  (function
   | { use_avro_logical_types = v_use_avro_logical_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_avro_logical_types
         in
         ("use_avro_logical_types", arg) :: bnds
       in
       `Assoc bnds
    : external_data_configuration__avro_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__avro_options

[@@@deriving.end]

type external_data_configuration__bigtable_options__column_family__column = {
  encoding : string prop option; [@option]
  field_name : string prop option; [@option]
  only_read_latest : bool prop option; [@option]
  qualifier_encoded : string prop option; [@option]
  qualifier_string : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       external_data_configuration__bigtable_options__column_family__column) ->
  ()

let yojson_of_external_data_configuration__bigtable_options__column_family__column
    =
  (function
   | {
       encoding = v_encoding;
       field_name = v_field_name;
       only_read_latest = v_only_read_latest;
       qualifier_encoded = v_qualifier_encoded;
       qualifier_string = v_qualifier_string;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qualifier_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qualifier_encoded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier_encoded", arg in
             bnd :: bnds
       in
       let bnds =
         match v_only_read_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_read_latest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__bigtable_options__column_family__column ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_external_data_configuration__bigtable_options__column_family__column

[@@@deriving.end]

type external_data_configuration__bigtable_options__column_family = {
  encoding : string prop option; [@option]
  family_id : string prop option; [@option]
  only_read_latest : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  column :
    external_data_configuration__bigtable_options__column_family__column
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       external_data_configuration__bigtable_options__column_family) ->
  ()

let yojson_of_external_data_configuration__bigtable_options__column_family
    =
  (function
   | {
       encoding = v_encoding;
       family_id = v_family_id;
       only_read_latest = v_only_read_latest;
       type_ = v_type_;
       column = v_column;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_column then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__bigtable_options__column_family__column)
               v_column
           in
           let bnd = "column", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_only_read_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_read_latest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_family_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "family_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__bigtable_options__column_family ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_external_data_configuration__bigtable_options__column_family

[@@@deriving.end]

type external_data_configuration__bigtable_options = {
  ignore_unspecified_column_families : bool prop option; [@option]
  output_column_families_as_json : bool prop option; [@option]
  read_rowkey_as_string : bool prop option; [@option]
  column_family :
    external_data_configuration__bigtable_options__column_family list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration__bigtable_options) -> ()

let yojson_of_external_data_configuration__bigtable_options =
  (function
   | {
       ignore_unspecified_column_families =
         v_ignore_unspecified_column_families;
       output_column_families_as_json =
         v_output_column_families_as_json;
       read_rowkey_as_string = v_read_rowkey_as_string;
       column_family = v_column_family;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_column_family then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__bigtable_options__column_family)
               v_column_family
           in
           let bnd = "column_family", arg in
           bnd :: bnds
       in
       let bnds =
         match v_read_rowkey_as_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_rowkey_as_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_column_families_as_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "output_column_families_as_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_unspecified_column_families with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_unspecified_column_families", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__bigtable_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__bigtable_options

[@@@deriving.end]

type external_data_configuration__csv_options = {
  allow_jagged_rows : bool prop option; [@option]
  allow_quoted_newlines : bool prop option; [@option]
  encoding : string prop option; [@option]
  field_delimiter : string prop option; [@option]
  quote : string prop;
  skip_leading_rows : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration__csv_options) -> ()

let yojson_of_external_data_configuration__csv_options =
  (function
   | {
       allow_jagged_rows = v_allow_jagged_rows;
       allow_quoted_newlines = v_allow_quoted_newlines;
       encoding = v_encoding;
       field_delimiter = v_field_delimiter;
       quote = v_quote;
       skip_leading_rows = v_skip_leading_rows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_leading_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "skip_leading_rows", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_quote in
         ("quote", arg) :: bnds
       in
       let bnds =
         match v_field_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_quoted_newlines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_quoted_newlines", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_jagged_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_jagged_rows", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__csv_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__csv_options

[@@@deriving.end]

type external_data_configuration__google_sheets_options = {
  range : string prop option; [@option]
  skip_leading_rows : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : external_data_configuration__google_sheets_options) -> ()

let yojson_of_external_data_configuration__google_sheets_options =
  (function
   | { range = v_range; skip_leading_rows = v_skip_leading_rows } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_leading_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "skip_leading_rows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__google_sheets_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__google_sheets_options

[@@@deriving.end]

type external_data_configuration__hive_partitioning_options = {
  mode : string prop option; [@option]
  require_partition_filter : bool prop option; [@option]
  source_uri_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : external_data_configuration__hive_partitioning_options) ->
  ()

let yojson_of_external_data_configuration__hive_partitioning_options
    =
  (function
   | {
       mode = v_mode;
       require_partition_filter = v_require_partition_filter;
       source_uri_prefix = v_source_uri_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_uri_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_uri_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_partition_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_partition_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__hive_partitioning_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_external_data_configuration__hive_partitioning_options

[@@@deriving.end]

type external_data_configuration__json_options = {
  encoding : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration__json_options) -> ()

let yojson_of_external_data_configuration__json_options =
  (function
   | { encoding = v_encoding } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__json_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__json_options

[@@@deriving.end]

type external_data_configuration__parquet_options = {
  enable_list_inference : bool prop option; [@option]
  enum_as_string : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration__parquet_options) -> ()

let yojson_of_external_data_configuration__parquet_options =
  (function
   | {
       enable_list_inference = v_enable_list_inference;
       enum_as_string = v_enum_as_string;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enum_as_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enum_as_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_list_inference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_list_inference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_data_configuration__parquet_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration__parquet_options

[@@@deriving.end]

type external_data_configuration = {
  autodetect : bool prop;
  compression : string prop option; [@option]
  connection_id : string prop option; [@option]
  file_set_spec_type : string prop option; [@option]
  ignore_unknown_values : bool prop option; [@option]
  json_extension : string prop option; [@option]
  max_bad_records : float prop option; [@option]
  metadata_cache_mode : string prop option; [@option]
  object_metadata : string prop option; [@option]
  reference_file_schema_uri : string prop option; [@option]
  schema : string prop option; [@option]
  source_format : string prop option; [@option]
  source_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  avro_options : external_data_configuration__avro_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bigtable_options :
    external_data_configuration__bigtable_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  csv_options : external_data_configuration__csv_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google_sheets_options :
    external_data_configuration__google_sheets_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hive_partitioning_options :
    external_data_configuration__hive_partitioning_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_options : external_data_configuration__json_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parquet_options : external_data_configuration__parquet_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_data_configuration) -> ()

let yojson_of_external_data_configuration =
  (function
   | {
       autodetect = v_autodetect;
       compression = v_compression;
       connection_id = v_connection_id;
       file_set_spec_type = v_file_set_spec_type;
       ignore_unknown_values = v_ignore_unknown_values;
       json_extension = v_json_extension;
       max_bad_records = v_max_bad_records;
       metadata_cache_mode = v_metadata_cache_mode;
       object_metadata = v_object_metadata;
       reference_file_schema_uri = v_reference_file_schema_uri;
       schema = v_schema;
       source_format = v_source_format;
       source_uris = v_source_uris;
       avro_options = v_avro_options;
       bigtable_options = v_bigtable_options;
       csv_options = v_csv_options;
       google_sheets_options = v_google_sheets_options;
       hive_partitioning_options = v_hive_partitioning_options;
       json_options = v_json_options;
       parquet_options = v_parquet_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parquet_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__parquet_options)
               v_parquet_options
           in
           let bnd = "parquet_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_json_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__json_options)
               v_json_options
           in
           let bnd = "json_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hive_partitioning_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__hive_partitioning_options)
               v_hive_partitioning_options
           in
           let bnd = "hive_partitioning_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_google_sheets_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__google_sheets_options)
               v_google_sheets_options
           in
           let bnd = "google_sheets_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_csv_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__csv_options)
               v_csv_options
           in
           let bnd = "csv_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bigtable_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__bigtable_options)
               v_bigtable_options
           in
           let bnd = "bigtable_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_avro_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_data_configuration__avro_options)
               v_avro_options
           in
           let bnd = "avro_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_uris
           in
           let bnd = "source_uris", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reference_file_schema_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_file_schema_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_cache_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_cache_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_bad_records with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bad_records", arg in
             bnd :: bnds
       in
       let bnds =
         match v_json_extension with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "json_extension", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_unknown_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_unknown_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_set_spec_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_set_spec_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_autodetect in
         ("autodetect", arg) :: bnds
       in
       `Assoc bnds
    : external_data_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_data_configuration

[@@@deriving.end]

type materialized_view = {
  allow_non_incremental_definition : bool prop option; [@option]
  enable_refresh : bool prop option; [@option]
  query : string prop;
  refresh_interval_ms : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : materialized_view) -> ()

let yojson_of_materialized_view =
  (function
   | {
       allow_non_incremental_definition =
         v_allow_non_incremental_definition;
       enable_refresh = v_enable_refresh;
       query = v_query;
       refresh_interval_ms = v_refresh_interval_ms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_refresh_interval_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_interval_ms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         match v_enable_refresh with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_refresh", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_non_incremental_definition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_non_incremental_definition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : materialized_view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_materialized_view

[@@@deriving.end]

type range_partitioning__range = {
  end_ : float prop; [@key "end"]
  interval : float prop;
  start : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : range_partitioning__range) -> ()

let yojson_of_range_partitioning__range =
  (function
   | { end_ = v_end_; interval = v_interval; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : range_partitioning__range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_range_partitioning__range

[@@@deriving.end]

type range_partitioning = {
  field : string prop;
  range : range_partitioning__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : range_partitioning) -> ()

let yojson_of_range_partitioning =
  (function
   | { field = v_field; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list yojson_of_range_partitioning__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       `Assoc bnds
    : range_partitioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_range_partitioning

[@@@deriving.end]

type table_constraints__foreign_keys__column_references = {
  referenced_column : string prop;
  referencing_column : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : table_constraints__foreign_keys__column_references) -> ()

let yojson_of_table_constraints__foreign_keys__column_references =
  (function
   | {
       referenced_column = v_referenced_column;
       referencing_column = v_referencing_column;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_referencing_column
         in
         ("referencing_column", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_referenced_column
         in
         ("referenced_column", arg) :: bnds
       in
       `Assoc bnds
    : table_constraints__foreign_keys__column_references ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_constraints__foreign_keys__column_references

[@@@deriving.end]

type table_constraints__foreign_keys__referenced_table = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : table_constraints__foreign_keys__referenced_table) -> ()

let yojson_of_table_constraints__foreign_keys__referenced_table =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       table_id = v_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : table_constraints__foreign_keys__referenced_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_constraints__foreign_keys__referenced_table

[@@@deriving.end]

type table_constraints__foreign_keys = {
  name : string prop option; [@option]
  column_references :
    table_constraints__foreign_keys__column_references list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  referenced_table :
    table_constraints__foreign_keys__referenced_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_constraints__foreign_keys) -> ()

let yojson_of_table_constraints__foreign_keys =
  (function
   | {
       name = v_name;
       column_references = v_column_references;
       referenced_table = v_referenced_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_referenced_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_table_constraints__foreign_keys__referenced_table)
               v_referenced_table
           in
           let bnd = "referenced_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_column_references then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_table_constraints__foreign_keys__column_references)
               v_column_references
           in
           let bnd = "column_references", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : table_constraints__foreign_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_constraints__foreign_keys

[@@@deriving.end]

type table_constraints__primary_key = {
  columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_constraints__primary_key) -> ()

let yojson_of_table_constraints__primary_key =
  (function
   | { columns = v_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_columns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_columns
           in
           let bnd = "columns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : table_constraints__primary_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_constraints__primary_key

[@@@deriving.end]

type table_constraints = {
  foreign_keys : table_constraints__foreign_keys list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  primary_key : table_constraints__primary_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_constraints) -> ()

let yojson_of_table_constraints =
  (function
   | { foreign_keys = v_foreign_keys; primary_key = v_primary_key }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_primary_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_constraints__primary_key)
               v_primary_key
           in
           let bnd = "primary_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_foreign_keys then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_table_constraints__foreign_keys)
               v_foreign_keys
           in
           let bnd = "foreign_keys", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : table_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_constraints

[@@@deriving.end]

type table_replication_info = {
  replication_interval_ms : float prop option; [@option]
  source_dataset_id : string prop;
  source_project_id : string prop;
  source_table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_replication_info) -> ()

let yojson_of_table_replication_info =
  (function
   | {
       replication_interval_ms = v_replication_interval_ms;
       source_dataset_id = v_source_dataset_id;
       source_project_id = v_source_project_id;
       source_table_id = v_source_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_table_id
         in
         ("source_table_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_project_id
         in
         ("source_project_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_dataset_id
         in
         ("source_dataset_id", arg) :: bnds
       in
       let bnds =
         match v_replication_interval_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replication_interval_ms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : table_replication_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_replication_info

[@@@deriving.end]

type time_partitioning = {
  expiration_ms : float prop option; [@option]
  field : string prop option; [@option]
  require_partition_filter : bool prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : time_partitioning) -> ()

let yojson_of_time_partitioning =
  (function
   | {
       expiration_ms = v_expiration_ms;
       field = v_field;
       require_partition_filter = v_require_partition_filter;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_require_partition_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_partition_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiration_ms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : time_partitioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_time_partitioning

[@@@deriving.end]

type view = {
  query : string prop;
  use_legacy_sql : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : view) -> ()

let yojson_of_view =
  (function
   | { query = v_query; use_legacy_sql = v_use_legacy_sql } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_legacy_sql with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_legacy_sql", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       `Assoc bnds
    : view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_view

[@@@deriving.end]

type google_bigquery_table = {
  clustering : string prop list option; [@option]
  dataset_id : string prop;
  deletion_protection : bool prop option; [@option]
  description : string prop option; [@option]
  expiration_time : float prop option; [@option]
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  max_staleness : string prop option; [@option]
  project : string prop option; [@option]
  require_partition_filter : bool prop option; [@option]
  schema : string prop option; [@option]
  table_id : string prop;
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_data_configuration : external_data_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  materialized_view : materialized_view list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  range_partitioning : range_partitioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_constraints : table_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_replication_info : table_replication_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_partitioning : time_partitioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  view : view list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_table) -> ()

let yojson_of_google_bigquery_table =
  (function
   | {
       clustering = v_clustering;
       dataset_id = v_dataset_id;
       deletion_protection = v_deletion_protection;
       description = v_description;
       expiration_time = v_expiration_time;
       friendly_name = v_friendly_name;
       id = v_id;
       labels = v_labels;
       max_staleness = v_max_staleness;
       project = v_project;
       require_partition_filter = v_require_partition_filter;
       schema = v_schema;
       table_id = v_table_id;
       encryption_configuration = v_encryption_configuration;
       external_data_configuration = v_external_data_configuration;
       materialized_view = v_materialized_view;
       range_partitioning = v_range_partitioning;
       table_constraints = v_table_constraints;
       table_replication_info = v_table_replication_info;
       time_partitioning = v_time_partitioning;
       view = v_view;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_view then bnds
         else
           let arg = (yojson_of_list yojson_of_view) v_view in
           let bnd = "view", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_time_partitioning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_time_partitioning)
               v_time_partitioning
           in
           let bnd = "time_partitioning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_table_replication_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_replication_info)
               v_table_replication_info
           in
           let bnd = "table_replication_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_table_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_constraints)
               v_table_constraints
           in
           let bnd = "table_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_range_partitioning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_range_partitioning)
               v_range_partitioning
           in
           let bnd = "range_partitioning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_materialized_view then bnds
         else
           let arg =
             (yojson_of_list yojson_of_materialized_view)
               v_materialized_view
           in
           let bnd = "materialized_view", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_data_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_external_data_configuration)
               v_external_data_configuration
           in
           let bnd = "external_data_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_partition_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_partition_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_staleness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_staleness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiration_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       let bnds =
         match v_clustering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "clustering", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_table

[@@@deriving.end]

let encryption_configuration ~kms_key_name () :
    encryption_configuration =
  { kms_key_name }

let external_data_configuration__avro_options ~use_avro_logical_types
    () : external_data_configuration__avro_options =
  { use_avro_logical_types }

let external_data_configuration__bigtable_options__column_family__column
    ?encoding ?field_name ?only_read_latest ?qualifier_encoded
    ?qualifier_string ?type_ () :
    external_data_configuration__bigtable_options__column_family__column
    =
  {
    encoding;
    field_name;
    only_read_latest;
    qualifier_encoded;
    qualifier_string;
    type_;
  }

let external_data_configuration__bigtable_options__column_family
    ?encoding ?family_id ?only_read_latest ?type_ ?(column = []) () :
    external_data_configuration__bigtable_options__column_family =
  { encoding; family_id; only_read_latest; type_; column }

let external_data_configuration__bigtable_options
    ?ignore_unspecified_column_families
    ?output_column_families_as_json ?read_rowkey_as_string
    ?(column_family = []) () :
    external_data_configuration__bigtable_options =
  {
    ignore_unspecified_column_families;
    output_column_families_as_json;
    read_rowkey_as_string;
    column_family;
  }

let external_data_configuration__csv_options ?allow_jagged_rows
    ?allow_quoted_newlines ?encoding ?field_delimiter
    ?skip_leading_rows ~quote () :
    external_data_configuration__csv_options =
  {
    allow_jagged_rows;
    allow_quoted_newlines;
    encoding;
    field_delimiter;
    quote;
    skip_leading_rows;
  }

let external_data_configuration__google_sheets_options ?range
    ?skip_leading_rows () :
    external_data_configuration__google_sheets_options =
  { range; skip_leading_rows }

let external_data_configuration__hive_partitioning_options ?mode
    ?require_partition_filter ?source_uri_prefix () :
    external_data_configuration__hive_partitioning_options =
  { mode; require_partition_filter; source_uri_prefix }

let external_data_configuration__json_options ?encoding () :
    external_data_configuration__json_options =
  { encoding }

let external_data_configuration__parquet_options
    ?enable_list_inference ?enum_as_string () :
    external_data_configuration__parquet_options =
  { enable_list_inference; enum_as_string }

let external_data_configuration ?compression ?connection_id
    ?file_set_spec_type ?ignore_unknown_values ?json_extension
    ?max_bad_records ?metadata_cache_mode ?object_metadata
    ?reference_file_schema_uri ?schema ?source_format
    ?(avro_options = []) ?(bigtable_options = []) ?(csv_options = [])
    ?(google_sheets_options = []) ?(hive_partitioning_options = [])
    ?(json_options = []) ?(parquet_options = []) ~autodetect
    ~source_uris () : external_data_configuration =
  {
    autodetect;
    compression;
    connection_id;
    file_set_spec_type;
    ignore_unknown_values;
    json_extension;
    max_bad_records;
    metadata_cache_mode;
    object_metadata;
    reference_file_schema_uri;
    schema;
    source_format;
    source_uris;
    avro_options;
    bigtable_options;
    csv_options;
    google_sheets_options;
    hive_partitioning_options;
    json_options;
    parquet_options;
  }

let materialized_view ?allow_non_incremental_definition
    ?enable_refresh ?refresh_interval_ms ~query () :
    materialized_view =
  {
    allow_non_incremental_definition;
    enable_refresh;
    query;
    refresh_interval_ms;
  }

let range_partitioning__range ~end_ ~interval ~start () :
    range_partitioning__range =
  { end_; interval; start }

let range_partitioning ~field ~range () : range_partitioning =
  { field; range }

let table_constraints__foreign_keys__column_references
    ~referenced_column ~referencing_column () :
    table_constraints__foreign_keys__column_references =
  { referenced_column; referencing_column }

let table_constraints__foreign_keys__referenced_table ~dataset_id
    ~project_id ~table_id () :
    table_constraints__foreign_keys__referenced_table =
  { dataset_id; project_id; table_id }

let table_constraints__foreign_keys ?name ~column_references
    ~referenced_table () : table_constraints__foreign_keys =
  { name; column_references; referenced_table }

let table_constraints__primary_key ~columns () :
    table_constraints__primary_key =
  { columns }

let table_constraints ?(foreign_keys = []) ?(primary_key = []) () :
    table_constraints =
  { foreign_keys; primary_key }

let table_replication_info ?replication_interval_ms
    ~source_dataset_id ~source_project_id ~source_table_id () :
    table_replication_info =
  {
    replication_interval_ms;
    source_dataset_id;
    source_project_id;
    source_table_id;
  }

let time_partitioning ?expiration_ms ?field ?require_partition_filter
    ~type_ () : time_partitioning =
  { expiration_ms; field; require_partition_filter; type_ }

let view ?use_legacy_sql ~query () : view = { query; use_legacy_sql }

let google_bigquery_table ?clustering ?deletion_protection
    ?description ?expiration_time ?friendly_name ?id ?labels
    ?max_staleness ?project ?require_partition_filter ?schema
    ?(encryption_configuration = [])
    ?(external_data_configuration = []) ?(materialized_view = [])
    ?(range_partitioning = []) ?(table_constraints = [])
    ?(table_replication_info = []) ?(time_partitioning = [])
    ?(view = []) ~dataset_id ~table_id () : google_bigquery_table =
  {
    clustering;
    dataset_id;
    deletion_protection;
    description;
    expiration_time;
    friendly_name;
    id;
    labels;
    max_staleness;
    project;
    require_partition_filter;
    schema;
    table_id;
    encryption_configuration;
    external_data_configuration;
    materialized_view;
    range_partitioning;
    table_constraints;
    table_replication_info;
    time_partitioning;
    view;
  }

type t = {
  tf_name : string;
  clustering : string list prop;
  creation_time : float prop;
  dataset_id : string prop;
  deletion_protection : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  expiration_time : float prop;
  friendly_name : string prop;
  id : string prop;
  labels : (string * string) list prop;
  last_modified_time : float prop;
  location : string prop;
  max_staleness : string prop;
  num_bytes : float prop;
  num_long_term_bytes : float prop;
  num_rows : float prop;
  project : string prop;
  require_partition_filter : bool prop;
  schema : string prop;
  self_link : string prop;
  table_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

let make ?clustering ?deletion_protection ?description
    ?expiration_time ?friendly_name ?id ?labels ?max_staleness
    ?project ?require_partition_filter ?schema
    ?(encryption_configuration = [])
    ?(external_data_configuration = []) ?(materialized_view = [])
    ?(range_partitioning = []) ?(table_constraints = [])
    ?(table_replication_info = []) ?(time_partitioning = [])
    ?(view = []) ~dataset_id ~table_id __id =
  let __type = "google_bigquery_table" in
  let __attrs =
    ({
       tf_name = __id;
       clustering = Prop.computed __type __id "clustering";
       creation_time = Prop.computed __type __id "creation_time";
       dataset_id = Prop.computed __type __id "dataset_id";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       expiration_time = Prop.computed __type __id "expiration_time";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       location = Prop.computed __type __id "location";
       max_staleness = Prop.computed __type __id "max_staleness";
       num_bytes = Prop.computed __type __id "num_bytes";
       num_long_term_bytes =
         Prop.computed __type __id "num_long_term_bytes";
       num_rows = Prop.computed __type __id "num_rows";
       project = Prop.computed __type __id "project";
       require_partition_filter =
         Prop.computed __type __id "require_partition_filter";
       schema = Prop.computed __type __id "schema";
       self_link = Prop.computed __type __id "self_link";
       table_id = Prop.computed __type __id "table_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_table
        (google_bigquery_table ?clustering ?deletion_protection
           ?description ?expiration_time ?friendly_name ?id ?labels
           ?max_staleness ?project ?require_partition_filter ?schema
           ~encryption_configuration ~external_data_configuration
           ~materialized_view ~range_partitioning ~table_constraints
           ~table_replication_info ~time_partitioning ~view
           ~dataset_id ~table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?clustering ?deletion_protection ?description
    ?expiration_time ?friendly_name ?id ?labels ?max_staleness
    ?project ?require_partition_filter ?schema
    ?(encryption_configuration = [])
    ?(external_data_configuration = []) ?(materialized_view = [])
    ?(range_partitioning = []) ?(table_constraints = [])
    ?(table_replication_info = []) ?(time_partitioning = [])
    ?(view = []) ~dataset_id ~table_id __id =
  let (r : _ Tf_core.resource) =
    make ?clustering ?deletion_protection ?description
      ?expiration_time ?friendly_name ?id ?labels ?max_staleness
      ?project ?require_partition_filter ?schema
      ~encryption_configuration ~external_data_configuration
      ~materialized_view ~range_partitioning ~table_constraints
      ~table_replication_info ~time_partitioning ~view ~dataset_id
      ~table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
