(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_authorization_rule__timeouts
type azurerm_servicebus_namespace_authorization_rule

val azurerm_servicebus_namespace_authorization_rule :
  ?id:string ->
  ?listen:bool ->
  ?manage:bool ->
  ?send:bool ->
  ?timeouts:azurerm_servicebus_namespace_authorization_rule__timeouts ->
  name:string ->
  namespace_id:string ->
  string ->
  unit
