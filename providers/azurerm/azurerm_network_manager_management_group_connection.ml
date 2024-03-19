(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_manager_management_group_connection = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_management_group_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_management_group_connection ?description
    ?id ?timeouts ~management_group_id ~name ~network_manager_id () :
    azurerm_network_manager_management_group_connection =
  {
    description;
    id;
    management_group_id;
    name;
    network_manager_id;
    timeouts;
  }

type t = {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let register ?tf_module ?description ?id ?timeouts
    ~management_group_id ~name ~network_manager_id __resource_id =
  let __resource_type =
    "azurerm_network_manager_management_group_connection"
  in
  let __resource =
    azurerm_network_manager_management_group_connection ?description
      ?id ?timeouts ~management_group_id ~name ~network_manager_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_management_group_connection
       __resource);
  let __resource_attributes =
    ({
       connection_state =
         Prop.computed __resource_type __resource_id
           "connection_state";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       name = Prop.computed __resource_type __resource_id "name";
       network_manager_id =
         Prop.computed __resource_type __resource_id
           "network_manager_id";
     }
      : t)
  in
  __resource_attributes
