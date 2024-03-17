(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_slot_virtual_network_swift_connection__timeouts

type azurerm_app_service_slot_virtual_network_swift_connection

val azurerm_app_service_slot_virtual_network_swift_connection :
  ?id:string prop ->
  ?timeouts:
    azurerm_app_service_slot_virtual_network_swift_connection__timeouts ->
  app_service_id:string prop ->
  slot_name:string prop ->
  subnet_id:string prop ->
  string ->
  unit
