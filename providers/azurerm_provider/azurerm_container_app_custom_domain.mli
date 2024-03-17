(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_custom_domain__timeouts
type azurerm_container_app_custom_domain

val azurerm_container_app_custom_domain :
  ?id:string prop ->
  ?timeouts:azurerm_container_app_custom_domain__timeouts ->
  certificate_binding_type:string prop ->
  container_app_environment_certificate_id:string prop ->
  container_app_id:string prop ->
  name:string prop ->
  string ->
  unit
