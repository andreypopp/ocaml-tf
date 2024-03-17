(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__destination_nat__backend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__destination_nat__frontend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__destination_nat

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__dns_settings

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__network_profile

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__timeouts

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  rulestack_id:string prop ->
  destination_nat:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__destination_nat
    list ->
  dns_settings:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__dns_settings
    list ->
  network_profile:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack__network_profile
    list ->
  string ->
  t
