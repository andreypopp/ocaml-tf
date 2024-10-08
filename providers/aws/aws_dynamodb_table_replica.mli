(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  global_table_arn:string prop ->
  unit ->
  aws_dynamodb_table_replica

val yojson_of_aws_dynamodb_table_replica :
  aws_dynamodb_table_replica -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  global_table_arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  point_in_time_recovery : bool prop;
  table_class_override : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?table_class_override:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  global_table_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?table_class_override:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  global_table_arn:string prop ->
  string ->
  t Tf_core.resource
