(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit__sku
type azurerm_express_route_circuit__timeouts
type azurerm_express_route_circuit

val azurerm_express_route_circuit :
  ?allow_classic_operations:bool ->
  ?authorization_key:string ->
  ?bandwidth_in_gbps:float ->
  ?bandwidth_in_mbps:float ->
  ?express_route_port_id:string ->
  ?id:string ->
  ?peering_location:string ->
  ?service_provider_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_express_route_circuit__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:azurerm_express_route_circuit__sku list ->
  string ->
  unit
