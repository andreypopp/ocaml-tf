(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_circuit__sku = {
  family : string;  (** family *)
  tier : string;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit__sku *)

type azurerm_express_route_circuit__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit__timeouts *)

type azurerm_express_route_circuit = {
  allow_classic_operations : bool option; [@option]
      (** allow_classic_operations *)
  authorization_key : string option; [@option]
      (** authorization_key *)
  bandwidth_in_gbps : float option; [@option]
      (** bandwidth_in_gbps *)
  bandwidth_in_mbps : float option; [@option]
      (** bandwidth_in_mbps *)
  express_route_port_id : string option; [@option]
      (** express_route_port_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  peering_location : string option; [@option]
      (** peering_location *)
  resource_group_name : string;  (** resource_group_name *)
  service_provider_name : string option; [@option]
      (** service_provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  sku : azurerm_express_route_circuit__sku list;
  timeouts : azurerm_express_route_circuit__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit *)

let azurerm_express_route_circuit ?allow_classic_operations
    ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
    ?express_route_port_id ?peering_location ?service_provider_name
    ?tags ?timeouts ~location ~name ~resource_group_name ~sku
    __resource_id =
  let __resource_type = "azurerm_express_route_circuit" in
  let __resource =
    {
      allow_classic_operations;
      authorization_key;
      bandwidth_in_gbps;
      bandwidth_in_mbps;
      express_route_port_id;
      location;
      name;
      peering_location;
      resource_group_name;
      service_provider_name;
      tags;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit __resource);
  ()
