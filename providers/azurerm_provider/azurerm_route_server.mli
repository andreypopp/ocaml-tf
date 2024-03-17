(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_server__timeouts
type azurerm_route_server

val azurerm_route_server :
  ?branch_to_branch_traffic_enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_route_server__timeouts ->
  location:string ->
  name:string ->
  public_ip_address_id:string ->
  resource_group_name:string ->
  sku:string ->
  subnet_id:string ->
  string ->
  unit
