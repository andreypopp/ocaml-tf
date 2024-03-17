(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_connection__routing__propagated_route_table = {
  labels : string prop list option; [@option]  (** labels *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection__routing__propagated_route_table *)

type azurerm_virtual_hub_connection__routing__static_vnet_route = {
  address_prefixes : string prop list option; [@option]
      (** address_prefixes *)
  name : string prop option; [@option]  (** name *)
  next_hop_ip_address : string prop option; [@option]
      (** next_hop_ip_address *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection__routing__static_vnet_route *)

type azurerm_virtual_hub_connection__routing = {
  associated_route_table_id : string prop option; [@option]
      (** associated_route_table_id *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  static_vnet_local_route_override_criteria : string prop option;
      [@option]
      (** static_vnet_local_route_override_criteria *)
  propagated_route_table :
    azurerm_virtual_hub_connection__routing__propagated_route_table
    list;
  static_vnet_route :
    azurerm_virtual_hub_connection__routing__static_vnet_route list;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection__routing *)

type azurerm_virtual_hub_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection__timeouts *)

type azurerm_virtual_hub_connection = {
  id : string prop option; [@option]  (** id *)
  internet_security_enabled : bool prop option; [@option]
      (** internet_security_enabled *)
  name : string prop;  (** name *)
  remote_virtual_network_id : string prop;
      (** remote_virtual_network_id *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  routing : azurerm_virtual_hub_connection__routing list;
  timeouts : azurerm_virtual_hub_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection *)

let azurerm_virtual_hub_connection ?id ?internet_security_enabled
    ?timeouts ~name ~remote_virtual_network_id ~virtual_hub_id
    ~routing __resource_id =
  let __resource_type = "azurerm_virtual_hub_connection" in
  let __resource =
    {
      id;
      internet_security_enabled;
      name;
      remote_virtual_network_id;
      virtual_hub_id;
      routing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_connection __resource);
  ()
