(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group__timeouts *)

type azurerm_management_group = {
  display_name : string option; [@option]  (** display_name *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  parent_management_group_id : string option; [@option]
      (** parent_management_group_id *)
  subscription_ids : string list option; [@option]
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
