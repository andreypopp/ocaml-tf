(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_permission__condition
type aws_cloudwatch_event_permission

val aws_cloudwatch_event_permission :
  ?action:string prop ->
  ?event_bus_name:string prop ->
  ?id:string prop ->
  principal:string prop ->
  statement_id:string prop ->
  condition:aws_cloudwatch_event_permission__condition list ->
  string ->
  unit
