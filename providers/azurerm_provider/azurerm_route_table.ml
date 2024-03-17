(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_table__timeouts *)

type azurerm_route_table__route = {
  address_prefix : string;  (** address_prefix *)
  name : string;  (** name *)
  next_hop_in_ip_address : string;  (** next_hop_in_ip_address *)
  next_hop_type : string;  (** next_hop_type *)
}
[@@deriving yojson_of]

type azurerm_route_table = {
  disable_bgp_route_propagation : bool option; [@option]
      (** disable_bgp_route_propagation *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_route_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_table *)

let azurerm_route_table ?disable_bgp_route_propagation ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_route_table" in
  let __resource =
    {
      disable_bgp_route_propagation;
      location;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_table __resource);
  ()
