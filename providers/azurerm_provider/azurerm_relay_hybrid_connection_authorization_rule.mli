(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_hybrid_connection_authorization_rule__timeouts
type azurerm_relay_hybrid_connection_authorization_rule

val azurerm_relay_hybrid_connection_authorization_rule :
  ?listen:bool ->
  ?manage:bool ->
  ?send:bool ->
  ?timeouts:
    azurerm_relay_hybrid_connection_authorization_rule__timeouts ->
  hybrid_connection_name:string ->
  name:string ->
  namespace_name:string ->
  resource_group_name:string ->
  string ->
  unit
