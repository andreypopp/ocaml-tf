(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_service_custom_certificate__timeouts
type azurerm_signalr_service_custom_certificate

val azurerm_signalr_service_custom_certificate :
  ?id:string prop ->
  ?timeouts:azurerm_signalr_service_custom_certificate__timeouts ->
  custom_certificate_id:string prop ->
  name:string prop ->
  signalr_service_id:string prop ->
  string ->
  unit
