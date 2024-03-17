(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_partition_index__partition_index
type aws_glue_partition_index__timeouts
type aws_glue_partition_index

val aws_glue_partition_index :
  ?timeouts:aws_glue_partition_index__timeouts ->
  database_name:string ->
  table_name:string ->
  partition_index:aws_glue_partition_index__partition_index list ->
  string ->
  unit
