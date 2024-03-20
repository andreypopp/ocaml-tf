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

type azurerm_api_management_openid_connect_provider = {
  api_management_name : string prop;  (** api_management_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  metadata_endpoint : string prop;  (** metadata_endpoint *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_openid_connect_provider *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_openid_connect_provider ?description ?id
    ?timeouts ~api_management_name ~client_id ~client_secret
    ~display_name ~metadata_endpoint ~name ~resource_group_name () :
    azurerm_api_management_openid_connect_provider =
  {
    api_management_name;
    client_id;
    client_secret;
    description;
    display_name;
    id;
    metadata_endpoint;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_endpoint : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?description ?id ?timeouts ~api_management_name ~client_id
    ~client_secret ~display_name ~metadata_endpoint ~name
    ~resource_group_name __id =
  let __type = "azurerm_api_management_openid_connect_provider" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       metadata_endpoint =
         Prop.computed __type __id "metadata_endpoint";
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
      yojson_of_azurerm_api_management_openid_connect_provider
        (azurerm_api_management_openid_connect_provider ?description
           ?id ?timeouts ~api_management_name ~client_id
           ~client_secret ~display_name ~metadata_endpoint ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~api_management_name ~client_id ~client_secret ~display_name
    ~metadata_endpoint ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~api_management_name ~client_id
      ~client_secret ~display_name ~metadata_endpoint ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
