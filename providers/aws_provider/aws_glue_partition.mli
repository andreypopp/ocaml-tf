(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_partition__storage_descriptor__columns
type aws_glue_partition__storage_descriptor__ser_de_info
type aws_glue_partition__storage_descriptor__skewed_info
type aws_glue_partition__storage_descriptor__sort_columns
type aws_glue_partition__storage_descriptor
type aws_glue_partition

val aws_glue_partition :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  database_name:string prop ->
  partition_values:string prop list ->
  table_name:string prop ->
  storage_descriptor:aws_glue_partition__storage_descriptor list ->
  string ->
  unit
