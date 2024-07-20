(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partition_index = {
  index_name : string prop;
  index_status : string prop;
  keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_index) -> ()

let yojson_of_partition_index =
  (function
   | {
       index_name = v_index_name;
       index_status = v_index_status;
       keys = v_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_keys
           in
           let bnd = "keys", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_status in
         ("index_status", arg) :: bnds
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
  comment : string prop;
  name : string prop;
  type_ : string prop; [@key "type"]
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comment in
         ("comment", arg) :: bnds
       in
       `Assoc bnds
    : partition_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_keys

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

type storage_descriptor__skewed_info = {
  skewed_column_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  skewed_column_value_location_maps : (string * string prop) list;
  skewed_column_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_skewed_column_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_skewed_column_values
           in
           let bnd = "skewed_column_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_skewed_column_value_location_maps
         in
         ("skewed_column_value_location_maps", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_skewed_column_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_skewed_column_names
           in
           let bnd = "skewed_column_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__skewed_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__skewed_info

[@@@deriving.end]

type storage_descriptor__ser_de_info = {
  name : string prop;
  parameters : (string * string prop) list;
  serialization_library : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_serialization_library
         in
         ("serialization_library", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : storage_descriptor__ser_de_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__ser_de_info

[@@@deriving.end]

type storage_descriptor__schema_reference__schema_id = {
  registry_name : string prop;
  schema_arn : string prop;
  schema_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_schema_name in
         ("schema_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema_arn in
         ("schema_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_name in
         ("registry_name", arg) :: bnds
       in
       `Assoc bnds
    : storage_descriptor__schema_reference__schema_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__schema_reference__schema_id

[@@@deriving.end]

type storage_descriptor__schema_reference = {
  schema_id : storage_descriptor__schema_reference__schema_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema_version_id : string prop;
  schema_version_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__schema_reference) -> ()

let yojson_of_storage_descriptor__schema_reference =
  (function
   | {
       schema_id = v_schema_id;
       schema_version_id = v_schema_version_id;
       schema_version_number = v_schema_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_schema_version_number
         in
         ("schema_version_number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schema_version_id
         in
         ("schema_version_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_descriptor__schema_reference__schema_id)
               v_schema_id
           in
           let bnd = "schema_id", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_descriptor__schema_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__schema_reference

[@@@deriving.end]

type storage_descriptor__columns = {
  comment : string prop;
  name : string prop;
  parameters : (string * string prop) list;
  type_ : string prop; [@key "type"]
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comment in
         ("comment", arg) :: bnds
       in
       `Assoc bnds
    : storage_descriptor__columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__columns

[@@@deriving.end]

type storage_descriptor = {
  additional_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bucket_columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  columns : storage_descriptor__columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compressed : bool prop;
  input_format : string prop;
  location : string prop;
  number_of_buckets : float prop;
  output_format : string prop;
  parameters : (string * string prop) list;
  schema_reference : storage_descriptor__schema_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ser_de_info : storage_descriptor__ser_de_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  skewed_info : storage_descriptor__skewed_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sort_columns : storage_descriptor__sort_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stored_as_sub_directories : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor) -> ()

let yojson_of_storage_descriptor =
  (function
   | {
       additional_locations = v_additional_locations;
       bucket_columns = v_bucket_columns;
       columns = v_columns;
       compressed = v_compressed;
       input_format = v_input_format;
       location = v_location;
       number_of_buckets = v_number_of_buckets;
       output_format = v_output_format;
       parameters = v_parameters;
       schema_reference = v_schema_reference;
       ser_de_info = v_ser_de_info;
       skewed_info = v_skewed_info;
       sort_columns = v_sort_columns;
       stored_as_sub_directories = v_stored_as_sub_directories;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_stored_as_sub_directories
         in
         ("stored_as_sub_directories", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sort_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_descriptor__sort_columns)
               v_sort_columns
           in
           let bnd = "sort_columns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_skewed_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_descriptor__skewed_info)
               v_skewed_info
           in
           let bnd = "skewed_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ser_de_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_descriptor__ser_de_info)
               v_ser_de_info
           in
           let bnd = "ser_de_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_descriptor__schema_reference)
               v_schema_reference
           in
           let bnd = "schema_reference", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output_format in
         ("output_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_buckets
         in
         ("number_of_buckets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_format in
         ("input_format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_compressed in
         ("compressed", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_columns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_descriptor__columns)
               v_columns
           in
           let bnd = "columns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bucket_columns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_bucket_columns
           in
           let bnd = "bucket_columns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_locations
           in
           let bnd = "additional_locations", arg in
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
  region : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
  id : string prop option; [@option]
  name : string prop;
  query_as_of_time : string prop option; [@option]
  transaction_id : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_catalog_table) -> ()

let yojson_of_aws_glue_catalog_table =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       id = v_id;
       name = v_name;
       query_as_of_time = v_query_as_of_time;
       transaction_id = v_transaction_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transaction_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transaction_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_as_of_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_as_of_time", arg in
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

let aws_glue_catalog_table ?catalog_id ?id ?query_as_of_time
    ?transaction_id ~database_name ~name () : aws_glue_catalog_table
    =
  {
    catalog_id;
    database_name;
    id;
    name;
    query_as_of_time;
    transaction_id;
  }

type t = {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  database_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  parameters : (string * string) list prop;
  partition_index : partition_index list prop;
  partition_keys : partition_keys list prop;
  query_as_of_time : string prop;
  retention : float prop;
  storage_descriptor : storage_descriptor list prop;
  table_type : string prop;
  target_table : target_table list prop;
  transaction_id : float prop;
  view_expanded_text : string prop;
  view_original_text : string prop;
}

let make ?catalog_id ?id ?query_as_of_time ?transaction_id
    ~database_name ~name __id =
  let __type = "aws_glue_catalog_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       database_name = Prop.computed __type __id "database_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parameters = Prop.computed __type __id "parameters";
       partition_index = Prop.computed __type __id "partition_index";
       partition_keys = Prop.computed __type __id "partition_keys";
       query_as_of_time =
         Prop.computed __type __id "query_as_of_time";
       retention = Prop.computed __type __id "retention";
       storage_descriptor =
         Prop.computed __type __id "storage_descriptor";
       table_type = Prop.computed __type __id "table_type";
       target_table = Prop.computed __type __id "target_table";
       transaction_id = Prop.computed __type __id "transaction_id";
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
        (aws_glue_catalog_table ?catalog_id ?id ?query_as_of_time
           ?transaction_id ~database_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ?query_as_of_time
    ?transaction_id ~database_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ?query_as_of_time ?transaction_id
      ~database_name ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
