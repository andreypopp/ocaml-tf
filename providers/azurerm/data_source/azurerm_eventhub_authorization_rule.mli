(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventhub_authorization_rule

val azurerm_eventhub_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventhub_authorization_rule

val yojson_of_azurerm_eventhub_authorization_rule :
  azurerm_eventhub_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  eventhub_name : string prop;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
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
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
