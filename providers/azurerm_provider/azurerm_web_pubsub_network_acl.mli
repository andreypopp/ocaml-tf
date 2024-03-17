(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_network_acl__private_endpoint
type azurerm_web_pubsub_network_acl__public_network
type azurerm_web_pubsub_network_acl__timeouts
type azurerm_web_pubsub_network_acl

val azurerm_web_pubsub_network_acl :
  ?default_action:string ->
  ?id:string ->
  ?timeouts:azurerm_web_pubsub_network_acl__timeouts ->
  web_pubsub_id:string ->
  private_endpoint:
    azurerm_web_pubsub_network_acl__private_endpoint list ->
  public_network:azurerm_web_pubsub_network_acl__public_network list ->
  string ->
  unit
