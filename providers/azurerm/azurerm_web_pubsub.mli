(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_web_pubsub

val azurerm_web_pubsub :
  ?aad_auth_enabled:bool prop ->
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tls_client_cert_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:identity list ->
  live_trace:live_trace list ->
  unit ->
  azurerm_web_pubsub

val yojson_of_azurerm_web_pubsub : azurerm_web_pubsub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aad_auth_enabled : bool prop;
  capacity : float prop;
  external_ip : string prop;
  hostname : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  public_network_access_enabled : bool prop;
  public_port : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  server_port : float prop;
  sku : string prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aad_auth_enabled:bool prop ->
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tls_client_cert_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:identity list ->
  live_trace:live_trace list ->
  string ->
  t

val make :
  ?aad_auth_enabled:bool prop ->
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tls_client_cert_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:identity list ->
  live_trace:live_trace list ->
  string ->
  t Tf_core.resource
