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
  ?aad_auth_enabled:bool ->
  ?connectivity_logs_enabled:bool ->
  ?http_request_logs_enabled:bool ->
  ?live_trace_enabled:bool ->
  ?local_auth_enabled:bool ->
  ?messaging_logs_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?serverless_connection_timeout_in_seconds:float ->
  ?service_mode:string ->
  ?tags:(string * string) list ->
  ?tls_client_cert_enabled:bool ->
  ?timeouts:azurerm_signalr_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  cors:azurerm_signalr_service__cors list ->
  identity:azurerm_signalr_service__identity list ->
  live_trace:azurerm_signalr_service__live_trace list ->
  sku:azurerm_signalr_service__sku list ->
  upstream_endpoint:azurerm_signalr_service__upstream_endpoint list ->
  string ->
  unit
