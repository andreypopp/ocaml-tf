(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors

val cors : allowed_origins:string prop list -> unit -> cors

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type live_trace

val live_trace :
  ?connectivity_logs_enabled:bool prop ->
  ?enabled:bool prop ->
  ?http_request_logs_enabled:bool prop ->
  ?messaging_logs_enabled:bool prop ->
  unit ->
  live_trace

type sku

val sku : capacity:float prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type upstream_endpoint

val upstream_endpoint :
  ?user_assigned_identity_id:string prop ->
  category_pattern:string prop list ->
  event_pattern:string prop list ->
  hub_pattern:string prop list ->
  url_template:string prop ->
  unit ->
  upstream_endpoint

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
  ?cors:cors list ->
  ?identity:identity list ->
  ?live_trace:live_trace list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  upstream_endpoint:upstream_endpoint list ->
  unit ->
  azurerm_signalr_service

val yojson_of_azurerm_signalr_service :
  azurerm_signalr_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aad_auth_enabled : bool prop;
  connectivity_logs_enabled : bool prop;
  hostname : string prop;
  http_request_logs_enabled : bool prop;
  id : string prop;
  ip_address : string prop;
  live_trace_enabled : bool prop;
  local_auth_enabled : bool prop;
  location : string prop;
  messaging_logs_enabled : bool prop;
  name : string prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  public_network_access_enabled : bool prop;
  public_port : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  server_port : float prop;
  serverless_connection_timeout_in_seconds : float prop;
  service_mode : string prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?cors:cors list ->
  ?identity:identity list ->
  ?live_trace:live_trace list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  upstream_endpoint:upstream_endpoint list ->
  string ->
  t

val make :
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
  ?cors:cors list ->
  ?identity:identity list ->
  ?live_trace:live_trace list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  upstream_endpoint:upstream_endpoint list ->
  string ->
  t Tf_core.resource
