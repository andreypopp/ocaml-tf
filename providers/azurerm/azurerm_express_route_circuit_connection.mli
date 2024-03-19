(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_circuit_connection

val azurerm_express_route_circuit_connection :
  ?address_prefix_ipv6:string prop ->
  ?authorization_key:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  address_prefix_ipv4:string prop ->
  name:string prop ->
  peer_peering_id:string prop ->
  peering_id:string prop ->
  unit ->
  azurerm_express_route_circuit_connection

val yojson_of_azurerm_express_route_circuit_connection :
  azurerm_express_route_circuit_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_prefix_ipv4 : string prop;
  address_prefix_ipv6 : string prop;
  authorization_key : string prop;
  id : string prop;
  name : string prop;
  peer_peering_id : string prop;
  peering_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address_prefix_ipv6:string prop ->
  ?authorization_key:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  address_prefix_ipv4:string prop ->
  name:string prop ->
  peer_peering_id:string prop ->
  peering_id:string prop ->
  string ->
  t
