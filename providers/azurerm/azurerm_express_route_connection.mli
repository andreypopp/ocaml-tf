(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_connection__routing__propagated_route_table
type azurerm_express_route_connection__routing
type azurerm_express_route_connection__timeouts
type azurerm_express_route_connection

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

val azurerm_express_route_connection :
  ?authorization_key:string prop ->
  ?enable_internet_security:bool prop ->
  ?express_route_gateway_bypass_enabled:bool prop ->
  ?id:string prop ->
  ?routing_weight:float prop ->
  ?timeouts:azurerm_express_route_connection__timeouts ->
  express_route_circuit_peering_id:string prop ->
  express_route_gateway_id:string prop ->
  name:string prop ->
  routing:azurerm_express_route_connection__routing list ->
  string ->
  t
