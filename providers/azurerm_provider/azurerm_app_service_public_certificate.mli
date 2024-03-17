(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_public_certificate__timeouts
type azurerm_app_service_public_certificate

val azurerm_app_service_public_certificate :
  ?id:string prop ->
  ?timeouts:azurerm_app_service_public_certificate__timeouts ->
  app_service_name:string prop ->
  blob:string prop ->
  certificate_location:string prop ->
  certificate_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
