(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_express_route_connection__routing__propagated_route_table = {
  labels : string list option; [@option]  (** labels *)
  route_table_ids : string list option; [@option]
      (** route_table_ids *)
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__routing__propagated_route_table *)

type azurerm_express_route_connection__routing = {
  associated_route_table_id : string option; [@option]
      (** associated_route_table_id *)
  inbound_route_map_id : string option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    azurerm_express_route_connection__routing__propagated_route_table
    list;
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__routing *)

type azurerm_express_route_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_connection__timeouts *)

type azurerm_express_route_connection = {
  authorization_key : string option; [@option]
      (** authorization_key *)
  enable_internet_security : bool option; [@option]
      (** enable_internet_security *)
  express_route_circuit_peering_id : string;
      (** express_route_circuit_peering_id *)
  express_route_gateway_bypass_enabled : bool option; [@option]
      (** express_route_gateway_bypass_enabled *)
  express_route_gateway_id : string;  (** express_route_gateway_id *)
  name : string;  (** name *)
  routing_weight : float option; [@option]  (** routing_weight *)
  routing : azurerm_express_route_connection__routing list;
  timeouts : azurerm_express_route_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_connection *)

let azurerm_express_route_connection ?authorization_key
    ?enable_internet_security ?express_route_gateway_bypass_enabled
    ?routing_weight ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name ~routing __resource_id =
  let __resource_type = "azurerm_express_route_connection" in
  let __resource =
    {
      authorization_key;
      enable_internet_security;
      express_route_circuit_peering_id;
      express_route_gateway_bypass_enabled;
      express_route_gateway_id;
      name;
      routing_weight;
      routing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_connection __resource);
  ()
