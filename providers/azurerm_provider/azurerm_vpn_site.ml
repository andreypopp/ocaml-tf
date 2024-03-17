(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_vpn_site__link__bgp = {
  asn : float;  (** asn *)
  peering_address : string;  (** peering_address *)
}
[@@deriving yojson_of]
(** azurerm_vpn_site__link__bgp *)

type azurerm_vpn_site__link = {
  fqdn : string option; [@option]  (** fqdn *)
  id : string;  (** id *)
  ip_address : string option; [@option]  (** ip_address *)
  name : string;  (** name *)
  provider_name : string option; [@option]  (** provider_name *)
  speed_in_mbps : float option; [@option]  (** speed_in_mbps *)
  bgp : azurerm_vpn_site__link__bgp list;
}
[@@deriving yojson_of]
(** azurerm_vpn_site__link *)

type azurerm_vpn_site__o365_policy__traffic_category = {
  allow_endpoint_enabled : bool option; [@option]
      (** allow_endpoint_enabled *)
  default_endpoint_enabled : bool option; [@option]
      (** default_endpoint_enabled *)
  optimize_endpoint_enabled : bool option; [@option]
      (** optimize_endpoint_enabled *)
}
[@@deriving yojson_of]
(** azurerm_vpn_site__o365_policy__traffic_category *)

type azurerm_vpn_site__o365_policy = {
  traffic_category :
    azurerm_vpn_site__o365_policy__traffic_category list;
}
[@@deriving yojson_of]
(** azurerm_vpn_site__o365_policy *)

type azurerm_vpn_site__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_site__timeouts *)

type azurerm_vpn_site = {
  address_cidrs : string list option; [@option]  (** address_cidrs *)
  device_model : string option; [@option]  (** device_model *)
  device_vendor : string option; [@option]  (** device_vendor *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_wan_id : string;  (** virtual_wan_id *)
  link : azurerm_vpn_site__link list;
  o365_policy : azurerm_vpn_site__o365_policy list;
  timeouts : azurerm_vpn_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_site *)

let azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~virtual_wan_id ~link ~o365_policy __resource_id =
  let __resource_type = "azurerm_vpn_site" in
  let __resource =
    {
      address_cidrs;
      device_model;
      device_vendor;
      location;
      name;
      resource_group_name;
      tags;
      virtual_wan_id;
      link;
      o365_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_site __resource);
  ()
