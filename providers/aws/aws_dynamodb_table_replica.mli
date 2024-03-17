(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_table_replica__timeouts
type aws_dynamodb_table_replica

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

val aws_dynamodb_table_replica :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?point_in_time_recovery:bool prop ->
  ?table_class_override:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dynamodb_table_replica__timeouts ->
  global_table_arn:string prop ->
  string ->
  t
