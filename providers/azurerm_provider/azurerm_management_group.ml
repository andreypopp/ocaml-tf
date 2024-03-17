(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group__timeouts *)

type azurerm_management_group = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  parent_management_group_id : string prop option; [@option]
      (** parent_management_group_id *)
  subscription_ids : string prop list option; [@option]
      (** subscription_ids *)
  timeouts : azurerm_management_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group *)

type t = {
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_management_group_id : string prop;
  subscription_ids : string list prop;
}

let azurerm_management_group ?display_name ?id ?name
    ?parent_management_group_id ?subscription_ids ?timeouts
    __resource_id =
  let __resource_type = "azurerm_management_group" in
  let __resource =
    ({
       display_name;
       id;
       name;
       parent_management_group_id;
       subscription_ids;
       timeouts;
     }
      : azurerm_management_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_management_group_id =
         Prop.computed __resource_type __resource_id
           "parent_management_group_id";
       subscription_ids =
         Prop.computed __resource_type __resource_id
           "subscription_ids";
     }
      : t)
  in
  __resource_attributes
