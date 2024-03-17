(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_service_custom_domain__timeouts
type azurerm_signalr_service_custom_domain

val azurerm_signalr_service_custom_domain :
  ?id:string prop ->
  ?timeouts:azurerm_signalr_service_custom_domain__timeouts ->
  domain_name:string prop ->
  name:string prop ->
  signalr_custom_certificate_id:string prop ->
  signalr_service_id:string prop ->
  string ->
  unit
