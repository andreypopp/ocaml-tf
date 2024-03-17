(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_disaster_recovery_config__timeouts
type azurerm_servicebus_namespace_disaster_recovery_config

val azurerm_servicebus_namespace_disaster_recovery_config :
  ?alias_authorization_rule_id:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_servicebus_namespace_disaster_recovery_config__timeouts ->
  name:string prop ->
  partner_namespace_id:string prop ->
  primary_namespace_id:string prop ->
  string ->
  unit
