(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_dps_shared_access_policy__timeouts
type azurerm_iothub_dps_shared_access_policy

val azurerm_iothub_dps_shared_access_policy :
  ?enrollment_read:bool prop ->
  ?enrollment_write:bool prop ->
  ?id:string prop ->
  ?registration_read:bool prop ->
  ?registration_write:bool prop ->
  ?service_config:bool prop ->
  ?timeouts:azurerm_iothub_dps_shared_access_policy__timeouts ->
  iothub_dps_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
