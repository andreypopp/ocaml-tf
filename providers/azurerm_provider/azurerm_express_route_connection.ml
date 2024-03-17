(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_connection__routing__propagated_route_table = {
  labels : string prop list option; [@option]  (** labels *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__routing__propagated_route_table *)

type azurerm_express_route_connection__routing = {
  associated_route_table_id : string prop option; [@option]
      (** associated_route_table_id *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    azurerm_express_route_connection__routing__propagated_route_table
    list;
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__routing *)

type azurerm_express_route_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__timeouts *)

type azurerm_express_route_connection = {
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  enable_internet_security : bool prop option; [@option]
      (** enable_internet_security *)
  express_route_circuit_peering_id : string prop;
      (** express_route_circuit_peering_id *)
  express_route_gateway_bypass_enabled : bool prop option; [@option]
      (** express_route_gateway_bypass_enabled *)
  express_route_gateway_id : string prop;
      (** express_route_gateway_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_weight : float prop option; [@option]
      (** routing_weight *)
  routing : azurerm_express_route_connection__routing list;
  timeouts : azurerm_express_route_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_connection *)

let azurerm_express_route_connection ?authorization_key
    ?enable_internet_security ?express_route_gateway_bypass_enabled
    ?id ?routing_weight ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name ~routing __resource_id =
  let __resource_type = "azurerm_express_route_connection" in
  let __resource =
    {
      authorization_key;
      enable_internet_security;
      express_route_circuit_peering_id;
      express_route_gateway_bypass_enabled;
      express_route_gateway_id;
      id;
      name;
      routing_weight;
      routing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_connection __resource);
  ()
