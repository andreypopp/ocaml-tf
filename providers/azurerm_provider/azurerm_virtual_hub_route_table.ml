(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_route_table__route = {
  destinations : string list;  (** destinations *)
  destinations_type : string;  (** destinations_type *)
  name : string;  (** name *)
  next_hop : string;  (** next_hop *)
  next_hop_type : string option; [@option]  (** next_hop_type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table__route *)

type azurerm_virtual_hub_route_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table__timeouts *)

type azurerm_virtual_hub_route_table = {
  labels : string list option; [@option]  (** labels *)
  name : string;  (** name *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  route : azurerm_virtual_hub_route_table__route list;
  timeouts : azurerm_virtual_hub_route_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_route_table *)

let azurerm_virtual_hub_route_table ?labels ?timeouts ~name
    ~virtual_hub_id ~route __resource_id =
  let __resource_type = "azurerm_virtual_hub_route_table" in
  let __resource =
    { labels; name; virtual_hub_id; route; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_route_table __resource);
  ()
