(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__panorama = {
  device_group_name : string prop;  (** device_group_name *)
  host_name : string prop;  (** host_name *)
  name : string prop;  (** name *)
  panorama_server_1 : string prop;  (** panorama_server_1 *)
  panorama_server_2 : string prop;  (** panorama_server_2 *)
  template_name : string prop;  (** template_name *)
  virtual_machine_ssh_key : string prop;
      (** virtual_machine_ssh_key *)
}

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  panorama :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__panorama
    list
    prop;
  panorama_base64_config : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts ->
  location:string prop ->
  name:string prop ->
  panorama_base64_config:string prop ->
  resource_group_name:string prop ->
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
  t
