(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub__identity
type azurerm_web_pubsub__live_trace
type azurerm_web_pubsub__timeouts
type azurerm_web_pubsub

val azurerm_web_pubsub :
  ?aad_auth_enabled:bool ->
  ?capacity:float ->
  ?id:string ->
  ?local_auth_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?tls_client_cert_enabled:bool ->
  ?timeouts:azurerm_web_pubsub__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  identity:azurerm_web_pubsub__identity list ->
  live_trace:azurerm_web_pubsub__live_trace list ->
  string ->
  unit
