(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall__ip_configuration
type azurerm_firewall__management_ip_configuration
type azurerm_firewall__timeouts
type azurerm_firewall__virtual_hub
type azurerm_firewall

val azurerm_firewall :
  ?dns_proxy_enabled:bool ->
  ?dns_servers:string list ->
  ?firewall_policy_id:string ->
  ?id:string ->
  ?private_ip_ranges:string list ->
  ?tags:(string * string) list ->
  ?threat_intel_mode:string ->
  ?zones:string list ->
  ?timeouts:azurerm_firewall__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  sku_tier:string ->
  ip_configuration:azurerm_firewall__ip_configuration list ->
  management_ip_configuration:
    azurerm_firewall__management_ip_configuration list ->
  virtual_hub:azurerm_firewall__virtual_hub list ->
  string ->
  unit
