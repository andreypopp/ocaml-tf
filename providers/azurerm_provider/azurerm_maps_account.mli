(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maps_account__timeouts
type azurerm_maps_account

val azurerm_maps_account :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_maps_account__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  unit
