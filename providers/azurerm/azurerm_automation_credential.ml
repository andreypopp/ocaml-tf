(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_credential__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_credential__timeouts *)

type azurerm_automation_credential = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  username : string prop;  (** username *)
  timeouts : azurerm_automation_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_credential *)

type t = {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  username : string prop;
}

let azurerm_automation_credential ?description ?id ?timeouts
    ~automation_account_name ~name ~password ~resource_group_name
    ~username __resource_id =
  let __resource_type = "azurerm_automation_credential" in
  let __resource =
    ({
       automation_account_name;
       description;
       id;
       name;
       password;
       resource_group_name;
       username;
       timeouts;
     }
      : azurerm_automation_credential)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_credential __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
