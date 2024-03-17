(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall_nat_rule_collection__rule
type azurerm_firewall_nat_rule_collection__timeouts
type azurerm_firewall_nat_rule_collection

val azurerm_firewall_nat_rule_collection :
  ?id:string ->
  ?timeouts:azurerm_firewall_nat_rule_collection__timeouts ->
  action:string ->
  azure_firewall_name:string ->
  name:string ->
  priority:float ->
  resource_group_name:string ->
  rule:azurerm_firewall_nat_rule_collection__rule list ->
  string ->
  unit
