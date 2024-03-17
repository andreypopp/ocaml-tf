(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_service__cors
type azurerm_signalr_service__identity
type azurerm_signalr_service__live_trace
type azurerm_signalr_service__sku
type azurerm_signalr_service__timeouts
type azurerm_signalr_service__upstream_endpoint
type azurerm_signalr_service

val azurerm_signalr_service :
  ?aad_auth_enabled:bool prop ->
  ?connectivity_logs_enabled:bool prop ->
  ?http_request_logs_enabled:bool prop ->
  ?id:string prop ->
  ?live_trace_enabled:bool prop ->
  ?local_auth_enabled:bool prop ->
  ?messaging_logs_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?serverless_connection_timeout_in_seconds:float prop ->
  ?service_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tls_client_cert_enabled:bool prop ->
  ?timeouts:azurerm_signalr_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cors:azurerm_signalr_service__cors list ->
  identity:azurerm_signalr_service__identity list ->
  live_trace:azurerm_signalr_service__live_trace list ->
  sku:azurerm_signalr_service__sku list ->
  upstream_endpoint:azurerm_signalr_service__upstream_endpoint list ->
  string ->
  unit
