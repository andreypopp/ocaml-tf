(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_authorization__timeouts
type azurerm_express_route_circuit_authorization

val azurerm_express_route_circuit_authorization :
  ?id:string prop ->
  ?timeouts:azurerm_express_route_circuit_authorization__timeouts ->
  express_route_circuit_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
