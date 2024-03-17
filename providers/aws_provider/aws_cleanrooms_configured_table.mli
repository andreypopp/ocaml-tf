(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cleanrooms_configured_table__table_reference
type aws_cleanrooms_configured_table__timeouts
type aws_cleanrooms_configured_table

val aws_cleanrooms_configured_table :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_cleanrooms_configured_table__timeouts ->
  allowed_columns:string list ->
  analysis_method:string ->
  name:string ->
  table_reference:
    aws_cleanrooms_configured_table__table_reference list ->
  string ->
  unit
