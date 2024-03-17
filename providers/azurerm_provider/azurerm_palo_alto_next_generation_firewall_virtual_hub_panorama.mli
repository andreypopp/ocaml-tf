(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__panorama = {
  device_group_name : string;  (** device_group_name *)
  host_name : string;  (** host_name *)
  name : string;  (** name *)
  panorama_server_1 : string;  (** panorama_server_1 *)
  panorama_server_2 : string;  (** panorama_server_2 *)
  template_name : string;  (** template_name *)
  virtual_machine_ssh_key : string;  (** virtual_machine_ssh_key *)
}

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama

val azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts ->
  location:string ->
  name:string ->
  panorama_base64_config:string ->
  resource_group_name:string ->
  destination_nat:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat
    list ->
  dns_settings:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings
    list ->
  network_profile:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile
    list ->
  string ->
  unit
