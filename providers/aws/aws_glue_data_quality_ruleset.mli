(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_table

val target_table :
  ?catalog_id:string prop ->
  database_name:string prop ->
  table_name:string prop ->
  unit ->
  target_table

type aws_glue_data_quality_ruleset

val aws_glue_data_quality_ruleset :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_table:target_table list ->
  name:string prop ->
  ruleset:string prop ->
  unit ->
  aws_glue_data_quality_ruleset

val yojson_of_aws_glue_data_quality_ruleset :
  aws_glue_data_quality_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_on : string prop;
  description : string prop;
  id : string prop;
  last_modified_on : string prop;
  name : string prop;
  recommendation_run_id : string prop;
  ruleset : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_table:target_table list ->
  name:string prop ->
  ruleset:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_table:target_table list ->
  name:string prop ->
  ruleset:string prop ->
  string ->
  t Tf_core.resource
