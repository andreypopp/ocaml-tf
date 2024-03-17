(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_custom_domain__timeouts
type azurerm_web_pubsub_custom_domain

type t = private {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  web_pubsub_custom_certificate_id : string prop;
  web_pubsub_id : string prop;
}

val azurerm_web_pubsub_custom_domain :
  ?id:string prop ->
  ?timeouts:azurerm_web_pubsub_custom_domain__timeouts ->
  domain_name:string prop ->
  name:string prop ->
  web_pubsub_custom_certificate_id:string prop ->
  web_pubsub_id:string prop ->
  string ->
  t
