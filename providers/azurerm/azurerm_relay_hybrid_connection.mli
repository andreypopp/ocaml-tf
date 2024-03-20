(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_relay_hybrid_connection

val azurerm_relay_hybrid_connection :
  ?id:string prop ->
  ?requires_client_authorization:bool prop ->
  ?user_metadata:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  relay_namespace_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_relay_hybrid_connection

val yojson_of_azurerm_relay_hybrid_connection :
  azurerm_relay_hybrid_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?requires_client_authorization:bool prop ->
  ?user_metadata:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  relay_namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?requires_client_authorization:bool prop ->
  ?user_metadata:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  relay_namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
