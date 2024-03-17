(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_table_item

type t = private {
  hash_key : string prop;
  id : string prop;
  item : string prop;
  range_key : string prop;
  table_name : string prop;
}

val aws_dynamodb_table_item :
  ?id:string prop ->
  ?range_key:string prop ->
  hash_key:string prop ->
  item:string prop ->
  table_name:string prop ->
  string ->
  t
