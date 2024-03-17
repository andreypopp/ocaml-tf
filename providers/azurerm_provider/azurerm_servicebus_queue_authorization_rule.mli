(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_queue_authorization_rule__timeouts
type azurerm_servicebus_queue_authorization_rule

val azurerm_servicebus_queue_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:azurerm_servicebus_queue_authorization_rule__timeouts ->
  name:string prop ->
  queue_id:string prop ->
  string ->
  unit
