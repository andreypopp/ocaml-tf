(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_route_table_route__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table_route__timeouts *)

type azurerm_virtual_hub_route_table_route = {
  destinations : string list;  (** destinations *)
  destinations_type : string;  (** destinations_type *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  next_hop : string;  (** next_hop *)
  next_hop_type : string option; [@option]  (** next_hop_type *)
  route_table_id : string;  (** route_table_id *)
  timeouts : azurerm_virtual_hub_route_table_route__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table_route *)

let azurerm_virtual_hub_route_table_route ?id ?next_hop_type
    ?timeouts ~destinations ~destinations_type ~name ~next_hop
    ~route_table_id __resource_id =
  let __resource_type = "azurerm_virtual_hub_route_table_route" in
  let __resource =
    {
      destinations;
      destinations_type;
      id;
      name;
      next_hop;
      next_hop_type;
      route_table_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_route_table_route __resource);
  ()
