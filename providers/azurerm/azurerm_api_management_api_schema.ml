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

type azurerm_api_management_api_schema = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  components : string prop option; [@option]  (** components *)
  content_type : string prop;  (** content_type *)
  definitions : string prop option; [@option]  (** definitions *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  schema_id : string prop;  (** schema_id *)
  value : string prop option; [@option]  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_schema *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_schema ?components ?definitions ?id
    ?value ?timeouts ~api_management_name ~api_name ~content_type
    ~resource_group_name ~schema_id () :
    azurerm_api_management_api_schema =
  {
    api_management_name;
    api_name;
    components;
    content_type;
    definitions;
    id;
    resource_group_name;
    schema_id;
    value;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  api_name : string prop;
  components : string prop;
  content_type : string prop;
  definitions : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  value : string prop;
}

let make ?components ?definitions ?id ?value ?timeouts
    ~api_management_name ~api_name ~content_type ~resource_group_name
    ~schema_id __id =
  let __type = "azurerm_api_management_api_schema" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       api_name = Prop.computed __type __id "api_name";
       components = Prop.computed __type __id "components";
       content_type = Prop.computed __type __id "content_type";
       definitions = Prop.computed __type __id "definitions";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       schema_id = Prop.computed __type __id "schema_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_schema
        (azurerm_api_management_api_schema ?components ?definitions
           ?id ?value ?timeouts ~api_management_name ~api_name
           ~content_type ~resource_group_name ~schema_id ());
    attrs = __attrs;
  }

let register ?tf_module ?components ?definitions ?id ?value ?timeouts
    ~api_management_name ~api_name ~content_type ~resource_group_name
    ~schema_id __id =
  let (r : _ Tf_core.resource) =
    make ?components ?definitions ?id ?value ?timeouts
      ~api_management_name ~api_name ~content_type
      ~resource_group_name ~schema_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
