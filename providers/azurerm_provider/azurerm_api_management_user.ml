(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_user__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_user__timeouts *)

type azurerm_api_management_user = {
  api_management_name : string;  (** api_management_name *)
  confirmation : string option; [@option]  (** confirmation *)
  email : string;  (** email *)
  first_name : string;  (** first_name *)
  last_name : string;  (** last_name *)
  note : string option; [@option]  (** note *)
  password : string option; [@option]  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  user_id : string;  (** user_id *)
  timeouts : azurerm_api_management_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_user *)

let azurerm_api_management_user ?confirmation ?note ?password
    ?timeouts ~api_management_name ~email ~first_name ~last_name
    ~resource_group_name ~user_id __resource_id =
  let __resource_type = "azurerm_api_management_user" in
  let __resource =
    {
      api_management_name;
      confirmation;
      email;
      first_name;
      last_name;
      note;
      password;
      resource_group_name;
      user_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_user __resource);
  ()
