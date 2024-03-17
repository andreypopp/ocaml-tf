(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub__identity
type azurerm_web_pubsub__live_trace
type azurerm_web_pubsub__timeouts
type azurerm_web_pubsub

val azurerm_web_pubsub :
  ?aad_auth_enabled:bool prop ->
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tls_client_cert_enabled:bool prop ->
  ?timeouts:azurerm_web_pubsub__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:azurerm_web_pubsub__identity list ->
  live_trace:azurerm_web_pubsub__live_trace list ->
  string ->
  unit
