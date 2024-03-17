(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_variable_int__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_variable_int__timeouts *)

type azurerm_automation_variable_int = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : float prop option; [@option]  (** value *)
  timeouts : azurerm_automation_variable_int__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_variable_int *)

let azurerm_automation_variable_int ?description ?encrypted ?id
    ?value ?timeouts ~automation_account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_variable_int" in
  let __resource =
    {
      automation_account_name;
      description;
      encrypted;
      id;
      name;
      resource_group_name;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_variable_int __resource);
  ()
