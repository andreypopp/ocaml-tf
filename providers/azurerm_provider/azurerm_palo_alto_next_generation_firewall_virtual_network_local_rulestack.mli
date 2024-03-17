(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack

val azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts ->
  name:string ->
  resource_group_name:string ->
  rulestack_id:string ->
  destination_nat:
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat
    list ->
  dns_settings:
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings
    list ->
  network_profile:
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile
    list ->
  string ->
  unit
