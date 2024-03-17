(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_custom_routing_listener__port_range
type aws_globalaccelerator_custom_routing_listener__timeouts
type aws_globalaccelerator_custom_routing_listener
type t = private { accelerator_arn : string prop; id : string prop }

val aws_globalaccelerator_custom_routing_listener :
  ?id:string prop ->
  ?timeouts:aws_globalaccelerator_custom_routing_listener__timeouts ->
  accelerator_arn:string prop ->
  port_range:
    aws_globalaccelerator_custom_routing_listener__port_range list ->
  string ->
  t
