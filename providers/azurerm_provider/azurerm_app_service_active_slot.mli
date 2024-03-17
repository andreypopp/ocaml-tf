(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_active_slot__timeouts
type azurerm_app_service_active_slot

val azurerm_app_service_active_slot :
  ?id:string prop ->
  ?timeouts:azurerm_app_service_active_slot__timeouts ->
  app_service_name:string prop ->
  app_service_slot_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
