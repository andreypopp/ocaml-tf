(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_user__timeouts *)

type azurerm_api_management_user = {
  api_management_name : string prop;  (** api_management_name *)
  confirmation : string prop option; [@option]  (** confirmation *)
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  id : string prop option; [@option]  (** id *)
  last_name : string prop;  (** last_name *)
  note : string prop option; [@option]  (** note *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  state : string prop option; [@option]  (** state *)
  user_id : string prop;  (** user_id *)
  timeouts : azurerm_api_management_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_user *)

type t = {
  api_management_name : string prop;
  confirmation : string prop;
  email : string prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  note : string prop;
  password : string prop;
  resource_group_name : string prop;
  state : string prop;
  user_id : string prop;
}

let azurerm_api_management_user ?confirmation ?id ?note ?password
    ?state ?timeouts ~api_management_name ~email ~first_name
    ~last_name ~resource_group_name ~user_id __resource_id =
  let __resource_type = "azurerm_api_management_user" in
  let __resource =
    ({
       api_management_name;
       confirmation;
       email;
       first_name;
       id;
       last_name;
       note;
       password;
       resource_group_name;
       state;
       user_id;
       timeouts;
     }
      : azurerm_api_management_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_user __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       confirmation =
         Prop.computed __resource_type __resource_id "confirmation";
       email = Prop.computed __resource_type __resource_id "email";
       first_name =
         Prop.computed __resource_type __resource_id "first_name";
       id = Prop.computed __resource_type __resource_id "id";
       last_name =
         Prop.computed __resource_type __resource_id "last_name";
       note = Prop.computed __resource_type __resource_id "note";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       state = Prop.computed __resource_type __resource_id "state";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
