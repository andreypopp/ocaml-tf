(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing__propagated_route_table

val routing__propagated_route_table :
  ?labels:string prop list ->
  ?route_table_ids:string prop list ->
  unit ->
  routing__propagated_route_table

type routing

val routing :
  ?associated_route_table_id:string prop ->
  ?inbound_route_map_id:string prop ->
  ?outbound_route_map_id:string prop ->
  ?propagated_route_table:routing__propagated_route_table list ->
  unit ->
  routing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_connection

val azurerm_express_route_connection :
  ?authorization_key:string prop ->
  ?enable_internet_security:bool prop ->
  ?express_route_gateway_bypass_enabled:bool prop ->
  ?id:string prop ->
  ?routing_weight:float prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  express_route_circuit_peering_id:string prop ->
  express_route_gateway_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_express_route_connection

val yojson_of_azurerm_express_route_connection :
  azurerm_express_route_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_key : string prop;
  enable_internet_security : bool prop;
  express_route_circuit_peering_id : string prop;
  express_route_gateway_bypass_enabled : bool prop;
  express_route_gateway_id : string prop;
  id : string prop;
  name : string prop;
  routing_weight : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorization_key:string prop ->
  ?enable_internet_security:bool prop ->
  ?express_route_gateway_bypass_enabled:bool prop ->
  ?id:string prop ->
  ?routing_weight:float prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  express_route_circuit_peering_id:string prop ->
  express_route_gateway_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?authorization_key:string prop ->
  ?enable_internet_security:bool prop ->
  ?express_route_gateway_bypass_enabled:bool prop ->
  ?id:string prop ->
  ?routing_weight:float prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  express_route_circuit_peering_id:string prop ->
  express_route_gateway_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
