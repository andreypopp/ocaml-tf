(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type field = {
  is_encrypted : bool prop option; [@option]  (** is_encrypted *)
  is_optional : bool prop option; [@option]  (** is_optional *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** field *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_connection_type = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  is_global : bool prop option; [@option]  (** is_global *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  field : field list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type *)

let field ?is_encrypted ?is_optional ~name ~type_ () : field =
  { is_encrypted; is_optional; name; type_ }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_connection_type ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field () :
    azurerm_automation_connection_type =
  {
    automation_account_name;
    id;
    is_global;
    name;
    resource_group_name;
    field;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field
    __resource_id =
  let __resource_type = "azurerm_automation_connection_type" in
  let __resource =
    azurerm_automation_connection_type ?id ?is_global ?timeouts
      ~automation_account_name ~name ~resource_group_name ~field ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
