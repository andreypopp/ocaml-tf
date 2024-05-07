(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_transit_gateway_connect_peer_association

val aws_networkmanager_transit_gateway_connect_peer_association :
  ?id:string prop ->
  ?link_id:string prop ->
  ?timeouts:timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  transit_gateway_connect_peer_arn:string prop ->
  unit ->
  aws_networkmanager_transit_gateway_connect_peer_association

val yojson_of_aws_networkmanager_transit_gateway_connect_peer_association :
  aws_networkmanager_transit_gateway_connect_peer_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  transit_gateway_connect_peer_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?link_id:string prop ->
  ?timeouts:timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  transit_gateway_connect_peer_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?link_id:string prop ->
  ?timeouts:timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  transit_gateway_connect_peer_arn:string prop ->
  string ->
  t Tf_core.resource
