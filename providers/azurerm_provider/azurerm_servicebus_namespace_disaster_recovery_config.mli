(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_disaster_recovery_config__timeouts
type azurerm_servicebus_namespace_disaster_recovery_config

val azurerm_servicebus_namespace_disaster_recovery_config :
  ?alias_authorization_rule_id:string ->
  ?timeouts:
    azurerm_servicebus_namespace_disaster_recovery_config__timeouts ->
  name:string ->
  partner_namespace_id:string ->
  primary_namespace_id:string ->
  string ->
  unit
