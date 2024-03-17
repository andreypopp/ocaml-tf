(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_credential__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_credential__timeouts *)

type azurerm_automation_credential = {
  automation_account_name : string;  (** automation_account_name *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  password : string;  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  username : string;  (** username *)
  timeouts : azurerm_automation_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_credential *)

let azurerm_automation_credential ?description ?timeouts
    ~automation_account_name ~name ~password ~resource_group_name
    ~username __resource_id =
  let __resource_type = "azurerm_automation_credential" in
  let __resource =
    {
      automation_account_name;
      description;
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
