(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_query_suggestions_block_list__source_s3_path
type aws_kendra_query_suggestions_block_list__timeouts
type aws_kendra_query_suggestions_block_list

val aws_kendra_query_suggestions_block_list :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_kendra_query_suggestions_block_list__timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  source_s3_path:
    aws_kendra_query_suggestions_block_list__source_s3_path list ->
  string ->
  unit
