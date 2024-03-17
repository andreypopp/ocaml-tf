(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_table_replica__timeouts
type aws_dynamodb_table_replica

val aws_dynamodb_table_replica :
  ?point_in_time_recovery:bool ->
  ?table_class_override:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dynamodb_table_replica__timeouts ->
  global_table_arn:string ->
  string ->
  unit
