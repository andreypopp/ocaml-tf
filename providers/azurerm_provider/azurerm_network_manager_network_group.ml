(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_network_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group__timeouts *)

type azurerm_network_manager_network_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts : azurerm_network_manager_network_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let azurerm_network_manager_network_group ?description ?id ?timeouts
    ~name ~network_manager_id __resource_id =
  let __resource_type = "azurerm_network_manager_network_group" in
  let __resource =
    ({ description; id; name; network_manager_id; timeouts }
      : azurerm_network_manager_network_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_network_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_manager_id =
         Prop.computed __resource_type __resource_id
           "network_manager_id";
     }
      : t)
  in
  __resource_attributes
