(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_nat__backend_config

val destination_nat__backend_config :
  port:float prop ->
  public_ip_address:string prop ->
  unit ->
  destination_nat__backend_config

type destination_nat__frontend_config

val destination_nat__frontend_config :
  port:float prop ->
  public_ip_address_id:string prop ->
  unit ->
  destination_nat__frontend_config

type destination_nat

val destination_nat :
  name:string prop ->
  protocol:string prop ->
  backend_config:destination_nat__backend_config list ->
  frontend_config:destination_nat__frontend_config list ->
  unit ->
  destination_nat

type dns_settings

val dns_settings :
  ?dns_servers:string prop list ->
  ?use_azure_dns:bool prop ->
  unit ->
  dns_settings

type network_profile

val network_profile :
  ?egress_nat_ip_address_ids:string prop list ->
  ?trusted_address_ranges:string prop list ->
  network_virtual_appliance_id:string prop ->
  public_ip_address_ids:string prop list ->
  virtual_hub_id:string prop ->
  unit ->
  network_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack

val azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  rulestack_id:string prop ->
  destination_nat:destination_nat list ->
  dns_settings:dns_settings list ->
  network_profile:network_profile list ->
  unit ->
  azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack

val yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack :
  azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  rulestack_id:string prop ->
  destination_nat:destination_nat list ->
  dns_settings:dns_settings list ->
  network_profile:network_profile list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  rulestack_id:string prop ->
  destination_nat:destination_nat list ->
  dns_settings:dns_settings list ->
  network_profile:network_profile list ->
  string ->
  t Tf_core.resource
