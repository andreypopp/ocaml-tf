(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type partition_index = {
  index_name : string prop;  (** index_name *)
  index_status : string prop;  (** index_status *)
  keys : string prop list;  (** keys *)
}

type partition_keys = {
  comment : string prop;  (** comment *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type storage_descriptor__sort_columns = {
  column : string prop;  (** column *)
  sort_order : float prop;  (** sort_order *)
}

type storage_descriptor__skewed_info = {
  skewed_column_names : string prop list;  (** skewed_column_names *)
  skewed_column_value_location_maps : (string * string prop) list;
      (** skewed_column_value_location_maps *)
  skewed_column_values : string prop list;
      (** skewed_column_values *)
}

type storage_descriptor__ser_de_info = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list;  (** parameters *)
  serialization_library : string prop;  (** serialization_library *)
}

type storage_descriptor__schema_reference__schema_id = {
  registry_name : string prop;  (** registry_name *)
  schema_arn : string prop;  (** schema_arn *)
  schema_name : string prop;  (** schema_name *)
}

type storage_descriptor__schema_reference = {
  schema_id : storage_descriptor__schema_reference__schema_id list;
      (** schema_id *)
  schema_version_id : string prop;  (** schema_version_id *)
  schema_version_number : float prop;  (** schema_version_number *)
}

type storage_descriptor__columns = {
  comment : string prop;  (** comment *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list;  (** parameters *)
  type_ : string prop; [@key "type"]  (** type *)
}

type storage_descriptor = {
  bucket_columns : string prop list;  (** bucket_columns *)
  columns : storage_descriptor__columns list;  (** columns *)
  compressed : bool prop;  (** compressed *)
  input_format : string prop;  (** input_format *)
  location : string prop;  (** location *)
  number_of_buckets : float prop;  (** number_of_buckets *)
  output_format : string prop;  (** output_format *)
  parameters : (string * string prop) list;  (** parameters *)
  schema_reference : storage_descriptor__schema_reference list;
      (** schema_reference *)
  ser_de_info : storage_descriptor__ser_de_info list;
      (** ser_de_info *)
  skewed_info : storage_descriptor__skewed_info list;
      (** skewed_info *)
  sort_columns : storage_descriptor__sort_columns list;
      (** sort_columns *)
  stored_as_sub_directories : bool prop;
      (** stored_as_sub_directories *)
}

type target_table = {
  catalog_id : string prop;  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
}

type aws_glue_catalog_table

val aws_glue_catalog_table :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?query_as_of_time:string prop ->
  ?transaction_id:float prop ->
  database_name:string prop ->
  name:string prop ->
  unit ->
  aws_glue_catalog_table

val yojson_of_aws_glue_catalog_table : aws_glue_catalog_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?query_as_of_time:string prop ->
  ?transaction_id:float prop ->
  database_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?query_as_of_time:string prop ->
  ?transaction_id:float prop ->
  database_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
