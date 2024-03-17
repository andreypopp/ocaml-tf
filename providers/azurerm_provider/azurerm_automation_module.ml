(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_module__module_link__hash = {
  algorithm : string prop;  (** algorithm *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_module__module_link__hash *)

type azurerm_automation_module__module_link = {
  uri : string prop;  (** uri *)
  hash : azurerm_automation_module__module_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_module__module_link *)

type azurerm_automation_module__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_module__timeouts *)

type azurerm_automation_module = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  module_link : azurerm_automation_module__module_link list;
  timeouts : azurerm_automation_module__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_module *)

type t = {
  automation_account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_automation_module ?id ?timeouts ~automation_account_name
    ~name ~resource_group_name ~module_link __resource_id =
  let __resource_type = "azurerm_automation_module" in
  let __resource =
    ({
       automation_account_name;
       id;
       name;
       resource_group_name;
       module_link;
       timeouts;
     }
      : azurerm_automation_module)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_module __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
