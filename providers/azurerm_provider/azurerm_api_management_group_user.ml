(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_group_user__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_group_user__timeouts *)

type azurerm_api_management_group_user = {
  api_management_name : string;  (** api_management_name *)
  group_name : string;  (** group_name *)
  resource_group_name : string;  (** resource_group_name *)
  user_id : string;  (** user_id *)
  timeouts : azurerm_api_management_group_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_group_user *)

let azurerm_api_management_group_user ?timeouts ~api_management_name
    ~group_name ~resource_group_name ~user_id __resource_id =
  let __resource_type = "azurerm_api_management_group_user" in
  let __resource =
    {
      api_management_name;
      group_name;
      resource_group_name;
      user_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_group_user __resource);
  ()
