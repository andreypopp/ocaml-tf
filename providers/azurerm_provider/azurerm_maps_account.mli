(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maps_account__timeouts
type azurerm_maps_account

val azurerm_maps_account :
  ?id:string ->
  ?local_authentication_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_maps_account__timeouts ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
