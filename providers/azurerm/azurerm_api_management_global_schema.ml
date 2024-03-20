(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?timeouts ~api_management_name
    ~resource_group_name ~schema_id ~type_ ~value __id =
  let __type = "azurerm_api_management_global_schema" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       schema_id = Prop.computed __type __id "schema_id";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_global_schema
        (azurerm_api_management_global_schema ?description ?id
           ?timeouts ~api_management_name ~resource_group_name
           ~schema_id ~type_ ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~api_management_name
      ~resource_group_name ~schema_id ~type_ ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
