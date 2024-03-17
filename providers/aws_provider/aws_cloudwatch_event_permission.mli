(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_permission__condition
type aws_cloudwatch_event_permission

val aws_cloudwatch_event_permission :
  ?action:string ->
  ?event_bus_name:string ->
  principal:string ->
  statement_id:string ->
  condition:aws_cloudwatch_event_permission__condition list ->
  string ->
  unit
