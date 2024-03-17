(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config = {
  port : float;  (** port *)
  public_ip_address : string;  (** public_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config = {
  port : float;  (** port *)
  public_ip_address_id : string;  (** public_ip_address_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat = {
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  backend_config :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config
    list;
  frontend_config :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config
    list;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings = {
  azure_dns_servers : string list;  (** azure_dns_servers *)
  dns_servers : string list option; [@option]  (** dns_servers *)
  use_azure_dns : bool option; [@option]  (** use_azure_dns *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration = {
  ip_of_trust_for_user_defined_routes : string;
      (** ip_of_trust_for_user_defined_routes *)
  trusted_subnet_id : string option; [@option]
      (** trusted_subnet_id *)
  untrusted_subnet_id : string option; [@option]
      (** untrusted_subnet_id *)
  virtual_network_id : string;  (** virtual_network_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile = {
  egress_nat_ip_address_ids : string list option; [@option]
      (** egress_nat_ip_address_ids *)
  egress_nat_ip_addresses : string list;
      (** egress_nat_ip_addresses *)
  public_ip_address_ids : string list;  (** public_ip_address_ids *)
  public_ip_addresses : string list;  (** public_ip_addresses *)
  trusted_address_ranges : string list option; [@option]
      (** trusted_address_ranges *)
  vnet_configuration :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  rulestack_id : string;  (** rulestack_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  destination_nat :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat
    list;
  dns_settings :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings
    list;
  network_profile :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile
    list;
  timeouts :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack *)

let azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
    ?tags ?timeouts ~name ~resource_group_name ~rulestack_id
    ~destination_nat ~dns_settings ~network_profile __resource_id =
  let __resource_type =
    "azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack"
  in
  let __resource =
    {
      name;
      resource_group_name;
      rulestack_id;
      tags;
      destination_nat;
      dns_settings;
      network_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
       __resource);
  ()
