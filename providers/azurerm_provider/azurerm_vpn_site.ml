(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_site__link__bgp = {
  asn : float prop;  (** asn *)
  peering_address : string prop;  (** peering_address *)
}
[@@deriving yojson_of]
(** azurerm_vpn_site__link__bgp *)

type azurerm_vpn_site__link = {
  fqdn : string prop option; [@option]  (** fqdn *)
  id : string prop;  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  speed_in_mbps : float prop option; [@option]  (** speed_in_mbps *)
  bgp : azurerm_vpn_site__link__bgp list;
}
[@@deriving yojson_of]
(** azurerm_vpn_site__link *)

type azurerm_vpn_site__o365_policy__traffic_category = {
  allow_endpoint_enabled : bool prop option; [@option]
      (** allow_endpoint_enabled *)
  default_endpoint_enabled : bool prop option; [@option]
      (** default_endpoint_enabled *)
  optimize_endpoint_enabled : bool prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_site__timeouts *)

type azurerm_vpn_site = {
  address_cidrs : string prop list option; [@option]
      (** address_cidrs *)
  device_model : string prop option; [@option]  (** device_model *)
  device_vendor : string prop option; [@option]  (** device_vendor *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_wan_id : string prop;  (** virtual_wan_id *)
  link : azurerm_vpn_site__link list;
  o365_policy : azurerm_vpn_site__o365_policy list;
  timeouts : azurerm_vpn_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_site *)

let azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor ?id
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~virtual_wan_id ~link ~o365_policy __resource_id =
  let __resource_type = "azurerm_vpn_site" in
  let __resource =
    {
      address_cidrs;
      device_model;
      device_vendor;
      id;
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
