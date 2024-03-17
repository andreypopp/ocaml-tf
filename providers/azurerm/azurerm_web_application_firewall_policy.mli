(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_application_firewall_policy__custom_rules__match_conditions__match_variables

type azurerm_web_application_firewall_policy__custom_rules__match_conditions

type azurerm_web_application_firewall_policy__custom_rules

type azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set__rule_group

type azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set

type azurerm_web_application_firewall_policy__managed_rules__exclusion

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override__rule

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set

type azurerm_web_application_firewall_policy__managed_rules

type azurerm_web_application_firewall_policy__policy_settings__log_scrubbing__rule

type azurerm_web_application_firewall_policy__policy_settings__log_scrubbing

type azurerm_web_application_firewall_policy__policy_settings
type azurerm_web_application_firewall_policy__timeouts
type azurerm_web_application_firewall_policy

type t = private {
  http_listener_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  path_based_rule_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_web_application_firewall_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_web_application_firewall_policy__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  custom_rules:
    azurerm_web_application_firewall_policy__custom_rules list ->
  managed_rules:
    azurerm_web_application_firewall_policy__managed_rules list ->
  policy_settings:
    azurerm_web_application_firewall_policy__policy_settings list ->
  string ->
  t
