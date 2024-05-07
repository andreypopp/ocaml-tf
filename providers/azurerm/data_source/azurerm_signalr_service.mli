(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_signalr_service

val azurerm_signalr_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_signalr_service

val yojson_of_azurerm_signalr_service :
  azurerm_signalr_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aad_auth_enabled : bool prop;
  hostname : string prop;
  id : string prop;
  ip_address : string prop;
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
  serverless_connection_timeout_in_seconds : float prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
