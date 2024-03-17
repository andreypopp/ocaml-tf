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

type t = {
  disable_bgp_route_propagation : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : azurerm_route_table__route list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
}

let azurerm_route_table ?disable_bgp_route_propagation ?id ?route
    ?tags ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_route_table" in
  let __resource =
    ({
       disable_bgp_route_propagation;
       id;
       location;
       name;
       resource_group_name;
       route;
       tags;
       timeouts;
     }
      : azurerm_route_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_table __resource);
  let __resource_attributes =
    ({
       disable_bgp_route_propagation =
         Prop.computed __resource_type __resource_id
           "disable_bgp_route_propagation";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       route = Prop.computed __resource_type __resource_id "route";
       subnets =
         Prop.computed __resource_type __resource_id "subnets";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
