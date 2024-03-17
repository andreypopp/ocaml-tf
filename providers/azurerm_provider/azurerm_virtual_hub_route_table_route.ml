(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_route_table_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table_route__timeouts *)

type azurerm_virtual_hub_route_table_route = {
  destinations : string prop list;  (** destinations *)
  destinations_type : string prop;  (** destinations_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
  next_hop_type : string prop option; [@option]  (** next_hop_type *)
  route_table_id : string prop;  (** route_table_id *)
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
