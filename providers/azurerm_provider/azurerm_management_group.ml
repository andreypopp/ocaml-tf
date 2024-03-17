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

let azurerm_management_group ?display_name ?id ?name
    ?parent_management_group_id ?subscription_ids ?timeouts
    __resource_id =
  let __resource_type = "azurerm_management_group" in
  let __resource =
    {
      display_name;
      id;
      name;
      parent_management_group_id;
      subscription_ids;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group __resource);
  ()
