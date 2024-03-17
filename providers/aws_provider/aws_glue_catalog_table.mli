(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_catalog_table__open_table_format_input__iceberg_input
type aws_glue_catalog_table__open_table_format_input
type aws_glue_catalog_table__partition_index
type aws_glue_catalog_table__partition_keys
type aws_glue_catalog_table__storage_descriptor__columns

type aws_glue_catalog_table__storage_descriptor__schema_reference__schema_id

type aws_glue_catalog_table__storage_descriptor__schema_reference
type aws_glue_catalog_table__storage_descriptor__ser_de_info
type aws_glue_catalog_table__storage_descriptor__skewed_info
type aws_glue_catalog_table__storage_descriptor__sort_columns
type aws_glue_catalog_table__storage_descriptor
type aws_glue_catalog_table__target_table
type aws_glue_catalog_table

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
  open_table_format_input:
    aws_glue_catalog_table__open_table_format_input list ->
  partition_index:aws_glue_catalog_table__partition_index list ->
  partition_keys:aws_glue_catalog_table__partition_keys list ->
  storage_descriptor:aws_glue_catalog_table__storage_descriptor list ->
  target_table:aws_glue_catalog_table__target_table list ->
  string ->
  t
