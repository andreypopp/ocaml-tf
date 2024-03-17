(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_type__field = {
  is_encrypted : bool prop option; [@option]  (** is_encrypted *)
  is_optional : bool prop option; [@option]  (** is_optional *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type__field *)

type azurerm_automation_connection_type__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type__timeouts *)

type azurerm_automation_connection_type = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  is_global : bool prop option; [@option]  (** is_global *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  field : azurerm_automation_connection_type__field list;
  timeouts : azurerm_automation_connection_type__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type *)

type t = {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_automation_connection_type ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field
    __resource_id =
  let __resource_type = "azurerm_automation_connection_type" in
  let __resource =
    ({
       automation_account_name;
       id;
       is_global;
       name;
       resource_group_name;
       field;
       timeouts;
     }
      : azurerm_automation_connection_type)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_type __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       id = Prop.computed __resource_type __resource_id "id";
       is_global =
         Prop.computed __resource_type __resource_id "is_global";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
