(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_hybrid_connection_authorization_rule__timeouts
type azurerm_relay_hybrid_connection_authorization_rule

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
  unit
