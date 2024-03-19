(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_manager_static_member = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_group_id : string prop;  (** network_group_id *)
  target_virtual_network_id : string prop;
      (** target_virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_manager_static_member ?id ?timeouts ~name
    ~network_group_id ~target_virtual_network_id () :
    azurerm_network_manager_static_member =
  { id; name; network_group_id; target_virtual_network_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~network_group_id
    ~target_virtual_network_id __resource_id =
  let __resource_type = "azurerm_network_manager_static_member" in
  let __resource =
    azurerm_network_manager_static_member ?id ?timeouts ~name
      ~network_group_id ~target_virtual_network_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
