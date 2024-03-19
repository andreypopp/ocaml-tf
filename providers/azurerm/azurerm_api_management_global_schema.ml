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

type azurerm_api_management_global_schema = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  schema_id : string prop;  (** schema_id *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_global_schema *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_global_schema ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value () : azurerm_api_management_global_schema =
  {
    api_management_name;
    description;
    id;
    resource_group_name;
    schema_id;
    type_;
    value;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  type_ : string prop;
  value : string prop;
}

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value __resource_id =
  let __resource_type = "azurerm_api_management_global_schema" in
  let __resource =
    azurerm_api_management_global_schema ?description ?id ?timeouts
      ~api_management_name ~resource_group_name ~schema_id ~type_
      ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_global_schema __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       schema_id =
         Prop.computed __resource_type __resource_id "schema_id";
       type_ = Prop.computed __resource_type __resource_id "type";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
