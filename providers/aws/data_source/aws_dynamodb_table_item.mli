(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dynamodb_table_item

val aws_dynamodb_table_item :
  ?expression_attribute_names:(string * string prop) list ->
  ?id:string prop ->
  ?projection_expression:string prop ->
  key:string prop ->
  table_name:string prop ->
  unit ->
  aws_dynamodb_table_item

val yojson_of_aws_dynamodb_table_item :
  aws_dynamodb_table_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  expression_attribute_names : (string * string) list prop;
  id : string prop;
  item : string prop;
  key : string prop;
  projection_expression : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expression_attribute_names:(string * string prop) list ->
  ?id:string prop ->
  ?projection_expression:string prop ->
  key:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?expression_attribute_names:(string * string prop) list ->
  ?id:string prop ->
  ?projection_expression:string prop ->
  key:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
