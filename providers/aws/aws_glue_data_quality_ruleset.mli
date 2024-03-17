(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_data_quality_ruleset__target_table
type aws_glue_data_quality_ruleset

type t = private {
  arn : string prop;
  created_on : string prop;
  description : string prop;
  id : string prop;
  last_modified_on : string prop;
  name : string prop;
  recommendation_run_id : string prop;
  ruleset : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_glue_data_quality_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  ruleset:string prop ->
  target_table:aws_glue_data_quality_ruleset__target_table list ->
  string ->
  t
