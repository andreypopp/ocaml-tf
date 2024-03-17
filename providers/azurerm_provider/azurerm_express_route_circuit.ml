(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_circuit__sku = {
  family : string prop;  (** family *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit__sku *)

type azurerm_express_route_circuit__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit__timeouts *)

type azurerm_express_route_circuit = {
  allow_classic_operations : bool prop option; [@option]
      (** allow_classic_operations *)
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  bandwidth_in_gbps : float prop option; [@option]
      (** bandwidth_in_gbps *)
  bandwidth_in_mbps : float prop option; [@option]
      (** bandwidth_in_mbps *)
  express_route_port_id : string prop option; [@option]
      (** express_route_port_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  peering_location : string prop option; [@option]
      (** peering_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_provider_name : string prop option; [@option]
      (** service_provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  sku : azurerm_express_route_circuit__sku list;
  timeouts : azurerm_express_route_circuit__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit *)

let azurerm_express_route_circuit ?allow_classic_operations
    ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
    ?express_route_port_id ?id ?peering_location
    ?service_provider_name ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_express_route_circuit" in
  let __resource =
    {
      allow_classic_operations;
      authorization_key;
      bandwidth_in_gbps;
      bandwidth_in_mbps;
      express_route_port_id;
      id;
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
