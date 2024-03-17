(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_gateway__timeouts
type azurerm_express_route_gateway

val azurerm_express_route_gateway :
  ?allow_non_virtual_wan_traffic:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_express_route_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scale_units:float ->
  virtual_hub_id:string ->
  string ->
  unit
