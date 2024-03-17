(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_custom_domain__timeouts
type azurerm_container_app_custom_domain

val azurerm_container_app_custom_domain :
  ?timeouts:azurerm_container_app_custom_domain__timeouts ->
  certificate_binding_type:string ->
  container_app_environment_certificate_id:string ->
  container_app_id:string ->
  name:string ->
  string ->
  unit
