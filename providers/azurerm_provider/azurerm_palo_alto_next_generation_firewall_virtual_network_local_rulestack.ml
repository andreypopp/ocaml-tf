(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config = {
  port : float prop;  (** port *)
  public_ip_address : string prop;  (** public_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__backend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config = {
  port : float prop;  (** port *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat__frontend_config *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__destination_nat = {
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
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
  azure_dns_servers : string prop list;  (** azure_dns_servers *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  use_azure_dns : bool prop option; [@option]  (** use_azure_dns *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__dns_settings *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration = {
  ip_of_trust_for_user_defined_routes : string prop;
      (** ip_of_trust_for_user_defined_routes *)
  trusted_subnet_id : string prop option; [@option]
      (** trusted_subnet_id *)
  untrusted_subnet_id : string prop option; [@option]
      (** untrusted_subnet_id *)
  virtual_network_id : string prop;  (** virtual_network_id *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile = {
  egress_nat_ip_address_ids : string prop list option; [@option]
      (** egress_nat_ip_address_ids *)
  egress_nat_ip_addresses : string prop list;
      (** egress_nat_ip_addresses *)
  public_ip_address_ids : string prop list;
      (** public_ip_address_ids *)
  public_ip_addresses : string prop list;  (** public_ip_addresses *)
  trusted_address_ranges : string prop list option; [@option]
      (** trusted_address_ranges *)
  vnet_configuration :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile__vnet_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__network_profile *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack__timeouts *)

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  rulestack_id : string prop;  (** rulestack_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
    ?id ?tags ?timeouts ~name ~resource_group_name ~rulestack_id
    ~destination_nat ~dns_settings ~network_profile __resource_id =
  let __resource_type =
    "azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack"
  in
  let __resource =
    ({
       id;
       name;
       resource_group_name;
       rulestack_id;
       tags;
       destination_nat;
       dns_settings;
       network_profile;
       timeouts;
     }
      : azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
