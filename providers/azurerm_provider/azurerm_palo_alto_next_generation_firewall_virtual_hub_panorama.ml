(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config = {
  port : float;  (** port *)
  public_ip_address : string;  (** public_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config = {
  port : float;  (** port *)
  public_ip_address_id : string;  (** public_ip_address_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat = {
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  backend_config :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config
    list;
  frontend_config :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config
    list;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings = {
  azure_dns_servers : string list;  (** azure_dns_servers *)
  dns_servers : string list option; [@option]  (** dns_servers *)
  use_azure_dns : bool option; [@option]  (** use_azure_dns *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile = {
  egress_nat_ip_address_ids : string list option; [@option]
      (** egress_nat_ip_address_ids *)
  egress_nat_ip_addresses : string list;
      (** egress_nat_ip_addresses *)
  ip_of_trust_for_user_defined_routes : string;
      (** ip_of_trust_for_user_defined_routes *)
  network_virtual_appliance_id : string;
      (** network_virtual_appliance_id *)
  public_ip_address_ids : string list;  (** public_ip_address_ids *)
  public_ip_addresses : string list;  (** public_ip_addresses *)
  trusted_address_ranges : string list option; [@option]
      (** trusted_address_ranges *)
  trusted_subnet_id : string;  (** trusted_subnet_id *)
  untrusted_subnet_id : string;  (** untrusted_subnet_id *)
  virtual_hub_id : string;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__panorama = {
  device_group_name : string;  (** device_group_name *)
  host_name : string;  (** host_name *)
  name : string;  (** name *)
  panorama_server_1 : string;  (** panorama_server_1 *)
  panorama_server_2 : string;  (** panorama_server_2 *)
  template_name : string;  (** template_name *)
  virtual_machine_ssh_key : string;  (** virtual_machine_ssh_key *)
}
[@@deriving yojson_of]

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama = {
  location : string;  (** location *)
  name : string;  (** name *)
  panorama_base64_config : string;  (** panorama_base64_config *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  destination_nat :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat
    list;
  dns_settings :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings
    list;
  network_profile :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile
    list;
  timeouts :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama *)

let azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
    ?tags ?timeouts ~location ~name ~panorama_base64_config
    ~resource_group_name ~destination_nat ~dns_settings
    ~network_profile __resource_id =
  let __resource_type =
    "azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama"
  in
  let __resource =
    {
      location;
      name;
      panorama_base64_config;
      resource_group_name;
      tags;
      destination_nat;
      dns_settings;
      network_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
       __resource);
  ()
