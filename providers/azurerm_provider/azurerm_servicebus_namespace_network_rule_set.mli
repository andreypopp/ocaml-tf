(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_network_rule_set__network_rules
type azurerm_servicebus_namespace_network_rule_set__timeouts
type azurerm_servicebus_namespace_network_rule_set

type t = private {
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  namespace_id : string prop;
  public_network_access_enabled : bool prop;
  trusted_services_allowed : bool prop;
}

val azurerm_servicebus_namespace_network_rule_set :
  ?default_action:string prop ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?public_network_access_enabled:bool prop ->
  ?trusted_services_allowed:bool prop ->
  ?timeouts:azurerm_servicebus_namespace_network_rule_set__timeouts ->
  namespace_id:string prop ->
  network_rules:
    azurerm_servicebus_namespace_network_rule_set__network_rules list ->
  string ->
  t
