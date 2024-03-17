(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_device_update_account__identity
type azurerm_iothub_device_update_account__timeouts
type azurerm_iothub_device_update_account

val azurerm_iothub_device_update_account :
  ?public_network_access_enabled:bool ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_iothub_device_update_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_iothub_device_update_account__identity list ->
  string ->
  unit
