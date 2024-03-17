(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_table_item

val aws_dynamodb_table_item :
  ?id:string prop ->
  ?range_key:string prop ->
  hash_key:string prop ->
  item:string prop ->
  table_name:string prop ->
  string ->
  unit
