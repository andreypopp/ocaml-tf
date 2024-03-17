(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_rule

val aws_cloudwatch_event_rule :
  ?description:string ->
  ?event_bus_name:string ->
  ?event_pattern:string ->
  ?id:string ->
  ?is_enabled:bool ->
  ?name:string ->
  ?name_prefix:string ->
  ?role_arn:string ->
  ?schedule_expression:string ->
  ?state:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
