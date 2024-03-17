(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_port_authorization__timeouts
type azurerm_express_route_port_authorization

val azurerm_express_route_port_authorization :
  ?id:string prop ->
  ?timeouts:azurerm_express_route_port_authorization__timeouts ->
  express_route_port_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
