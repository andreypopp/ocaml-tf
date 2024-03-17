(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_data_quality_ruleset__target_table
type aws_glue_data_quality_ruleset

val aws_glue_data_quality_ruleset :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  ruleset:string ->
  target_table:aws_glue_data_quality_ruleset__target_table list ->
  string ->
  unit
