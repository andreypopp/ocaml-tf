(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_gateway__bgp_settings__instance_0_bgp_peering_address = {
  custom_ips : string list;  (** custom_ips *)
  default_ips : string list;  (** default_ips *)
  ip_configuration_id : string;  (** ip_configuration_id *)
  tunnel_ips : string list;  (** tunnel_ips *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway__bgp_settings__instance_0_bgp_peering_address *)

type azurerm_vpn_gateway__bgp_settings__instance_1_bgp_peering_address = {
  custom_ips : string list;  (** custom_ips *)
  default_ips : string list;  (** default_ips *)
  ip_configuration_id : string;  (** ip_configuration_id *)
  tunnel_ips : string list;  (** tunnel_ips *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway__bgp_settings__instance_1_bgp_peering_address *)

type azurerm_vpn_gateway__bgp_settings = {
  asn : float;  (** asn *)
  bgp_peering_address : string;  (** bgp_peering_address *)
  peer_weight : float;  (** peer_weight *)
  instance_0_bgp_peering_address :
    azurerm_vpn_gateway__bgp_settings__instance_0_bgp_peering_address
    list;
  instance_1_bgp_peering_address :
    azurerm_vpn_gateway__bgp_settings__instance_1_bgp_peering_address
    list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway__bgp_settings *)

type azurerm_vpn_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway__timeouts *)

type azurerm_vpn_gateway = {
  bgp_route_translation_for_nat_enabled : bool option; [@option]
      (** bgp_route_translation_for_nat_enabled *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  routing_preference : string option; [@option]
      (** routing_preference *)
  scale_unit : float option; [@option]  (** scale_unit *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  bgp_settings : azurerm_vpn_gateway__bgp_settings list;
  timeouts : azurerm_vpn_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway *)

let azurerm_vpn_gateway ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?timeouts ~location ~name
    ~resource_group_name ~virtual_hub_id ~bgp_settings __resource_id
    =
  let __resource_type = "azurerm_vpn_gateway" in
  let __resource =
    {
      bgp_route_translation_for_nat_enabled;
      id;
      location;
      name;
      resource_group_name;
      routing_preference;
      scale_unit;
      tags;
      virtual_hub_id;
      bgp_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway __resource);
  ()
