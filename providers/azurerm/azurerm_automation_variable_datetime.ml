(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_variable_datetime__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_variable_datetime__timeouts *)

type azurerm_automation_variable_datetime = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : string prop option; [@option]  (** value *)
  timeouts : azurerm_automation_variable_datetime__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_variable_datetime *)

type t = {
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : string prop;
}

let azurerm_automation_variable_datetime ?description ?encrypted ?id
    ?value ?timeouts ~automation_account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_variable_datetime" in
  let __resource =
    ({
       automation_account_name;
       description;
       encrypted;
       id;
       name;
       resource_group_name;
       value;
       timeouts;
     }
      : azurerm_automation_variable_datetime)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_variable_datetime __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
