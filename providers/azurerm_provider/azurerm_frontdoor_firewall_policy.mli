(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_frontdoor_firewall_policy__custom_rule__match_condition
type azurerm_frontdoor_firewall_policy__custom_rule
type azurerm_frontdoor_firewall_policy__managed_rule__exclusion

type azurerm_frontdoor_firewall_policy__managed_rule__override__exclusion

type azurerm_frontdoor_firewall_policy__managed_rule__override__rule__exclusion

type azurerm_frontdoor_firewall_policy__managed_rule__override__rule
type azurerm_frontdoor_firewall_policy__managed_rule__override
type azurerm_frontdoor_firewall_policy__managed_rule
type azurerm_frontdoor_firewall_policy__timeouts
type azurerm_frontdoor_firewall_policy

val azurerm_frontdoor_firewall_policy :
  ?custom_block_response_body:string ->
  ?custom_block_response_status_code:float ->
  ?enabled:bool ->
  ?mode:string ->
  ?redirect_url:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_frontdoor_firewall_policy__timeouts ->
  name:string ->
  resource_group_name:string ->
  custom_rule:azurerm_frontdoor_firewall_policy__custom_rule list ->
  managed_rule:azurerm_frontdoor_firewall_policy__managed_rule list ->
  string ->
  unit
