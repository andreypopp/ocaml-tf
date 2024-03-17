(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_query_suggestions_block_list__source_s3_path
type aws_kendra_query_suggestions_block_list__timeouts
type aws_kendra_query_suggestions_block_list

val aws_kendra_query_suggestions_block_list :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_kendra_query_suggestions_block_list__timeouts ->
  index_id:string ->
  name:string ->
  role_arn:string ->
  source_s3_path:
    aws_kendra_query_suggestions_block_list__source_s3_path list ->
  string ->
  unit
