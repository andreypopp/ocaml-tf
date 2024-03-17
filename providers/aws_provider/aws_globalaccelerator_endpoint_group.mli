(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_endpoint_group__endpoint_configuration
type aws_globalaccelerator_endpoint_group__port_override
type aws_globalaccelerator_endpoint_group__timeouts
type aws_globalaccelerator_endpoint_group

val aws_globalaccelerator_endpoint_group :
  ?endpoint_group_region:string prop ->
  ?health_check_interval_seconds:float prop ->
  ?health_check_path:string prop ->
  ?health_check_port:float prop ->
  ?health_check_protocol:string prop ->
  ?id:string prop ->
  ?threshold_count:float prop ->
  ?traffic_dial_percentage:float prop ->
  ?timeouts:aws_globalaccelerator_endpoint_group__timeouts ->
  listener_arn:string prop ->
  endpoint_configuration:
    aws_globalaccelerator_endpoint_group__endpoint_configuration list ->
  port_override:
    aws_globalaccelerator_endpoint_group__port_override list ->
  string ->
  unit
