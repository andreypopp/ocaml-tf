(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_point_to_site_vpn_gateway__connection_configuration__route__propagated_route_table = {
  ids : string list;  (** ids *)
  labels : string list option; [@option]  (** labels *)
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway__connection_configuration__route__propagated_route_table *)

type azurerm_point_to_site_vpn_gateway__connection_configuration__route = {
  associated_route_table_id : string;
      (** associated_route_table_id *)
  inbound_route_map_id : string option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    azurerm_point_to_site_vpn_gateway__connection_configuration__route__propagated_route_table
    list;
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway__connection_configuration__route *)

type azurerm_point_to_site_vpn_gateway__connection_configuration__vpn_client_address_pool = {
  address_prefixes : string list;  (** address_prefixes *)
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway__connection_configuration__vpn_client_address_pool *)

type azurerm_point_to_site_vpn_gateway__connection_configuration = {
  internet_security_enabled : bool option; [@option]
      (** internet_security_enabled *)
  name : string;  (** name *)
  route :
    azurerm_point_to_site_vpn_gateway__connection_configuration__route
    list;
  vpn_client_address_pool :
    azurerm_point_to_site_vpn_gateway__connection_configuration__vpn_client_address_pool
    list;
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway__connection_configuration *)

type azurerm_point_to_site_vpn_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway__timeouts *)

type azurerm_point_to_site_vpn_gateway = {
  dns_servers : string list option; [@option]  (** dns_servers *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  routing_preference_internet_enabled : bool option; [@option]
      (** routing_preference_internet_enabled *)
  scale_unit : float;  (** scale_unit *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  vpn_server_configuration_id : string;
      (** vpn_server_configuration_id *)
  connection_configuration :
    azurerm_point_to_site_vpn_gateway__connection_configuration list;
  timeouts : azurerm_point_to_site_vpn_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway *)

let azurerm_point_to_site_vpn_gateway ?dns_servers ?id
    ?routing_preference_internet_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_unit ~virtual_hub_id
    ~vpn_server_configuration_id ~connection_configuration
    __resource_id =
  let __resource_type = "azurerm_point_to_site_vpn_gateway" in
  let __resource =
    {
      dns_servers;
      id;
      location;
      name;
      resource_group_name;
      routing_preference_internet_enabled;
      scale_unit;
      tags;
      virtual_hub_id;
      vpn_server_configuration_id;
      connection_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_point_to_site_vpn_gateway __resource);
  ()
