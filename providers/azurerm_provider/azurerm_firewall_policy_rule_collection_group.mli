(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule

type azurerm_firewall_policy_rule_collection_group__application_rule_collection

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection

type azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule

type azurerm_firewall_policy_rule_collection_group__network_rule_collection

type azurerm_firewall_policy_rule_collection_group__timeouts
type azurerm_firewall_policy_rule_collection_group

val azurerm_firewall_policy_rule_collection_group :
  ?id:string ->
  ?timeouts:azurerm_firewall_policy_rule_collection_group__timeouts ->
  firewall_policy_id:string ->
  name:string ->
  priority:float ->
  application_rule_collection:
    azurerm_firewall_policy_rule_collection_group__application_rule_collection
    list ->
  nat_rule_collection:
    azurerm_firewall_policy_rule_collection_group__nat_rule_collection
    list ->
  network_rule_collection:
    azurerm_firewall_policy_rule_collection_group__network_rule_collection
    list ->
  string ->
  unit
