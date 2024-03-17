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

let azurerm_automation_credential ?description ?id ?timeouts
    ~automation_account_name ~name ~password ~resource_group_name
    ~username __resource_id =
  let __resource_type = "azurerm_automation_credential" in
  let __resource =
    {
      automation_account_name;
      description;
      id;
      name;
      password;
      resource_group_name;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_credential __resource);
  ()
