(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_descriptor__columns

val storage_descriptor__columns :
  ?comment:string prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  storage_descriptor__columns

type storage_descriptor__ser_de_info

val storage_descriptor__ser_de_info :
  ?name:string prop ->
  ?parameters:(string * string prop) list ->
  ?serialization_library:string prop ->
  unit ->
  storage_descriptor__ser_de_info

type storage_descriptor__skewed_info

val storage_descriptor__skewed_info :
  ?skewed_column_names:string prop list ->
  ?skewed_column_value_location_maps:(string * string prop) list ->
  ?skewed_column_values:string prop list ->
  unit ->
  storage_descriptor__skewed_info

type storage_descriptor__sort_columns

val storage_descriptor__sort_columns :
  column:string prop ->
  sort_order:float prop ->
  unit ->
  storage_descriptor__sort_columns

type storage_descriptor

val storage_descriptor :
  ?bucket_columns:string prop list ->
  ?compressed:bool prop ->
  ?input_format:string prop ->
  ?location:string prop ->
  ?number_of_buckets:float prop ->
  ?output_format:string prop ->
  ?parameters:(string * string prop) list ->
  ?stored_as_sub_directories:bool prop ->
  columns:storage_descriptor__columns list ->
  ser_de_info:storage_descriptor__ser_de_info list ->
  skewed_info:storage_descriptor__skewed_info list ->
  sort_columns:storage_descriptor__sort_columns list ->
  unit ->
  storage_descriptor

type aws_glue_partition

val aws_glue_partition :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  database_name:string prop ->
  partition_values:string prop list ->
  table_name:string prop ->
  storage_descriptor:storage_descriptor list ->
  unit ->
  aws_glue_partition

val yojson_of_aws_glue_partition : aws_glue_partition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  catalog_id : string prop;
  creation_time : string prop;
  database_name : string prop;
  id : string prop;
  last_accessed_time : string prop;
  last_analyzed_time : string prop;
  parameters : (string * string) list prop;
  partition_values : string list prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  database_name:string prop ->
  partition_values:string prop list ->
  table_name:string prop ->
  storage_descriptor:storage_descriptor list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  database_name:string prop ->
  partition_values:string prop list ->
  table_name:string prop ->
  storage_descriptor:storage_descriptor list ->
  string ->
  t Tf_core.resource
