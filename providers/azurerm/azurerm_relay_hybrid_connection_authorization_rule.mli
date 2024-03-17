(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_hybrid_connection_authorization_rule__timeouts
type azurerm_relay_hybrid_connection_authorization_rule

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

val azurerm_relay_hybrid_connection_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:
    azurerm_relay_hybrid_connection_authorization_rule__timeouts ->
  hybrid_connection_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
