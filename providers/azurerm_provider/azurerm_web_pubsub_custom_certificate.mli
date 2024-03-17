(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_custom_certificate__timeouts
type azurerm_web_pubsub_custom_certificate

val azurerm_web_pubsub_custom_certificate :
  ?id:string prop ->
  ?timeouts:azurerm_web_pubsub_custom_certificate__timeouts ->
  custom_certificate_id:string prop ->
  name:string prop ->
  web_pubsub_id:string prop ->
  string ->
  unit
