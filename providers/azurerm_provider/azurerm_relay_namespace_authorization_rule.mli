(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_namespace_authorization_rule__timeouts
type azurerm_relay_namespace_authorization_rule

val azurerm_relay_namespace_authorization_rule :
  ?id:string ->
  ?listen:bool ->
  ?manage:bool ->
  ?send:bool ->
  ?timeouts:azurerm_relay_namespace_authorization_rule__timeouts ->
  name:string ->
  namespace_name:string ->
  resource_group_name:string ->
  string ->
  unit
