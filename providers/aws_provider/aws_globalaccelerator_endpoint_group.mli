(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_endpoint_group__endpoint_configuration
type aws_globalaccelerator_endpoint_group__port_override
type aws_globalaccelerator_endpoint_group__timeouts
type aws_globalaccelerator_endpoint_group

val aws_globalaccelerator_endpoint_group :
  ?health_check_interval_seconds:float ->
  ?health_check_protocol:string ->
  ?threshold_count:float ->
  ?traffic_dial_percentage:float ->
  ?timeouts:aws_globalaccelerator_endpoint_group__timeouts ->
  listener_arn:string ->
  endpoint_configuration:
    aws_globalaccelerator_endpoint_group__endpoint_configuration list ->
  port_override:
    aws_globalaccelerator_endpoint_group__port_override list ->
  string ->
  unit
