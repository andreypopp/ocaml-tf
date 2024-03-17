(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_frontdoor_firewall_policy__custom_rule__match_condition

type azurerm_cdn_frontdoor_firewall_policy__custom_rule
type azurerm_cdn_frontdoor_firewall_policy__managed_rule__exclusion

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__exclusion

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule__exclusion

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override
type azurerm_cdn_frontdoor_firewall_policy__managed_rule
type azurerm_cdn_frontdoor_firewall_policy__timeouts
type azurerm_cdn_frontdoor_firewall_policy

val azurerm_cdn_frontdoor_firewall_policy :
  ?custom_block_response_body:string prop ->
  ?custom_block_response_status_code:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?request_body_check_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cdn_frontdoor_firewall_policy__timeouts ->
  mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  custom_rule:azurerm_cdn_frontdoor_firewall_policy__custom_rule list ->
  managed_rule:
    azurerm_cdn_frontdoor_firewall_policy__managed_rule list ->
  string ->
  unit
