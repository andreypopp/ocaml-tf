(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_namespace_authorization_rule__timeouts
type azurerm_relay_namespace_authorization_rule

val azurerm_relay_namespace_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:azurerm_relay_namespace_authorization_rule__timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
