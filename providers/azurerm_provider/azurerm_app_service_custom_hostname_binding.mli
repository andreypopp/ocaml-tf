(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_custom_hostname_binding__timeouts
type azurerm_app_service_custom_hostname_binding

val azurerm_app_service_custom_hostname_binding :
  ?id:string prop ->
  ?ssl_state:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:azurerm_app_service_custom_hostname_binding__timeouts ->
  app_service_name:string prop ->
  hostname:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
