(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_shared_access_policy__timeouts
type azurerm_iothub_shared_access_policy

val azurerm_iothub_shared_access_policy :
  ?device_connect:bool prop ->
  ?id:string prop ->
  ?registry_read:bool prop ->
  ?registry_write:bool prop ->
  ?service_connect:bool prop ->
  ?timeouts:azurerm_iothub_shared_access_policy__timeouts ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
