(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall_network_rule_collection__rule
type azurerm_firewall_network_rule_collection__timeouts
type azurerm_firewall_network_rule_collection

val azurerm_firewall_network_rule_collection :
  ?id:string prop ->
  ?timeouts:azurerm_firewall_network_rule_collection__timeouts ->
  action:string prop ->
  azure_firewall_name:string prop ->
  name:string prop ->
  priority:float prop ->
  resource_group_name:string prop ->
  rule:azurerm_firewall_network_rule_collection__rule list ->
  string ->
  unit
