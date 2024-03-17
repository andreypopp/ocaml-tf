(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_active_slot__timeouts
type azurerm_app_service_active_slot

val azurerm_app_service_active_slot :
  ?timeouts:azurerm_app_service_active_slot__timeouts ->
  app_service_name:string ->
  app_service_slot_name:string ->
  resource_group_name:string ->
  string ->
  unit
