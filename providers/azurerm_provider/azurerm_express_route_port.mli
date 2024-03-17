(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_port__identity
type azurerm_express_route_port__link1
type azurerm_express_route_port__link2
type azurerm_express_route_port__timeouts
type azurerm_express_route_port

val azurerm_express_route_port :
  ?billing_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_express_route_port__timeouts ->
  bandwidth_in_gbps:float prop ->
  encapsulation:string prop ->
  location:string prop ->
  name:string prop ->
  peering_location:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_express_route_port__identity list ->
  link1:azurerm_express_route_port__link1 list ->
  link2:azurerm_express_route_port__link2 list ->
  string ->
  unit
