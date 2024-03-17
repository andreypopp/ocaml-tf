(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_health_check

val aws_route53_health_check :
  ?child_health_threshold:float ->
  ?child_healthchecks:string list ->
  ?cloudwatch_alarm_name:string ->
  ?cloudwatch_alarm_region:string ->
  ?disabled:bool ->
  ?fqdn:string ->
  ?insufficient_data_health_status:string ->
  ?invert_healthcheck:bool ->
  ?ip_address:string ->
  ?measure_latency:bool ->
  ?port:float ->
  ?reference_name:string ->
  ?regions:string list ->
  ?request_interval:float ->
  ?resource_path:string ->
  ?routing_control_arn:string ->
  ?search_string:string ->
  ?tags:(string * string) list ->
  type_:string ->
  string ->
  unit
