(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_relay_hybrid_connection_authorization_rule

val azurerm_relay_hybrid_connection_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  hybrid_connection_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_relay_hybrid_connection_authorization_rule

val yojson_of_azurerm_relay_hybrid_connection_authorization_rule :
  azurerm_relay_hybrid_connection_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hybrid_connection_name : string prop;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
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
  hybrid_connection_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
