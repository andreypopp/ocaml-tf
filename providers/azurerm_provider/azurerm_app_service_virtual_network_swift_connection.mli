(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_virtual_network_swift_connection__timeouts
type azurerm_app_service_virtual_network_swift_connection

type t = private {
  app_service_id : string prop;
  id : string prop;
  subnet_id : string prop;
}

val azurerm_app_service_virtual_network_swift_connection :
  ?id:string prop ->
  ?timeouts:
    azurerm_app_service_virtual_network_swift_connection__timeouts ->
  app_service_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
