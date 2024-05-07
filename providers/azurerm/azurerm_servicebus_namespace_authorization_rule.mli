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

type azurerm_servicebus_namespace_authorization_rule

val azurerm_servicebus_namespace_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  unit ->
  azurerm_servicebus_namespace_authorization_rule

val yojson_of_azurerm_servicebus_namespace_authorization_rule :
  azurerm_servicebus_namespace_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_id : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t Tf_core.resource
