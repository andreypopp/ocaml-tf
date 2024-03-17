(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate_binding__timeouts
type azurerm_app_service_certificate_binding

val azurerm_app_service_certificate_binding :
  ?id:string prop ->
  ?timeouts:azurerm_app_service_certificate_binding__timeouts ->
  certificate_id:string prop ->
  hostname_binding_id:string prop ->
  ssl_state:string prop ->
  string ->
  unit
