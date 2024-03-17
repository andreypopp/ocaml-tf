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

type t = {
  address_prefix : string prop;
  id : string prop;
  name : string prop;
  next_hop_in_ip_address : string prop;
  next_hop_type : string prop;
  resource_group_name : string prop;
  route_table_name : string prop;
}

let azurerm_route ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name __resource_id =
  let __resource_type = "azurerm_route" in
  let __resource =
    ({
       address_prefix;
       id;
       name;
       next_hop_in_ip_address;
       next_hop_type;
       resource_group_name;
       route_table_name;
       timeouts;
     }
      : azurerm_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route __resource);
  let __resource_attributes =
    ({
       address_prefix =
         Prop.computed __resource_type __resource_id "address_prefix";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       next_hop_in_ip_address =
         Prop.computed __resource_type __resource_id
           "next_hop_in_ip_address";
       next_hop_type =
         Prop.computed __resource_type __resource_id "next_hop_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       route_table_name =
         Prop.computed __resource_type __resource_id
           "route_table_name";
     }
      : t)
  in
  __resource_attributes
