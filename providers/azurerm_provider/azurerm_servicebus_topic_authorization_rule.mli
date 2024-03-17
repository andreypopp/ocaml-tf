(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_topic_authorization_rule__timeouts
type azurerm_servicebus_topic_authorization_rule

type t = private {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
  topic_id : string prop;
}

val azurerm_servicebus_topic_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:azurerm_servicebus_topic_authorization_rule__timeouts ->
  name:string prop ->
  topic_id:string prop ->
  string ->
  t
