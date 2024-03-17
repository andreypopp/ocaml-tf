(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_table__timeouts *)

type azurerm_route_table__route = {
  address_prefix : string prop;  (** address_prefix *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop;
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
}
[@@deriving yojson_of]

type azurerm_route_table = {
  disable_bgp_route_propagation : bool prop option; [@option]
      (** disable_bgp_route_propagation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  route : azurerm_route_table__route list option; [@option]
      (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_route_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_table *)

let azurerm_route_table ?disable_bgp_route_propagation ?id ?route
    ?tags ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_route_table" in
  let __resource =
    {
      disable_bgp_route_propagation;
      id;
      location;
      name;
      resource_group_name;
      route;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_table __resource);
  ()
