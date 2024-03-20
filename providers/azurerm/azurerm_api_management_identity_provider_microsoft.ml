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

type azurerm_api_management_identity_provider_microsoft = {
  api_management_name : string prop;  (** api_management_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_microsoft *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_identity_provider_microsoft ?id ?timeouts
    ~api_management_name ~client_id ~client_secret
    ~resource_group_name () :
    azurerm_api_management_identity_provider_microsoft =
  {
    api_management_name;
    client_id;
    client_secret;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~api_management_name ~client_id ~client_secret
    ~resource_group_name __id =
  let __type =
    "azurerm_api_management_identity_provider_microsoft"
  in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
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
      yojson_of_azurerm_api_management_identity_provider_microsoft
        (azurerm_api_management_identity_provider_microsoft ?id
           ?timeouts ~api_management_name ~client_id ~client_secret
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~client_id
    ~client_secret ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~client_id ~client_secret
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
