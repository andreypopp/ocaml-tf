(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_dynamodb_table_replica

val aws_dynamodb_table_replica :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?table_class_override:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  global_table_arn:string prop ->
  unit ->
  aws_dynamodb_table_replica

val yojson_of_aws_dynamodb_table_replica :
  aws_dynamodb_table_replica -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  global_table_arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  point_in_time_recovery : bool prop;
  table_class_override : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?table_class_override:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  global_table_arn:string prop ->
  string ->
  t
