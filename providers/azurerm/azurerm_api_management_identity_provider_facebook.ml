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

type azurerm_api_management_identity_provider_facebook = {
  api_management_name : string prop;  (** api_management_name *)
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_facebook *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_identity_provider_facebook ?id ?timeouts
    ~api_management_name ~app_id ~app_secret ~resource_group_name ()
    : azurerm_api_management_identity_provider_facebook =
  {
    api_management_name;
    app_id;
    app_secret;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  app_id : string prop;
  app_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~api_management_name ~app_id ~app_secret
    ~resource_group_name __id =
  let __type = "azurerm_api_management_identity_provider_facebook" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       app_id = Prop.computed __type __id "app_id";
       app_secret = Prop.computed __type __id "app_secret";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_identity_provider_facebook
        (azurerm_api_management_identity_provider_facebook ?id
           ?timeouts ~api_management_name ~app_id ~app_secret
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~app_id
    ~app_secret ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~app_id ~app_secret
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
