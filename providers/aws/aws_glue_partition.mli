(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_partition__storage_descriptor__columns
type aws_glue_partition__storage_descriptor__ser_de_info
type aws_glue_partition__storage_descriptor__skewed_info
type aws_glue_partition__storage_descriptor__sort_columns
type aws_glue_partition__storage_descriptor
type aws_glue_partition

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

val aws_glue_partition :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  database_name:string prop ->
  partition_values:string prop list ->
  table_name:string prop ->
  storage_descriptor:aws_glue_partition__storage_descriptor list ->
  string ->
  t
