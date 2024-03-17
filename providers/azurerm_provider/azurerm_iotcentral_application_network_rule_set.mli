(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iotcentral_application_network_rule_set__ip_rule
type azurerm_iotcentral_application_network_rule_set__timeouts
type azurerm_iotcentral_application_network_rule_set

val azurerm_iotcentral_application_network_rule_set :
  ?apply_to_device:bool prop ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_iotcentral_application_network_rule_set__timeouts ->
  iotcentral_application_id:string prop ->
  ip_rule:
    azurerm_iotcentral_application_network_rule_set__ip_rule list ->
  string ->
  unit
