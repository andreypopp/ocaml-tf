(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_contributor_insights__timeouts
type aws_dynamodb_contributor_insights

type t = private {
  id : string prop;
  index_name : string prop;
  table_name : string prop;
}

val aws_dynamodb_contributor_insights :
  ?id:string prop ->
  ?index_name:string prop ->
  ?timeouts:aws_dynamodb_contributor_insights__timeouts ->
  table_name:string prop ->
  string ->
  t
