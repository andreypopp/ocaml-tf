(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_public_certificate__timeouts
type azurerm_app_service_public_certificate

val azurerm_app_service_public_certificate :
  ?timeouts:azurerm_app_service_public_certificate__timeouts ->
  app_service_name:string ->
  blob:string ->
  certificate_location:string ->
  certificate_name:string ->
  resource_group_name:string ->
  string ->
  unit
