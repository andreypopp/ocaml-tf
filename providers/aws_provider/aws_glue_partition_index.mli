(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_partition_index__partition_index
type aws_glue_partition_index__timeouts
type aws_glue_partition_index

val aws_glue_partition_index :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_glue_partition_index__timeouts ->
  database_name:string prop ->
  table_name:string prop ->
  partition_index:aws_glue_partition_index__partition_index list ->
  string ->
  unit
