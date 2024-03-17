(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_shared_access_policy__timeouts
type azurerm_iothub_shared_access_policy

val azurerm_iothub_shared_access_policy :
  ?device_connect:bool ->
  ?registry_read:bool ->
  ?registry_write:bool ->
  ?service_connect:bool ->
  ?timeouts:azurerm_iothub_shared_access_policy__timeouts ->
  iothub_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
