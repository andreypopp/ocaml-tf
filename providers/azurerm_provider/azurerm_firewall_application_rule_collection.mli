(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall_application_rule_collection__rule__protocol
type azurerm_firewall_application_rule_collection__rule
type azurerm_firewall_application_rule_collection__timeouts
type azurerm_firewall_application_rule_collection

type t = private {
  action : string prop;
  azure_firewall_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
}

val azurerm_firewall_application_rule_collection :
  ?id:string prop ->
  ?timeouts:azurerm_firewall_application_rule_collection__timeouts ->
  action:string prop ->
  azure_firewall_name:string prop ->
  name:string prop ->
  priority:float prop ->
  resource_group_name:string prop ->
  rule:azurerm_firewall_application_rule_collection__rule list ->
  string ->
  t
