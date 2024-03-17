(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_network_acl__private_endpoint
type azurerm_web_pubsub_network_acl__public_network
type azurerm_web_pubsub_network_acl__timeouts
type azurerm_web_pubsub_network_acl

type t = private {
  default_action : string prop;
  id : string prop;
  web_pubsub_id : string prop;
}

val azurerm_web_pubsub_network_acl :
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_web_pubsub_network_acl__timeouts ->
  web_pubsub_id:string prop ->
  private_endpoint:
    azurerm_web_pubsub_network_acl__private_endpoint list ->
  public_network:azurerm_web_pubsub_network_acl__public_network list ->
  string ->
  t
