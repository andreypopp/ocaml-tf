(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type routing__propagated_route_table = {
  labels : string prop list option; [@option]  (** labels *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
}
[@@deriving yojson_of]
(** routing__propagated_route_table *)

type routing__static_vnet_route = {
  address_prefixes : string prop list option; [@option]
      (** address_prefixes *)
  name : string prop option; [@option]  (** name *)
  next_hop_ip_address : string prop option; [@option]
      (** next_hop_ip_address *)
}
[@@deriving yojson_of]
(** routing__static_vnet_route *)

type routing = {
  associated_route_table_id : string prop option; [@option]
      (** associated_route_table_id *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  static_vnet_local_route_override_criteria : string prop option;
      [@option]
      (** static_vnet_local_route_override_criteria *)
  propagated_route_table : routing__propagated_route_table list;
  static_vnet_route : routing__static_vnet_route list;
}
[@@deriving yojson_of]
(** routing *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_hub_connection = {
  id : string prop option; [@option]  (** id *)
  internet_security_enabled : bool prop option; [@option]
      (** internet_security_enabled *)
  name : string prop;  (** name *)
  remote_virtual_network_id : string prop;
      (** remote_virtual_network_id *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  routing : routing list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_connection *)

let routing__propagated_route_table ?labels ?route_table_ids () :
    routing__propagated_route_table =
  { labels; route_table_ids }

let routing__static_vnet_route ?address_prefixes ?name
    ?next_hop_ip_address () : routing__static_vnet_route =
  { address_prefixes; name; next_hop_ip_address }

let routing ?associated_route_table_id ?inbound_route_map_id
    ?outbound_route_map_id ?static_vnet_local_route_override_criteria
    ~propagated_route_table ~static_vnet_route () : routing =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    static_vnet_local_route_override_criteria;
    propagated_route_table;
    static_vnet_route;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_connection ?id ?internet_security_enabled
    ?timeouts ~name ~remote_virtual_network_id ~virtual_hub_id
    ~routing () : azurerm_virtual_hub_connection =
  {
    id;
    internet_security_enabled;
    name;
    remote_virtual_network_id;
    virtual_hub_id;
    routing;
    timeouts;
  }

type t = {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  virtual_hub_id : string prop;
}

let register ?tf_module ?id ?internet_security_enabled ?timeouts
    ~name ~remote_virtual_network_id ~virtual_hub_id ~routing
    __resource_id =
  let __resource_type = "azurerm_virtual_hub_connection" in
  let __resource =
    azurerm_virtual_hub_connection ?id ?internet_security_enabled
      ?timeouts ~name ~remote_virtual_network_id ~virtual_hub_id
      ~routing ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_connection __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       internet_security_enabled =
         Prop.computed __resource_type __resource_id
           "internet_security_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       remote_virtual_network_id =
         Prop.computed __resource_type __resource_id
           "remote_virtual_network_id";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
