(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cleanrooms_configured_table__table_reference
type aws_cleanrooms_configured_table__timeouts
type aws_cleanrooms_configured_table

val aws_cleanrooms_configured_table :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cleanrooms_configured_table__timeouts ->
  allowed_columns:string prop list ->
  analysis_method:string prop ->
  name:string prop ->
  table_reference:
    aws_cleanrooms_configured_table__table_reference list ->
  string ->
  unit
