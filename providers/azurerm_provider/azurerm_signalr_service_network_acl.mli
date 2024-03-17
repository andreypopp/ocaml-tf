(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_service_network_acl__private_endpoint
type azurerm_signalr_service_network_acl__public_network
type azurerm_signalr_service_network_acl__timeouts
type azurerm_signalr_service_network_acl

type t = private {
  default_action : string prop;
  id : string prop;
  signalr_service_id : string prop;
}

val azurerm_signalr_service_network_acl :
  ?id:string prop ->
  ?timeouts:azurerm_signalr_service_network_acl__timeouts ->
  default_action:string prop ->
  signalr_service_id:string prop ->
  private_endpoint:
    azurerm_signalr_service_network_acl__private_endpoint list ->
  public_network:
    azurerm_signalr_service_network_acl__public_network list ->
  string ->
  t
