(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpn_gateway_route_propagation

val aws_vpn_gateway_route_propagation :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpn_gateway_id:string prop ->
  unit ->
  aws_vpn_gateway_route_propagation

val yojson_of_aws_vpn_gateway_route_propagation :
  aws_vpn_gateway_route_propagation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  route_table_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t Tf_core.resource
