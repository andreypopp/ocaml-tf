(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_service_custom_domain__timeouts
type azurerm_signalr_service_custom_domain

val azurerm_signalr_service_custom_domain :
  ?timeouts:azurerm_signalr_service_custom_domain__timeouts ->
  domain_name:string ->
  name:string ->
  signalr_custom_certificate_id:string ->
  signalr_service_id:string ->
  string ->
  unit
