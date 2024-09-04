(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_descriptor__columns = {
  comment : string prop option; [@option]
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_descriptor__columns) -> ()

let yojson_of_storage_descriptor__columns =
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
    : storage_descriptor__columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_descriptor__columns

[@@@deriving.end]

type storage_descriptor__ser_de_info = {
  name : string prop option; [@option]
  parameters : string prop Tf_core.assoc option; [@option]
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    string prop Tf_core.assoc option;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
  parameters : string prop Tf_core.assoc option; [@option]
  stored_as_sub_directories : bool prop option; [@option]
  columns : storage_descriptor__columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ser_de_info : storage_descriptor__ser_de_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  skewed_info : storage_descriptor__skewed_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sort_columns : storage_descriptor__sort_columns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       ser_de_info = v_ser_de_info;
       skewed_info = v_skewed_info;
       sort_columns = v_sort_columns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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

type aws_glue_partition = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  id : string prop option; [@option]
  parameters : string prop Tf_core.assoc option; [@option]
  partition_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_name : string prop;
  storage_descriptor : storage_descriptor list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_partition) -> ()

let yojson_of_aws_glue_partition =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       id = v_id;
       parameters = v_parameters;
       partition_values = v_partition_values;
       table_name = v_table_name;
       storage_descriptor = v_storage_descriptor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_descriptor then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_descriptor)
               v_storage_descriptor
           in
           let bnd = "storage_descriptor", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_partition_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_partition_values
           in
           let bnd = "partition_values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
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
    : aws_glue_partition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_partition

[@@@deriving.end]

let storage_descriptor__columns ?comment ?type_ ~name () :
    storage_descriptor__columns =
  { comment; name; type_ }

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
    ?stored_as_sub_directories ?(columns = []) ?(ser_de_info = [])
    ?(skewed_info = []) ?(sort_columns = []) () : storage_descriptor
    =
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
    ser_de_info;
    skewed_info;
    sort_columns;
  }

let aws_glue_partition ?catalog_id ?id ?parameters
    ?(storage_descriptor = []) ~database_name ~partition_values
    ~table_name () : aws_glue_partition =
  {
    catalog_id;
    database_name;
    id;
    parameters;
    partition_values;
    table_name;
    storage_descriptor;
  }

type t = {
  tf_name : string;
  catalog_id : string prop;
  creation_time : string prop;
  database_name : string prop;
  id : string prop;
  last_accessed_time : string prop;
  last_analyzed_time : string prop;
  parameters : string Tf_core.assoc prop;
  partition_values : string list prop;
  table_name : string prop;
}

let make ?catalog_id ?id ?parameters ?(storage_descriptor = [])
    ~database_name ~partition_values ~table_name __id =
  let __type = "aws_glue_partition" in
  let __attrs =
    ({
       tf_name = __id;
       catalog_id = Prop.computed __type __id "catalog_id";
       creation_time = Prop.computed __type __id "creation_time";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       last_accessed_time =
         Prop.computed __type __id "last_accessed_time";
       last_analyzed_time =
         Prop.computed __type __id "last_analyzed_time";
       parameters = Prop.computed __type __id "parameters";
       partition_values =
         Prop.computed __type __id "partition_values";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_partition
        (aws_glue_partition ?catalog_id ?id ?parameters
           ~storage_descriptor ~database_name ~partition_values
           ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ?parameters
    ?(storage_descriptor = []) ~database_name ~partition_values
    ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ?parameters ~storage_descriptor
      ~database_name ~partition_values ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
