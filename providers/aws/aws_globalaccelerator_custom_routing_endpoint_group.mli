(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_configuration

val destination_configuration :
  from_port:float prop ->
  protocols:string prop list ->
  to_port:float prop ->
  unit ->
  destination_configuration

type endpoint_configuration

val endpoint_configuration :
  ?endpoint_id:string prop -> unit -> endpoint_configuration

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_globalaccelerator_custom_routing_endpoint_group

val aws_globalaccelerator_custom_routing_endpoint_group :
  ?endpoint_group_region:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  destination_configuration:destination_configuration list ->
  endpoint_configuration:endpoint_configuration list ->
  unit ->
  aws_globalaccelerator_custom_routing_endpoint_group

val yojson_of_aws_globalaccelerator_custom_routing_endpoint_group :
  aws_globalaccelerator_custom_routing_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  endpoint_group_region : string prop;
  id : string prop;
  listener_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?endpoint_group_region:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  destination_configuration:destination_configuration list ->
  endpoint_configuration:endpoint_configuration list ->
  string ->
  t

val make :
  ?endpoint_group_region:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  destination_configuration:destination_configuration list ->
  endpoint_configuration:endpoint_configuration list ->
  string ->
  t Tf_core.resource
