(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config = {
  port : float prop;  (** port *)
  public_ip_address : string prop;  (** public_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__backend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config = {
  port : float prop;  (** port *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat__frontend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__destination_nat = {
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
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
  azure_dns_servers : string prop list;  (** azure_dns_servers *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  use_azure_dns : bool prop option; [@option]  (** use_azure_dns *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__dns_settings *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile = {
  egress_nat_ip_address_ids : string prop list option; [@option]
      (** egress_nat_ip_address_ids *)
  egress_nat_ip_addresses : string prop list;
      (** egress_nat_ip_addresses *)
  ip_of_trust_for_user_defined_routes : string prop;
      (** ip_of_trust_for_user_defined_routes *)
  network_virtual_appliance_id : string prop;
      (** network_virtual_appliance_id *)
  public_ip_address_ids : string prop list;
      (** public_ip_address_ids *)
  public_ip_addresses : string prop list;  (** public_ip_addresses *)
  trusted_address_ranges : string prop list option; [@option]
      (** trusted_address_ranges *)
  trusted_subnet_id : string prop;  (** trusted_subnet_id *)
  untrusted_subnet_id : string prop;  (** untrusted_subnet_id *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__network_profile *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama__timeouts *)

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
[@@deriving yojson_of]

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  panorama_base64_config : string prop;
      (** panorama_base64_config *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
    ?id ?tags ?timeouts ~location ~name ~panorama_base64_config
    ~resource_group_name ~destination_nat ~dns_settings
    ~network_profile __resource_id =
  let __resource_type =
    "azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama"
  in
  let __resource =
    {
      id;
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
