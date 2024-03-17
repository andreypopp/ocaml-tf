(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_route_table__route
type azurerm_virtual_hub_route_table__timeouts
type azurerm_virtual_hub_route_table

type t = private {
  id : string prop;
  labels : string list prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val azurerm_virtual_hub_route_table :
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:azurerm_virtual_hub_route_table__timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  route:azurerm_virtual_hub_route_table__route list ->
  string ->
  t
