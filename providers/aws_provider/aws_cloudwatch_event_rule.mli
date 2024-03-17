(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_rule

val aws_cloudwatch_event_rule :
  ?description:string ->
  ?event_bus_name:string ->
  ?event_pattern:string ->
  ?is_enabled:bool ->
  ?role_arn:string ->
  ?schedule_expression:string ->
  ?state:string ->
  ?tags:(string * string) list ->
  string ->
  unit
