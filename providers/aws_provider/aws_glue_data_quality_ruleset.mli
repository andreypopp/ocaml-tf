(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_data_quality_ruleset__target_table
type aws_glue_data_quality_ruleset

val aws_glue_data_quality_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  ruleset:string prop ->
  target_table:aws_glue_data_quality_ruleset__target_table list ->
  string ->
  unit
