(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_servicebus_namespace_authorization_rule

val azurerm_servicebus_namespace_authorization_rule :
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_servicebus_namespace_authorization_rule

val yojson_of_azurerm_servicebus_namespace_authorization_rule :
  azurerm_servicebus_namespace_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
