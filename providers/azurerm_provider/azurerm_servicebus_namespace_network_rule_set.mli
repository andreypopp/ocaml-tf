(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_network_rule_set__network_rules
type azurerm_servicebus_namespace_network_rule_set__timeouts
type azurerm_servicebus_namespace_network_rule_set

val azurerm_servicebus_namespace_network_rule_set :
  ?default_action:string ->
  ?ip_rules:string list ->
  ?public_network_access_enabled:bool ->
  ?trusted_services_allowed:bool ->
  ?timeouts:azurerm_servicebus_namespace_network_rule_set__timeouts ->
  namespace_id:string ->
  network_rules:
    azurerm_servicebus_namespace_network_rule_set__network_rules list ->
  string ->
  unit
