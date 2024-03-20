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

type azurerm_logic_app_integration_account_session = {
  content : string prop;  (** content *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_session *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_session ?id ?timeouts
    ~content ~integration_account_name ~name ~resource_group_name ()
    : azurerm_logic_app_integration_account_session =
  {
    content;
    id;
    integration_account_name;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  content : string prop;
  id : string prop;
  integration_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~content ~integration_account_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_logic_app_integration_account_session" in
  let __attrs =
    ({
       content = Prop.computed __type __id "content";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
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
      yojson_of_azurerm_logic_app_integration_account_session
        (azurerm_logic_app_integration_account_session ?id ?timeouts
           ~content ~integration_account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~content
    ~integration_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~content ~integration_account_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
