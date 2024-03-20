(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type open_table_format_input__iceberg_input = {
  metadata_operation : string prop;  (** metadata_operation *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** open_table_format_input__iceberg_input *)

type open_table_format_input = {
  iceberg_input : open_table_format_input__iceberg_input list;
}
[@@deriving yojson_of]
(** open_table_format_input *)

type partition_index = {
  index_name : string prop;  (** index_name *)
  keys : string prop list;  (** keys *)
}
[@@deriving yojson_of]
(** partition_index *)

type partition_keys = {
  comment : string prop option; [@option]  (** comment *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** partition_keys *)

type storage_descriptor__columns = {
  comment : string prop option; [@option]  (** comment *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** storage_descriptor__columns *)

type storage_descriptor__schema_reference__schema_id = {
  registry_name : string prop option; [@option]  (** registry_name *)
  schema_arn : string prop option; [@option]  (** schema_arn *)
  schema_name : string prop option; [@option]  (** schema_name *)
}
[@@deriving yojson_of]
(** storage_descriptor__schema_reference__schema_id *)

type storage_descriptor__schema_reference = {
  schema_version_id : string prop option; [@option]
      (** schema_version_id *)
  schema_version_number : float prop;  (** schema_version_number *)
  schema_id : storage_descriptor__schema_reference__schema_id list;
}
[@@deriving yojson_of]
(** storage_descriptor__schema_reference *)

type storage_descriptor__ser_de_info = {
  name : string prop option; [@option]  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  serialization_library : string prop option; [@option]
      (** serialization_library *)
}
[@@deriving yojson_of]
(** storage_descriptor__ser_de_info *)

type storage_descriptor__skewed_info = {
  skewed_column_names : string prop list option; [@option]
      (** skewed_column_names *)
  skewed_column_value_location_maps :
    (string * string prop) list option;
      [@option]
      (** skewed_column_value_location_maps *)
  skewed_column_values : string prop list option; [@option]
      (** skewed_column_values *)
}
[@@deriving yojson_of]
(** storage_descriptor__skewed_info *)

type storage_descriptor__sort_columns = {
  column : string prop;  (** column *)
  sort_order : float prop;  (** sort_order *)
}
[@@deriving yojson_of]
(** storage_descriptor__sort_columns *)

type storage_descriptor = {
  bucket_columns : string prop list option; [@option]
      (** bucket_columns *)
  compressed : bool prop option; [@option]  (** compressed *)
  input_format : string prop option; [@option]  (** input_format *)
  location : string prop option; [@option]  (** location *)
  number_of_buckets : float prop option; [@option]
      (** number_of_buckets *)
  output_format : string prop option; [@option]  (** output_format *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  stored_as_sub_directories : bool prop option; [@option]
      (** stored_as_sub_directories *)
  columns : storage_descriptor__columns list;
  schema_reference : storage_descriptor__schema_reference list;
  ser_de_info : storage_descriptor__ser_de_info list;
  skewed_info : storage_descriptor__skewed_info list;
  sort_columns : storage_descriptor__sort_columns list;
}
[@@deriving yojson_of]
(** storage_descriptor *)

type target_table = {
  catalog_id : string prop;  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  name : string prop;  (** name *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** target_table *)

type aws_glue_catalog_table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop option; [@option]  (** owner *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  retention : float prop option; [@option]  (** retention *)
  table_type : string prop option; [@option]  (** table_type *)
  view_expanded_text : string prop option; [@option]
      (** view_expanded_text *)
  view_original_text : string prop option; [@option]
      (** view_original_text *)
  open_table_format_input : open_table_format_input list;
  partition_index : partition_index list;
  partition_keys : partition_keys list;
  storage_descriptor : storage_descriptor list;
  target_table : target_table list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_table *)

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
    ~schema_version_number ~schema_id () :
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
    ?stored_as_sub_directories ~columns ~schema_reference
    ~ser_de_info ~skewed_info ~sort_columns () : storage_descriptor =
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
    ?view_original_text ~database_name ~name ~open_table_format_input
    ~partition_index ~partition_keys ~storage_descriptor
    ~target_table () : aws_glue_catalog_table =
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
    ~database_name ~name ~open_table_format_input ~partition_index
    ~partition_keys ~storage_descriptor ~target_table __id =
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
           ?view_original_text ~database_name ~name
           ~open_table_format_input ~partition_index ~partition_keys
           ~storage_descriptor ~target_table ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?description ?id ?owner
    ?parameters ?retention ?table_type ?view_expanded_text
    ?view_original_text ~database_name ~name ~open_table_format_input
    ~partition_index ~partition_keys ~storage_descriptor
    ~target_table __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?description ?id ?owner ?parameters ?retention
      ?table_type ?view_expanded_text ?view_original_text
      ~database_name ~name ~open_table_format_input ~partition_index
      ~partition_keys ~storage_descriptor ~target_table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
