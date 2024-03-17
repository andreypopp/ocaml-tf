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
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_frontdoor_rules_engine__timeouts ->
  frontdoor_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  rule:azurerm_frontdoor_rules_engine__rule list ->
  string ->
  unit
