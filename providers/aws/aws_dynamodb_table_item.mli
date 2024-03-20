(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dynamodb_table_item

val aws_dynamodb_table_item :
  ?id:string prop ->
  ?range_key:string prop ->
  hash_key:string prop ->
  item:string prop ->
  table_name:string prop ->
  unit ->
  aws_dynamodb_table_item

val yojson_of_aws_dynamodb_table_item :
  aws_dynamodb_table_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hash_key : string prop;
  id : string prop;
  item : string prop;
  range_key : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?range_key:string prop ->
  hash_key:string prop ->
  item:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?range_key:string prop ->
  hash_key:string prop ->
  item:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
