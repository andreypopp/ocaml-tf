(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type open_table_format_input__iceberg_input = {
  metadata_operation : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_table_format_input__iceberg_input) -> ()

let yojson_of_open_table_format_input__iceberg_input =
  (function
   | {
       metadata_operation = v_metadata_operation;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metadata_operation
         in
         ("metadata_operation", arg) :: bnds
       in
       `Assoc bnds
    : open_table_format_input__iceberg_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_table_format_input__iceberg_input

[@@@deriving.end]

type open_table_format_input = {
  iceberg_input : open_table_format_input__iceberg_input list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_table_format_input) -> ()

let yojson_of_open_table_format_input =
  (function
   | { iceberg_input = v_iceberg_input } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_open_table_format_input__iceberg_input
             v_iceberg_input
         in
         ("iceberg_input", arg) :: bnds
       in
       `Assoc bnds
    : open_table_format_input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_table_format_input

[@@@deriving.end]

type partition_index = {
  index_name : string prop;
  keys : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_index) -> ()

let yojson_of_partition_index =
  (function
   | { index_name = v_index_name; keys = v_keys } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_keys
         in
         ("keys", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_name in
         ("index_name", arg) :: bnds
       in
       `Assoc bnds
    : partition_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_index

[@@@deriving.end]

type partition_keys = {
  comment : string prop option; [@option]
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_keys) -> ()

let yojson_of_partition_keys =
  (function
   | { comment = v_comment; name = v_name; type_ = v_type_ } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : partition_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_keys

[@@@deriving.end]

type storage_descriptor__columns = {
  comment : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__columns) -> ()

let yojson_of_storage_descriptor__columns =
  (function
   | {
       comment = v_comment;
       name = v_name;
       parameters = v_parameters;
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
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__columns

[@@@deriving.end]

type storage_descriptor__schema_reference__schema_id = {
  registry_name : string prop option; [@option]
  schema_arn : string prop option; [@option]
  schema_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : storage_descriptor__schema_reference__schema_id) -> ()

let yojson_of_storage_descriptor__schema_reference__schema_id =
  (function
   | {
       registry_name = v_registry_name;
       schema_arn = v_schema_arn;
       schema_name = v_schema_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schema_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registry_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__schema_reference__schema_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__schema_reference__schema_id

[@@@deriving.end]

type storage_descriptor__schema_reference = {
  schema_version_id : string prop option; [@option]
  schema_version_number : float prop;
  schema_id : storage_descriptor__schema_reference__schema_id list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__schema_reference) -> ()

let yojson_of_storage_descriptor__schema_reference =
  (function
   | {
       schema_version_id = v_schema_version_id;
       schema_version_number = v_schema_version_number;
       schema_id = v_schema_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_descriptor__schema_reference__schema_id
             v_schema_id
         in
         ("schema_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_schema_version_number
         in
         ("schema_version_number", arg) :: bnds
       in
       let bnds =
         match v_schema_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_version_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__schema_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__schema_reference

[@@@deriving.end]

type storage_descriptor__ser_de_info = {
  name : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  serialization_library : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__ser_de_info) -> ()

let yojson_of_storage_descriptor__ser_de_info =
  (function
   | {
       name = v_name;
       parameters = v_parameters;
       serialization_library = v_serialization_library;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_serialization_library with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serialization_library", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
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
    : storage_descriptor__ser_de_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__ser_de_info

[@@@deriving.end]

type storage_descriptor__skewed_info = {
  skewed_column_names : string prop list option; [@option]
  skewed_column_value_location_maps :
    (string * string prop) list option;
      [@option]
  skewed_column_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__skewed_info) -> ()

let yojson_of_storage_descriptor__skewed_info =
  (function
   | {
       skewed_column_names = v_skewed_column_names;
       skewed_column_value_location_maps =
         v_skewed_column_value_location_maps;
       skewed_column_values = v_skewed_column_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skewed_column_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "skewed_column_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skewed_column_value_location_maps with
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
             let bnd = "skewed_column_value_location_maps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skewed_column_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "skewed_column_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__skewed_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__skewed_info

[@@@deriving.end]

type storage_descriptor__sort_columns = {
  column : string prop;
  sort_order : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__sort_columns) -> ()

let yojson_of_storage_descriptor__sort_columns =
  (function
   | { column = v_column; sort_order = v_sort_order } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sort_order in
         ("sort_order", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column in
         ("column", arg) :: bnds
       in
       `Assoc bnds
    : storage_descriptor__sort_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__sort_columns

[@@@deriving.end]

type storage_descriptor = {
  bucket_columns : string prop list option; [@option]
  compressed : bool prop option; [@option]
  input_format : string prop option; [@option]
  location : string prop option; [@option]
  number_of_buckets : float prop option; [@option]
  output_format : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  stored_as_sub_directories : bool prop option; [@option]
  columns : storage_descriptor__columns list;
  schema_reference : storage_descriptor__schema_reference list;
  ser_de_info : storage_descriptor__ser_de_info list;
  skewed_info : storage_descriptor__skewed_info list;
  sort_columns : storage_descriptor__sort_columns list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor) -> ()

let yojson_of_storage_descriptor =
  (function
   | {
       bucket_columns = v_bucket_columns;
       compressed = v_compressed;
       input_format = v_input_format;
       location = v_location;
       number_of_buckets = v_number_of_buckets;
       output_format = v_output_format;
       parameters = v_parameters;
       stored_as_sub_directories = v_stored_as_sub_directories;
       columns = v_columns;
       schema_reference = v_schema_reference;
       ser_de_info = v_ser_de_info;
       skewed_info = v_skewed_info;
       sort_columns = v_sort_columns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_descriptor__sort_columns
             v_sort_columns
         in
         ("sort_columns", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_descriptor__skewed_info
             v_skewed_info
         in
         ("skewed_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_descriptor__ser_de_info
             v_ser_de_info
         in
         ("ser_de_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_descriptor__schema_reference
             v_schema_reference
         in
         ("schema_reference", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_descriptor__columns
             v_columns
         in
         ("columns", arg) :: bnds
       in
       let bnds =
         match v_stored_as_sub_directories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stored_as_sub_directories", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_buckets", arg in
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
         match v_input_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compressed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compressed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_columns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bucket_columns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor

[@@@deriving.end]

type target_table = {
  catalog_id : string prop;
  database_name : string prop;
  name : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_table) -> ()

let yojson_of_target_table =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       name = v_name;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_catalog_id in
         ("catalog_id", arg) :: bnds
       in
       `Assoc bnds
    : target_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_table

[@@@deriving.end]

type aws_glue_catalog_table = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  owner : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  retention : float prop option; [@option]
  table_type : string prop option; [@option]
  view_expanded_text : string prop option; [@option]
  view_original_text : string prop option; [@option]
  open_table_format_input : open_table_format_input list;
  partition_index : partition_index list;
  partition_keys : partition_keys list;
  storage_descriptor : storage_descriptor list;
  target_table : target_table list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_catalog_table) -> ()

let yojson_of_aws_glue_catalog_table =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       description = v_description;
       id = v_id;
       name = v_name;
       owner = v_owner;
       parameters = v_parameters;
       retention = v_retention;
       table_type = v_table_type;
       view_expanded_text = v_view_expanded_text;
       view_original_text = v_view_original_text;
       open_table_format_input = v_open_table_format_input;
       partition_index = v_partition_index;
       partition_keys = v_partition_keys;
       storage_descriptor = v_storage_descriptor;
       target_table = v_target_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_table v_target_table
         in
         ("target_table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_descriptor
             v_storage_descriptor
         in
         ("storage_descriptor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partition_keys v_partition_keys
         in
         ("partition_keys", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partition_index v_partition_index
         in
         ("partition_index", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_open_table_format_input
             v_open_table_format_input
         in
         ("open_table_format_input", arg) :: bnds
       in
       let bnds =
         match v_view_original_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "view_original_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_view_expanded_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "view_expanded_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_table_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_catalog_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_catalog_table

[@@@deriving.end]

let open_table_format_input__iceberg_input ?version
    ~metadata_operation () : open_table_format_input__iceberg_input =
  { metadata_operation; version }

let open_table_format_input ~iceberg_input () :
    open_table_format_input =
  { iceberg_input }

let partition_index ~index_name ~keys () : partition_index =
  { index_name; keys }

let partition_keys ?comment ?type_ ~name () : partition_keys =
  { comment; name; type_ }

let storage_descriptor__columns ?comment ?parameters ?type_ ~name ()
    : storage_descriptor__columns =
  { comment; name; parameters; type_ }

let storage_descriptor__schema_reference__schema_id ?registry_name
    ?schema_arn ?schema_name () :
    storage_descriptor__schema_reference__schema_id =
  { registry_name; schema_arn; schema_name }

let storage_descriptor__schema_reference ?schema_version_id
    ?(schema_id = []) ~schema_version_number () :
    storage_descriptor__schema_reference =
  { schema_version_id; schema_version_number; schema_id }

let storage_descriptor__ser_de_info ?name ?parameters
    ?serialization_library () : storage_descriptor__ser_de_info =
  { name; parameters; serialization_library }

let storage_descriptor__skewed_info ?skewed_column_names
    ?skewed_column_value_location_maps ?skewed_column_values () :
    storage_descriptor__skewed_info =
  {
    skewed_column_names;
    skewed_column_value_location_maps;
    skewed_column_values;
  }

let storage_descriptor__sort_columns ~column ~sort_order () :
    storage_descriptor__sort_columns =
  { column; sort_order }

let storage_descriptor ?bucket_columns ?compressed ?input_format
    ?location ?number_of_buckets ?output_format ?parameters
    ?stored_as_sub_directories ?(columns = [])
    ?(schema_reference = []) ?(ser_de_info = []) ?(skewed_info = [])
    ?(sort_columns = []) () : storage_descriptor =
  {
    bucket_columns;
    compressed;
    input_format;
    location;
    number_of_buckets;
    output_format;
    parameters;
    stored_as_sub_directories;
    columns;
    schema_reference;
    ser_de_info;
    skewed_info;
    sort_columns;
  }

let target_table ?region ~catalog_id ~database_name ~name () :
    target_table =
  { catalog_id; database_name; name; region }

let aws_glue_catalog_table ?catalog_id ?description ?id ?owner
    ?parameters ?retention ?table_type ?view_expanded_text
    ?view_original_text ?(open_table_format_input = [])
    ?(partition_index = []) ?(partition_keys = [])
    ?(storage_descriptor = []) ?(target_table = []) ~database_name
    ~name () : aws_glue_catalog_table =
  {
    catalog_id;
    database_name;
    description;
    id;
    name;
    owner;
    parameters;
    retention;
    table_type;
    view_expanded_text;
    view_original_text;
    open_table_format_input;
    partition_index;
    partition_keys;
    storage_descriptor;
    target_table;
  }

type t = {
  arn : string prop;
  catalog_id : string prop;
  database_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  parameters : (string * string) list prop;
  retention : float prop;
  table_type : string prop;
  view_expanded_text : string prop;
  view_original_text : string prop;
}

let make ?catalog_id ?description ?id ?owner ?parameters ?retention
    ?table_type ?view_expanded_text ?view_original_text
    ?(open_table_format_input = []) ?(partition_index = [])
    ?(partition_keys = []) ?(storage_descriptor = [])
    ?(target_table = []) ~database_name ~name __id =
  let __type = "aws_glue_catalog_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       database_name = Prop.computed __type __id "database_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parameters = Prop.computed __type __id "parameters";
       retention = Prop.computed __type __id "retention";
       table_type = Prop.computed __type __id "table_type";
       view_expanded_text =
         Prop.computed __type __id "view_expanded_text";
       view_original_text =
         Prop.computed __type __id "view_original_text";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_catalog_table
        (aws_glue_catalog_table ?catalog_id ?description ?id ?owner
           ?parameters ?retention ?table_type ?view_expanded_text
           ?view_original_text ~open_table_format_input
           ~partition_index ~partition_keys ~storage_descriptor
           ~target_table ~database_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?description ?id ?owner
    ?parameters ?retention ?table_type ?view_expanded_text
    ?view_original_text ?(open_table_format_input = [])
    ?(partition_index = []) ?(partition_keys = [])
    ?(storage_descriptor = []) ?(target_table = []) ~database_name
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?description ?id ?owner ?parameters ?retention
      ?table_type ?view_expanded_text ?view_original_text
      ~open_table_format_input ~partition_index ~partition_keys
      ~storage_descriptor ~target_table ~database_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
