(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route__timeouts *)

type azurerm_route = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop option; [@option]
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  route_table_name : string prop;  (** route_table_name *)
  timeouts : azurerm_route__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route *)

let azurerm_route ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name __resource_id =
  let __resource_type = "azurerm_route" in
  let __resource =
    {
      address_prefix;
      id;
      name;
      next_hop_in_ip_address;
      next_hop_type;
      resource_group_name;
      route_table_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route __resource);
  ()
