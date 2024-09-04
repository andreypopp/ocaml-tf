(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type copy__destination_encryption_configuration = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : copy__destination_encryption_configuration) -> ()

let yojson_of_copy__destination_encryption_configuration =
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
    : copy__destination_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_copy__destination_encryption_configuration

[@@@deriving.end]

type copy__destination_table = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : copy__destination_table) -> ()

let yojson_of_copy__destination_table =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : copy__destination_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_copy__destination_table

[@@@deriving.end]

type copy__source_tables = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : copy__source_tables) -> ()

let yojson_of_copy__source_tables =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : copy__source_tables -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_copy__source_tables

[@@@deriving.end]

type copy = {
  create_disposition : string prop option; [@option]
  write_disposition : string prop option; [@option]
  destination_encryption_configuration :
    copy__destination_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_table : copy__destination_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_tables : copy__source_tables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : copy) -> ()

let yojson_of_copy =
  (function
   | {
       create_disposition = v_create_disposition;
       write_disposition = v_write_disposition;
       destination_encryption_configuration =
         v_destination_encryption_configuration;
       destination_table = v_destination_table;
       source_tables = v_source_tables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_tables then bnds
         else
           let arg =
             (yojson_of_list yojson_of_copy__source_tables)
               v_source_tables
           in
           let bnd = "source_tables", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_copy__destination_table)
               v_destination_table
           in
           let bnd = "destination_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_copy__destination_encryption_configuration)
               v_destination_encryption_configuration
           in
           let bnd = "destination_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_disposition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_copy

[@@@deriving.end]

type extract__source_model = {
  dataset_id : string prop;
  model_id : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extract__source_model) -> ()

let yojson_of_extract__source_model =
  (function
   | {
       dataset_id = v_dataset_id;
       model_id = v_model_id;
       project_id = v_project_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_id in
         ("model_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : extract__source_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extract__source_model

[@@@deriving.end]

type extract__source_table = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extract__source_table) -> ()

let yojson_of_extract__source_table =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extract__source_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extract__source_table

[@@@deriving.end]

type extract = {
  compression : string prop option; [@option]
  destination_format : string prop option; [@option]
  destination_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  field_delimiter : string prop option; [@option]
  print_header : bool prop option; [@option]
  use_avro_logical_types : bool prop option; [@option]
  source_model : extract__source_model list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_table : extract__source_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extract) -> ()

let yojson_of_extract =
  (function
   | {
       compression = v_compression;
       destination_format = v_destination_format;
       destination_uris = v_destination_uris;
       field_delimiter = v_field_delimiter;
       print_header = v_print_header;
       use_avro_logical_types = v_use_avro_logical_types;
       source_model = v_source_model;
       source_table = v_source_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extract__source_table)
               v_source_table
           in
           let bnd = "source_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_model then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extract__source_model)
               v_source_model
           in
           let bnd = "source_model", arg in
           bnd :: bnds
       in
       let bnds =
         match v_use_avro_logical_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_avro_logical_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_print_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "print_header", arg in
             bnd :: bnds
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
         if Stdlib.( = ) [] v_destination_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_uris
           in
           let bnd = "destination_uris", arg in
           bnd :: bnds
       in
       let bnds =
         match v_destination_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_format", arg in
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
       `Assoc bnds
    : extract -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extract

[@@@deriving.end]

type load__destination_encryption_configuration = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load__destination_encryption_configuration) -> ()

let yojson_of_load__destination_encryption_configuration =
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
    : load__destination_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load__destination_encryption_configuration

[@@@deriving.end]

type load__destination_table = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load__destination_table) -> ()

let yojson_of_load__destination_table =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load__destination_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load__destination_table

[@@@deriving.end]

type load__parquet_options = {
  enable_list_inference : bool prop option; [@option]
  enum_as_string : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load__parquet_options) -> ()

let yojson_of_load__parquet_options =
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
    : load__parquet_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load__parquet_options

[@@@deriving.end]

type load__time_partitioning = {
  expiration_ms : string prop option; [@option]
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load__time_partitioning) -> ()

let yojson_of_load__time_partitioning =
  (function
   | {
       expiration_ms = v_expiration_ms;
       field = v_field;
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_ms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load__time_partitioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load__time_partitioning

[@@@deriving.end]

type load = {
  allow_jagged_rows : bool prop option; [@option]
  allow_quoted_newlines : bool prop option; [@option]
  autodetect : bool prop option; [@option]
  create_disposition : string prop option; [@option]
  encoding : string prop option; [@option]
  field_delimiter : string prop option; [@option]
  ignore_unknown_values : bool prop option; [@option]
  json_extension : string prop option; [@option]
  max_bad_records : float prop option; [@option]
  null_marker : string prop option; [@option]
  projection_fields : string prop list option; [@option]
  quote : string prop option; [@option]
  schema_update_options : string prop list option; [@option]
  skip_leading_rows : float prop option; [@option]
  source_format : string prop option; [@option]
  source_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  write_disposition : string prop option; [@option]
  destination_encryption_configuration :
    load__destination_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_table : load__destination_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parquet_options : load__parquet_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_partitioning : load__time_partitioning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load) -> ()

let yojson_of_load =
  (function
   | {
       allow_jagged_rows = v_allow_jagged_rows;
       allow_quoted_newlines = v_allow_quoted_newlines;
       autodetect = v_autodetect;
       create_disposition = v_create_disposition;
       encoding = v_encoding;
       field_delimiter = v_field_delimiter;
       ignore_unknown_values = v_ignore_unknown_values;
       json_extension = v_json_extension;
       max_bad_records = v_max_bad_records;
       null_marker = v_null_marker;
       projection_fields = v_projection_fields;
       quote = v_quote;
       schema_update_options = v_schema_update_options;
       skip_leading_rows = v_skip_leading_rows;
       source_format = v_source_format;
       source_uris = v_source_uris;
       write_disposition = v_write_disposition;
       destination_encryption_configuration =
         v_destination_encryption_configuration;
       destination_table = v_destination_table;
       parquet_options = v_parquet_options;
       time_partitioning = v_time_partitioning;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_time_partitioning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load__time_partitioning)
               v_time_partitioning
           in
           let bnd = "time_partitioning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parquet_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load__parquet_options)
               v_parquet_options
           in
           let bnd = "parquet_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load__destination_table)
               v_destination_table
           in
           let bnd = "destination_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load__destination_encryption_configuration)
               v_destination_encryption_configuration
           in
           let bnd = "destination_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_disposition", arg in
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
         match v_skip_leading_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "skip_leading_rows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema_update_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "schema_update_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quote with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quote", arg in
             bnd :: bnds
       in
       let bnds =
         match v_projection_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "projection_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_null_marker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "null_marker", arg in
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
         match v_create_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autodetect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "autodetect", arg in
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
    : load -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load

[@@@deriving.end]

type query__default_dataset = {
  dataset_id : string prop;
  project_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query__default_dataset) -> ()

let yojson_of_query__default_dataset =
  (function
   | { dataset_id = v_dataset_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : query__default_dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query__default_dataset

[@@@deriving.end]

type query__destination_encryption_configuration = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query__destination_encryption_configuration) -> ()

let yojson_of_query__destination_encryption_configuration =
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
    : query__destination_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query__destination_encryption_configuration

[@@@deriving.end]

type query__destination_table = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query__destination_table) -> ()

let yojson_of_query__destination_table =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : query__destination_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query__destination_table

[@@@deriving.end]

type query__script_options = {
  key_result_statement : string prop option; [@option]
  statement_byte_budget : string prop option; [@option]
  statement_timeout_ms : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query__script_options) -> ()

let yojson_of_query__script_options =
  (function
   | {
       key_result_statement = v_key_result_statement;
       statement_byte_budget = v_statement_byte_budget;
       statement_timeout_ms = v_statement_timeout_ms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_statement_timeout_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_timeout_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_byte_budget with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_byte_budget", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_result_statement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_result_statement", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : query__script_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query__script_options

[@@@deriving.end]

type query__user_defined_function_resources = {
  inline_code : string prop option; [@option]
  resource_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query__user_defined_function_resources) -> ()

let yojson_of_query__user_defined_function_resources =
  (function
   | { inline_code = v_inline_code; resource_uri = v_resource_uri }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inline_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inline_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : query__user_defined_function_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query__user_defined_function_resources

[@@@deriving.end]

type query = {
  allow_large_results : bool prop option; [@option]
  create_disposition : string prop option; [@option]
  flatten_results : bool prop option; [@option]
  maximum_billing_tier : float prop option; [@option]
  maximum_bytes_billed : string prop option; [@option]
  parameter_mode : string prop option; [@option]
  priority : string prop option; [@option]
  query : string prop;
  schema_update_options : string prop list option; [@option]
  use_legacy_sql : bool prop option; [@option]
  use_query_cache : bool prop option; [@option]
  write_disposition : string prop option; [@option]
  default_dataset : query__default_dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_encryption_configuration :
    query__destination_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_table : query__destination_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  script_options : query__script_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_defined_function_resources :
    query__user_defined_function_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query) -> ()

let yojson_of_query =
  (function
   | {
       allow_large_results = v_allow_large_results;
       create_disposition = v_create_disposition;
       flatten_results = v_flatten_results;
       maximum_billing_tier = v_maximum_billing_tier;
       maximum_bytes_billed = v_maximum_bytes_billed;
       parameter_mode = v_parameter_mode;
       priority = v_priority;
       query = v_query;
       schema_update_options = v_schema_update_options;
       use_legacy_sql = v_use_legacy_sql;
       use_query_cache = v_use_query_cache;
       write_disposition = v_write_disposition;
       default_dataset = v_default_dataset;
       destination_encryption_configuration =
         v_destination_encryption_configuration;
       destination_table = v_destination_table;
       script_options = v_script_options;
       user_defined_function_resources =
         v_user_defined_function_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_defined_function_resources then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_query__user_defined_function_resources)
               v_user_defined_function_resources
           in
           let bnd = "user_defined_function_resources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_script_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_query__script_options)
               v_script_options
           in
           let bnd = "script_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_query__destination_table)
               v_destination_table
           in
           let bnd = "destination_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_query__destination_encryption_configuration)
               v_destination_encryption_configuration
           in
           let bnd = "destination_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_dataset then bnds
         else
           let arg =
             (yojson_of_list yojson_of_query__default_dataset)
               v_default_dataset
           in
           let bnd = "default_dataset", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_query_cache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_query_cache", arg in
             bnd :: bnds
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
         match v_schema_update_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "schema_update_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_bytes_billed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_bytes_billed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_billing_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_billing_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flatten_results with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "flatten_results", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_large_results with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_large_results", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type status__errors = {
  location : string prop;
  message : string prop;
  reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__errors) -> ()

let yojson_of_status__errors =
  (function
   | {
       location = v_location;
       message = v_message;
       reason = v_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : status__errors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__errors

[@@@deriving.end]

type status__error_result = {
  location : string prop;
  message : string prop;
  reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__error_result) -> ()

let yojson_of_status__error_result =
  (function
   | {
       location = v_location;
       message = v_message;
       reason = v_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : status__error_result -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__error_result

[@@@deriving.end]

type status = {
  error_result : status__error_result list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  errors : status__errors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       error_result = v_error_result;
       errors = v_errors;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_errors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__errors) v_errors
           in
           let bnd = "errors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_error_result then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__error_result)
               v_error_result
           in
           let bnd = "error_result", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_bigquery_job = {
  id : string prop option; [@option]
  job_id : string prop;
  job_timeout_ms : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  copy : copy list; [@default []] [@yojson_drop_default Stdlib.( = )]
  extract : extract list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load : load list; [@default []] [@yojson_drop_default Stdlib.( = )]
  query : query list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_job) -> ()

let yojson_of_google_bigquery_job =
  (function
   | {
       id = v_id;
       job_id = v_job_id;
       job_timeout_ms = v_job_timeout_ms;
       labels = v_labels;
       location = v_location;
       project = v_project;
       copy = v_copy;
       extract = v_extract;
       load = v_load;
       query = v_query;
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
         if Stdlib.( = ) [] v_query then bnds
         else
           let arg = (yojson_of_list yojson_of_query) v_query in
           let bnd = "query", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load then bnds
         else
           let arg = (yojson_of_list yojson_of_load) v_load in
           let bnd = "load", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extract then bnds
         else
           let arg = (yojson_of_list yojson_of_extract) v_extract in
           let bnd = "extract", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_copy then bnds
         else
           let arg = (yojson_of_list yojson_of_copy) v_copy in
           let bnd = "copy", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_timeout_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_timeout_ms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_id in
         ("job_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_job

[@@@deriving.end]

let copy__destination_encryption_configuration ~kms_key_name () :
    copy__destination_encryption_configuration =
  { kms_key_name }

let copy__destination_table ?dataset_id ?project_id ~table_id () :
    copy__destination_table =
  { dataset_id; project_id; table_id }

let copy__source_tables ?dataset_id ?project_id ~table_id () :
    copy__source_tables =
  { dataset_id; project_id; table_id }

let copy ?create_disposition ?write_disposition
    ?(destination_encryption_configuration = [])
    ?(destination_table = []) ~source_tables () : copy =
  {
    create_disposition;
    write_disposition;
    destination_encryption_configuration;
    destination_table;
    source_tables;
  }

let extract__source_model ~dataset_id ~model_id ~project_id () :
    extract__source_model =
  { dataset_id; model_id; project_id }

let extract__source_table ?dataset_id ?project_id ~table_id () :
    extract__source_table =
  { dataset_id; project_id; table_id }

let extract ?compression ?destination_format ?field_delimiter
    ?print_header ?use_avro_logical_types ?(source_model = [])
    ?(source_table = []) ~destination_uris () : extract =
  {
    compression;
    destination_format;
    destination_uris;
    field_delimiter;
    print_header;
    use_avro_logical_types;
    source_model;
    source_table;
  }

let load__destination_encryption_configuration ~kms_key_name () :
    load__destination_encryption_configuration =
  { kms_key_name }

let load__destination_table ?dataset_id ?project_id ~table_id () :
    load__destination_table =
  { dataset_id; project_id; table_id }

let load__parquet_options ?enable_list_inference ?enum_as_string () :
    load__parquet_options =
  { enable_list_inference; enum_as_string }

let load__time_partitioning ?expiration_ms ?field ~type_ () :
    load__time_partitioning =
  { expiration_ms; field; type_ }

let load ?allow_jagged_rows ?allow_quoted_newlines ?autodetect
    ?create_disposition ?encoding ?field_delimiter
    ?ignore_unknown_values ?json_extension ?max_bad_records
    ?null_marker ?projection_fields ?quote ?schema_update_options
    ?skip_leading_rows ?source_format ?write_disposition
    ?(destination_encryption_configuration = [])
    ?(parquet_options = []) ?(time_partitioning = []) ~source_uris
    ~destination_table () : load =
  {
    allow_jagged_rows;
    allow_quoted_newlines;
    autodetect;
    create_disposition;
    encoding;
    field_delimiter;
    ignore_unknown_values;
    json_extension;
    max_bad_records;
    null_marker;
    projection_fields;
    quote;
    schema_update_options;
    skip_leading_rows;
    source_format;
    source_uris;
    write_disposition;
    destination_encryption_configuration;
    destination_table;
    parquet_options;
    time_partitioning;
  }

let query__default_dataset ?project_id ~dataset_id () :
    query__default_dataset =
  { dataset_id; project_id }

let query__destination_encryption_configuration ~kms_key_name () :
    query__destination_encryption_configuration =
  { kms_key_name }

let query__destination_table ?dataset_id ?project_id ~table_id () :
    query__destination_table =
  { dataset_id; project_id; table_id }

let query__script_options ?key_result_statement
    ?statement_byte_budget ?statement_timeout_ms () :
    query__script_options =
  {
    key_result_statement;
    statement_byte_budget;
    statement_timeout_ms;
  }

let query__user_defined_function_resources ?inline_code ?resource_uri
    () : query__user_defined_function_resources =
  { inline_code; resource_uri }

let query ?allow_large_results ?create_disposition ?flatten_results
    ?maximum_billing_tier ?maximum_bytes_billed ?parameter_mode
    ?priority ?schema_update_options ?use_legacy_sql ?use_query_cache
    ?write_disposition ?(default_dataset = [])
    ?(destination_encryption_configuration = [])
    ?(destination_table = []) ?(script_options = [])
    ?(user_defined_function_resources = []) ~query () : query =
  {
    allow_large_results;
    create_disposition;
    flatten_results;
    maximum_billing_tier;
    maximum_bytes_billed;
    parameter_mode;
    priority;
    query;
    schema_update_options;
    use_legacy_sql;
    use_query_cache;
    write_disposition;
    default_dataset;
    destination_encryption_configuration;
    destination_table;
    script_options;
    user_defined_function_resources;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_job ?id ?job_timeout_ms ?labels ?location
    ?project ?(copy = []) ?(extract = []) ?(load = []) ?(query = [])
    ?timeouts ~job_id () : google_bigquery_job =
  {
    id;
    job_id;
    job_timeout_ms;
    labels;
    location;
    project;
    copy;
    extract;
    load;
    query;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  job_id : string prop;
  job_timeout_ms : string prop;
  job_type : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  project : string prop;
  status : status list prop;
  terraform_labels : string Tf_core.assoc prop;
  user_email : string prop;
}

let make ?id ?job_timeout_ms ?labels ?location ?project ?(copy = [])
    ?(extract = []) ?(load = []) ?(query = []) ?timeouts ~job_id __id
    =
  let __type = "google_bigquery_job" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       job_id = Prop.computed __type __id "job_id";
       job_timeout_ms = Prop.computed __type __id "job_timeout_ms";
       job_type = Prop.computed __type __id "job_type";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       user_email = Prop.computed __type __id "user_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_job
        (google_bigquery_job ?id ?job_timeout_ms ?labels ?location
           ?project ~copy ~extract ~load ~query ?timeouts ~job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?job_timeout_ms ?labels ?location
    ?project ?(copy = []) ?(extract = []) ?(load = []) ?(query = [])
    ?timeouts ~job_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?job_timeout_ms ?labels ?location ?project ~copy
      ~extract ~load ~query ?timeouts ~job_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
