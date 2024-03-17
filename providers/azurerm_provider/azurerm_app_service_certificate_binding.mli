(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate_binding__timeouts
type azurerm_app_service_certificate_binding

val azurerm_app_service_certificate_binding :
  ?id:string ->
  ?timeouts:azurerm_app_service_certificate_binding__timeouts ->
  certificate_id:string ->
  hostname_binding_id:string ->
  ssl_state:string ->
  string ->
  unit
