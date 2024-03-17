(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_route_table__route = {
  destinations : string prop list;  (** destinations *)
  destinations_type : string prop;  (** destinations_type *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
  next_hop_type : string prop option; [@option]  (** next_hop_type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table__route *)

type azurerm_virtual_hub_route_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table__timeouts *)

type azurerm_virtual_hub_route_table = {
  id : string prop option; [@option]  (** id *)
  labels : string prop list option; [@option]  (** labels *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  route : azurerm_virtual_hub_route_table__route list;
  timeouts : azurerm_virtual_hub_route_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table *)

type t = {
  id : string prop;
  labels : string list prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let azurerm_virtual_hub_route_table ?id ?labels ?timeouts ~name
    ~virtual_hub_id ~route __resource_id =
  let __resource_type = "azurerm_virtual_hub_route_table" in
  let __resource =
    ({ id; labels; name; virtual_hub_id; route; timeouts }
      : azurerm_virtual_hub_route_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_route_table __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
