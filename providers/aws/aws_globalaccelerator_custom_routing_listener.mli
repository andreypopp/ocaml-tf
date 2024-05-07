(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type port_range

val port_range :
  ?from_port:float prop -> ?to_port:float prop -> unit -> port_range

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_globalaccelerator_custom_routing_listener

val aws_globalaccelerator_custom_routing_listener :
  ?id:string prop ->
  ?timeouts:timeouts ->
  accelerator_arn:string prop ->
  port_range:port_range list ->
  unit ->
  aws_globalaccelerator_custom_routing_listener

val yojson_of_aws_globalaccelerator_custom_routing_listener :
  aws_globalaccelerator_custom_routing_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accelerator_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  accelerator_arn:string prop ->
  port_range:port_range list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  accelerator_arn:string prop ->
  port_range:port_range list ->
  string ->
  t Tf_core.resource
