(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_static_member__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member__timeouts *)

type azurerm_network_manager_static_member = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_group_id : string prop;  (** network_group_id *)
  target_virtual_network_id : string prop;
      (** target_virtual_network_id *)
  timeouts : azurerm_network_manager_static_member__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member *)

type t = {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

let azurerm_network_manager_static_member ?id ?timeouts ~name
    ~network_group_id ~target_virtual_network_id __resource_id =
  let __resource_type = "azurerm_network_manager_static_member" in
  let __resource =
    ({
       id;
       name;
       network_group_id;
       target_virtual_network_id;
       timeouts;
     }
      : azurerm_network_manager_static_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_static_member __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_group_id =
         Prop.computed __resource_type __resource_id
           "network_group_id";
       region = Prop.computed __resource_type __resource_id "region";
       target_virtual_network_id =
         Prop.computed __resource_type __resource_id
           "target_virtual_network_id";
     }
      : t)
  in
  __resource_attributes
