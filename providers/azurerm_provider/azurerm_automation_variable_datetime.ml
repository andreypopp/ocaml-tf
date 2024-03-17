(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_variable_datetime__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_variable_datetime__timeouts *)

type azurerm_automation_variable_datetime = {
  automation_account_name : string;  (** automation_account_name *)
  description : string option; [@option]  (** description *)
  encrypted : bool option; [@option]  (** encrypted *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  value : string option; [@option]  (** value *)
  timeouts : azurerm_automation_variable_datetime__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_variable_datetime *)

let azurerm_automation_variable_datetime ?description ?encrypted
    ?value ?timeouts ~automation_account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_variable_datetime" in
  let __resource =
    {
      automation_account_name;
      description;
      encrypted;
      name;
      resource_group_name;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_variable_datetime __resource);
  ()
