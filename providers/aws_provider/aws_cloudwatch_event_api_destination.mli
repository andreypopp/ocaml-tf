(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_api_destination

val aws_cloudwatch_event_api_destination :
  ?description:string ->
  ?id:string ->
  ?invocation_rate_limit_per_second:float ->
  connection_arn:string ->
  http_method:string ->
  invocation_endpoint:string ->
  name:string ->
  string ->
  unit
