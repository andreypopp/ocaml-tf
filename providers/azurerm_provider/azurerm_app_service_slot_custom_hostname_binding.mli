(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_slot_custom_hostname_binding__timeouts
type azurerm_app_service_slot_custom_hostname_binding

val azurerm_app_service_slot_custom_hostname_binding :
  ?timeouts:
    azurerm_app_service_slot_custom_hostname_binding__timeouts ->
  app_service_slot_id:string ->
  hostname:string ->
  string ->
  unit
