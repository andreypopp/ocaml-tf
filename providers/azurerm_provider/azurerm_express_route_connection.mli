(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_connection__routing__propagated_route_table
type azurerm_express_route_connection__routing
type azurerm_express_route_connection__timeouts
type azurerm_express_route_connection

val azurerm_express_route_connection :
  ?authorization_key:string ->
  ?enable_internet_security:bool ->
  ?express_route_gateway_bypass_enabled:bool ->
  ?routing_weight:float ->
  ?timeouts:azurerm_express_route_connection__timeouts ->
  express_route_circuit_peering_id:string ->
  express_route_gateway_id:string ->
  name:string ->
  routing:azurerm_express_route_connection__routing list ->
  string ->
  unit
