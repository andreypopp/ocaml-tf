(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub__identity
type azurerm_web_pubsub__live_trace
type azurerm_web_pubsub__timeouts
type azurerm_web_pubsub

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
  t
