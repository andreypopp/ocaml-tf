(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_notification_hub_authorization_rule__timeouts
type azurerm_notification_hub_authorization_rule

val azurerm_notification_hub_authorization_rule :
  ?listen:bool ->
  ?manage:bool ->
  ?send:bool ->
  ?timeouts:azurerm_notification_hub_authorization_rule__timeouts ->
  name:string ->
  namespace_name:string ->
  notification_hub_name:string ->
  resource_group_name:string ->
  string ->
  unit
