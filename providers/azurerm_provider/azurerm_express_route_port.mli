(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_port__identity
type azurerm_express_route_port__link1
type azurerm_express_route_port__link2
type azurerm_express_route_port__timeouts
type azurerm_express_route_port

val azurerm_express_route_port :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_express_route_port__timeouts ->
  bandwidth_in_gbps:float ->
  encapsulation:string ->
  location:string ->
  name:string ->
  peering_location:string ->
  resource_group_name:string ->
  identity:azurerm_express_route_port__identity list ->
  link1:azurerm_express_route_port__link1 list ->
  link2:azurerm_express_route_port__link2 list ->
  string ->
  unit
