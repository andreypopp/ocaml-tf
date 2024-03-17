(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration

type aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration

type aws_globalaccelerator_custom_routing_endpoint_group__timeouts
type aws_globalaccelerator_custom_routing_endpoint_group

val aws_globalaccelerator_custom_routing_endpoint_group :
  ?endpoint_group_region:string prop ->
  ?id:string prop ->
  ?timeouts:
    aws_globalaccelerator_custom_routing_endpoint_group__timeouts ->
  listener_arn:string prop ->
  destination_configuration:
    aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration
    list ->
  endpoint_configuration:
    aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration
    list ->
  string ->
  unit
