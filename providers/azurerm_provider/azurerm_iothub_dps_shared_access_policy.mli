(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_dps_shared_access_policy__timeouts
type azurerm_iothub_dps_shared_access_policy

val azurerm_iothub_dps_shared_access_policy :
  ?enrollment_read:bool ->
  ?enrollment_write:bool ->
  ?id:string ->
  ?registration_read:bool ->
  ?registration_write:bool ->
  ?service_config:bool ->
  ?timeouts:azurerm_iothub_dps_shared_access_policy__timeouts ->
  iothub_dps_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
