(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_device_update_account__identity
type azurerm_iothub_device_update_account__timeouts
type azurerm_iothub_device_update_account

val azurerm_iothub_device_update_account :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_iothub_device_update_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_iothub_device_update_account__identity list ->
  string ->
  unit
