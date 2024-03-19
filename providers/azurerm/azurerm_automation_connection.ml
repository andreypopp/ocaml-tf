(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_connection = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop; [@key "type"]  (** type *)
  values : (string * string prop) list;  (** values *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection ?description ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values () : azurerm_automation_connection =
  {
    automation_account_name;
    description;
    id;
    name;
    resource_group_name;
    type_;
    values;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  values : (string * string) list prop;
}

let register ?tf_module ?description ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values __resource_id =
  let __resource_type = "azurerm_automation_connection" in
  let __resource =
    azurerm_automation_connection ?description ?id ?timeouts
      ~automation_account_name ~name ~resource_group_name ~type_
      ~values ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       type_ = Prop.computed __resource_type __resource_id "type";
       values = Prop.computed __resource_type __resource_id "values";
     }
      : t)
  in
  __resource_attributes
