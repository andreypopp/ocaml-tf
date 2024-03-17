(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_slot_custom_hostname_binding__timeouts
type azurerm_app_service_slot_custom_hostname_binding

type t = private {
  app_service_slot_id : string prop;
  hostname : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

val azurerm_app_service_slot_custom_hostname_binding :
  ?id:string prop ->
  ?ssl_state:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:
    azurerm_app_service_slot_custom_hostname_binding__timeouts ->
  app_service_slot_id:string prop ->
  hostname:string prop ->
  string ->
  t
