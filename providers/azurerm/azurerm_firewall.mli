(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration

val ip_configuration :
  ?public_ip_address_id:string prop ->
  ?subnet_id:string prop ->
  name:string prop ->
  unit ->
  ip_configuration

type management_ip_configuration

val management_ip_configuration :
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  unit ->
  management_ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_hub

val virtual_hub :
  ?public_ip_count:float prop ->
  virtual_hub_id:string prop ->
  unit ->
  virtual_hub

type azurerm_firewall

val azurerm_firewall :
  ?dns_proxy_enabled:bool prop ->
  ?dns_servers:string prop list ->
  ?firewall_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?threat_intel_mode:string prop ->
  ?zones:string prop list ->
  ?ip_configuration:ip_configuration list ->
  ?management_ip_configuration:management_ip_configuration list ->
  ?timeouts:timeouts ->
  ?virtual_hub:virtual_hub list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  sku_tier:string prop ->
  unit ->
  azurerm_firewall

val yojson_of_azurerm_firewall : azurerm_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  threat_intel_mode : string prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_proxy_enabled:bool prop ->
  ?dns_servers:string prop list ->
  ?firewall_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?threat_intel_mode:string prop ->
  ?zones:string prop list ->
  ?ip_configuration:ip_configuration list ->
  ?management_ip_configuration:management_ip_configuration list ->
  ?timeouts:timeouts ->
  ?virtual_hub:virtual_hub list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  sku_tier:string prop ->
  string ->
  t

val make :
  ?dns_proxy_enabled:bool prop ->
  ?dns_servers:string prop list ->
  ?firewall_policy_id:string prop ->
  ?id:string prop ->
  ?private_ip_ranges:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?threat_intel_mode:string prop ->
  ?zones:string prop list ->
  ?ip_configuration:ip_configuration list ->
  ?management_ip_configuration:management_ip_configuration list ->
  ?timeouts:timeouts ->
  ?virtual_hub:virtual_hub list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  sku_tier:string prop ->
  string ->
  t Tf_core.resource
