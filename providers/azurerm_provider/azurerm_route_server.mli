(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_server__timeouts
type azurerm_route_server

val azurerm_route_server :
  ?branch_to_branch_traffic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_route_server__timeouts ->
  location:string prop ->
  name:string prop ->
  public_ip_address_id:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  subnet_id:string prop ->
  string ->
  unit
