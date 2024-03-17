(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_frontdoor_rules_engine__rule__action__request_header
type azurerm_frontdoor_rules_engine__rule__action__response_header
type azurerm_frontdoor_rules_engine__rule__action
type azurerm_frontdoor_rules_engine__rule__match_condition
type azurerm_frontdoor_rules_engine__rule
type azurerm_frontdoor_rules_engine__timeouts
type azurerm_frontdoor_rules_engine

val azurerm_frontdoor_rules_engine :
  ?enabled:bool ->
  ?id:string ->
  ?timeouts:azurerm_frontdoor_rules_engine__timeouts ->
  frontdoor_name:string ->
  name:string ->
  resource_group_name:string ->
  rule:azurerm_frontdoor_rules_engine__rule list ->
  string ->
  unit
