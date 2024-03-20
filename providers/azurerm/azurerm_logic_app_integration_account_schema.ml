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

type azurerm_logic_app_integration_account_schema = {
  content : string prop;  (** content *)
  file_name : string prop option; [@option]  (** file_name *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_schema *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_schema ?file_name ?id
    ?metadata ?timeouts ~content ~integration_account_name ~name
    ~resource_group_name () :
    azurerm_logic_app_integration_account_schema =
  {
    content;
    file_name;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  content : string prop;
  file_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?file_name ?id ?metadata ?timeouts ~content
    ~integration_account_name ~name ~resource_group_name __id =
  let __type = "azurerm_logic_app_integration_account_schema" in
  let __attrs =
    ({
       content = Prop.computed __type __id "content";
       file_name = Prop.computed __type __id "file_name";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_schema
        (azurerm_logic_app_integration_account_schema ?file_name ?id
           ?metadata ?timeouts ~content ~integration_account_name
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?file_name ?id ?metadata ?timeouts ~content
    ~integration_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?file_name ?id ?metadata ?timeouts ~content
      ~integration_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
