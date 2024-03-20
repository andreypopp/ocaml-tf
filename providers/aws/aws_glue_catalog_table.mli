(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type open_table_format_input__iceberg_input

val open_table_format_input__iceberg_input :
  ?version:string prop ->
  metadata_operation:string prop ->
  unit ->
  open_table_format_input__iceberg_input

type open_table_format_input

val open_table_format_input :
  iceberg_input:open_table_format_input__iceberg_input list ->
  unit ->
  open_table_format_input

type partition_index

val partition_index :
  index_name:string prop ->
  keys:string prop list ->
  unit ->
  partition_index

type partition_keys

val partition_keys :
  ?comment:string prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  partition_keys

type storage_descriptor__columns

val storage_descriptor__columns :
  ?comment:string prop ->
  ?parameters:(string * string prop) list ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  storage_descriptor__columns

type storage_descriptor__schema_reference__schema_id

val storage_descriptor__schema_reference__schema_id :
  ?registry_name:string prop ->
  ?schema_arn:string prop ->
  ?schema_name:string prop ->
  unit ->
  storage_descriptor__schema_reference__schema_id

type storage_descriptor__schema_reference

val storage_descriptor__schema_reference :
  ?schema_version_id:string prop ->
  schema_version_number:float prop ->
  schema_id:storage_descriptor__schema_reference__schema_id list ->
  unit ->
  storage_descriptor__schema_reference

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
  schema_reference:storage_descriptor__schema_reference list ->
  ser_de_info:storage_descriptor__ser_de_info list ->
  skewed_info:storage_descriptor__skewed_info list ->
  sort_columns:storage_descriptor__sort_columns list ->
  unit ->
  storage_descriptor

type target_table

val target_table :
  ?region:string prop ->
  catalog_id:string prop ->
  database_name:string prop ->
  name:string prop ->
  unit ->
  target_table

type aws_glue_catalog_table

val aws_glue_catalog_table :
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?parameters:(string * string prop) list ->
  ?retention:float prop ->
  ?table_type:string prop ->
  ?view_expanded_text:string prop ->
  ?view_original_text:string prop ->
  database_name:string prop ->
  name:string prop ->
  open_table_format_input:open_table_format_input list ->
  partition_index:partition_index list ->
  partition_keys:partition_keys list ->
  storage_descriptor:storage_descriptor list ->
  target_table:target_table list ->
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
  retention : float prop;
  table_type : string prop;
  view_expanded_text : string prop;
  view_original_text : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?parameters:(string * string prop) list ->
  ?retention:float prop ->
  ?table_type:string prop ->
  ?view_expanded_text:string prop ->
  ?view_original_text:string prop ->
  database_name:string prop ->
  name:string prop ->
  open_table_format_input:open_table_format_input list ->
  partition_index:partition_index list ->
  partition_keys:partition_keys list ->
  storage_descriptor:storage_descriptor list ->
  target_table:target_table list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?parameters:(string * string prop) list ->
  ?retention:float prop ->
  ?table_type:string prop ->
  ?view_expanded_text:string prop ->
  ?view_original_text:string prop ->
  database_name:string prop ->
  name:string prop ->
  open_table_format_input:open_table_format_input list ->
  partition_index:partition_index list ->
  partition_keys:partition_keys list ->
  storage_descriptor:storage_descriptor list ->
  target_table:target_table list ->
  string ->
  t Tf_core.resource
