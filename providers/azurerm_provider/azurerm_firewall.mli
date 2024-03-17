(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_firewall__ip_configuration
type azurerm_firewall__management_ip_configuration
type azurerm_firewall__timeouts
type azurerm_firewall__virtual_hub
type azurerm_firewall

type t = private {
  dns_proxy_enabled : bool prop;
  dns_servers : string list prop;
  firewall_policy_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_ranges : string list prop;
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  threat_intel_mode : string prop;
  zones : string list prop;
}

val azurerm_firewall :
  ?dns_proxy_enabled:bool prop ->
  ?dns_servers:string prop list ->
  ?firewall_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?tags:(string * string prop) list ->
  ?threat_intel_mode:string prop ->
  ?zones:string prop list ->
  ?timeouts:azurerm_firewall__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  sku_tier:string prop ->
  ip_configuration:azurerm_firewall__ip_configuration list ->
  management_ip_configuration:
    azurerm_firewall__management_ip_configuration list ->
  virtual_hub:azurerm_firewall__virtual_hub list ->
  string ->
  t
