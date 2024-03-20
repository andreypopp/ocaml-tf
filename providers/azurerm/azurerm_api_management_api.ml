(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  email : string prop option; [@option]
  name : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact) -> ()

let yojson_of_contact =
  (function
   | { email = v_email; name = v_name; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact

[@@@deriving.end]

type import__wsdl_selector = {
  endpoint_name : string prop;
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import__wsdl_selector) -> ()

let yojson_of_import__wsdl_selector =
  (function
   | {
       endpoint_name = v_endpoint_name;
       service_name = v_service_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_name in
         ("endpoint_name", arg) :: bnds
       in
       `Assoc bnds
    : import__wsdl_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import__wsdl_selector

[@@@deriving.end]

type import = {
  content_format : string prop;
  content_value : string prop;
  wsdl_selector : import__wsdl_selector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import) -> ()

let yojson_of_import =
  (function
   | {
       content_format = v_content_format;
       content_value = v_content_value;
       wsdl_selector = v_wsdl_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_import__wsdl_selector
             v_wsdl_selector
         in
         ("wsdl_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_value in
         ("content_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_content_format
         in
         ("content_format", arg) :: bnds
       in
       `Assoc bnds
    : import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import

[@@@deriving.end]

type license = {
  name : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : license) -> ()

let yojson_of_license =
  (function
   | { name = v_name; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : license -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_license

[@@@deriving.end]

type oauth2_authorization = {
  authorization_server_name : string prop;
  scope : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oauth2_authorization) -> ()

let yojson_of_oauth2_authorization =
  (function
   | {
       authorization_server_name = v_authorization_server_name;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_authorization_server_name
         in
         ("authorization_server_name", arg) :: bnds
       in
       `Assoc bnds
    : oauth2_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oauth2_authorization

[@@@deriving.end]

type openid_authentication = {
  bearer_token_sending_methods : string prop list option; [@option]
  openid_provider_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : openid_authentication) -> ()

let yojson_of_openid_authentication =
  (function
   | {
       bearer_token_sending_methods = v_bearer_token_sending_methods;
       openid_provider_name = v_openid_provider_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_openid_provider_name
         in
         ("openid_provider_name", arg) :: bnds
       in
       let bnds =
         match v_bearer_token_sending_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bearer_token_sending_methods", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : openid_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_openid_authentication

[@@@deriving.end]

type subscription_key_parameter_names = {
  header : string prop;
  query : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscription_key_parameter_names) -> ()

let yojson_of_subscription_key_parameter_names =
  (function
   | { header = v_header; query = v_query } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : subscription_key_parameter_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscription_key_parameter_names

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_api = {
  api_management_name : string prop;
  api_type : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  path : string prop option; [@option]
  protocols : string prop list option; [@option]
  resource_group_name : string prop;
  revision : string prop;
  revision_description : string prop option; [@option]
  service_url : string prop option; [@option]
  soap_pass_through : bool prop option; [@option]
  source_api_id : string prop option; [@option]
  subscription_required : bool prop option; [@option]
  terms_of_service_url : string prop option; [@option]
  version : string prop option; [@option]
  version_description : string prop option; [@option]
  version_set_id : string prop option; [@option]
  contact : contact list;
  import : import list;
  license : license list;
  oauth2_authorization : oauth2_authorization list;
  openid_authentication : openid_authentication list;
  subscription_key_parameter_names :
    subscription_key_parameter_names list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api) -> ()

let yojson_of_azurerm_api_management_api =
  (function
   | {
       api_management_name = v_api_management_name;
       api_type = v_api_type;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       path = v_path;
       protocols = v_protocols;
       resource_group_name = v_resource_group_name;
       revision = v_revision;
       revision_description = v_revision_description;
       service_url = v_service_url;
       soap_pass_through = v_soap_pass_through;
       source_api_id = v_source_api_id;
       subscription_required = v_subscription_required;
       terms_of_service_url = v_terms_of_service_url;
       version = v_version;
       version_description = v_version_description;
       version_set_id = v_version_set_id;
       contact = v_contact;
       import = v_import;
       license = v_license;
       oauth2_authorization = v_oauth2_authorization;
       openid_authentication = v_openid_authentication;
       subscription_key_parameter_names =
         v_subscription_key_parameter_names;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_subscription_key_parameter_names
             v_subscription_key_parameter_names
         in
         ("subscription_key_parameter_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_openid_authentication
             v_openid_authentication
         in
         ("openid_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_oauth2_authorization
             v_oauth2_authorization
         in
         ("oauth2_authorization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_license v_license in
         ("license", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_import v_import in
         ("import", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_contact v_contact in
         ("contact", arg) :: bnds
       in
       let bnds =
         match v_version_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terms_of_service_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "terms_of_service_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscription_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "subscription_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_api_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_api_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_soap_pass_through with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "soap_pass_through", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision_description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api

[@@@deriving.end]

let contact ?email ?name ?url () : contact = { email; name; url }

let import__wsdl_selector ~endpoint_name ~service_name () :
    import__wsdl_selector =
  { endpoint_name; service_name }

let import ~content_format ~content_value ~wsdl_selector () : import
    =
  { content_format; content_value; wsdl_selector }

let license ?name ?url () : license = { name; url }

let oauth2_authorization ?scope ~authorization_server_name () :
    oauth2_authorization =
  { authorization_server_name; scope }

let openid_authentication ?bearer_token_sending_methods
    ~openid_provider_name () : openid_authentication =
  { bearer_token_sending_methods; openid_provider_name }

let subscription_key_parameter_names ~header ~query () :
    subscription_key_parameter_names =
  { header; query }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api ?api_type ?description ?display_name
    ?id ?path ?protocols ?revision_description ?service_url
    ?soap_pass_through ?source_api_id ?subscription_required
    ?terms_of_service_url ?version ?version_description
    ?version_set_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names () : azurerm_api_management_api
    =
  {
    api_management_name;
    api_type;
    description;
    display_name;
    id;
    name;
    path;
    protocols;
    resource_group_name;
    revision;
    revision_description;
    service_url;
    soap_pass_through;
    source_api_id;
    subscription_required;
    terms_of_service_url;
    version;
    version_description;
    version_set_id;
    contact;
    import;
    license;
    oauth2_authorization;
    openid_authentication;
    subscription_key_parameter_names;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  api_type : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_current : bool prop;
  is_online : bool prop;
  name : string prop;
  path : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  revision : string prop;
  revision_description : string prop;
  service_url : string prop;
  soap_pass_through : bool prop;
  source_api_id : string prop;
  subscription_required : bool prop;
  terms_of_service_url : string prop;
  version : string prop;
  version_description : string prop;
  version_set_id : string prop;
}

let make ?api_type ?description ?display_name ?id ?path ?protocols
    ?revision_description ?service_url ?soap_pass_through
    ?source_api_id ?subscription_required ?terms_of_service_url
    ?version ?version_description ?version_set_id ?timeouts
    ~api_management_name ~name ~resource_group_name ~revision
    ~contact ~import ~license ~oauth2_authorization
    ~openid_authentication ~subscription_key_parameter_names __id =
  let __type = "azurerm_api_management_api" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       api_type = Prop.computed __type __id "api_type";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       is_current = Prop.computed __type __id "is_current";
       is_online = Prop.computed __type __id "is_online";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       protocols = Prop.computed __type __id "protocols";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       revision = Prop.computed __type __id "revision";
       revision_description =
         Prop.computed __type __id "revision_description";
       service_url = Prop.computed __type __id "service_url";
       soap_pass_through =
         Prop.computed __type __id "soap_pass_through";
       source_api_id = Prop.computed __type __id "source_api_id";
       subscription_required =
         Prop.computed __type __id "subscription_required";
       terms_of_service_url =
         Prop.computed __type __id "terms_of_service_url";
       version = Prop.computed __type __id "version";
       version_description =
         Prop.computed __type __id "version_description";
       version_set_id = Prop.computed __type __id "version_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api
        (azurerm_api_management_api ?api_type ?description
           ?display_name ?id ?path ?protocols ?revision_description
           ?service_url ?soap_pass_through ?source_api_id
           ?subscription_required ?terms_of_service_url ?version
           ?version_description ?version_set_id ?timeouts
           ~api_management_name ~name ~resource_group_name ~revision
           ~contact ~import ~license ~oauth2_authorization
           ~openid_authentication ~subscription_key_parameter_names
           ());
    attrs = __attrs;
  }

let register ?tf_module ?api_type ?description ?display_name ?id
    ?path ?protocols ?revision_description ?service_url
    ?soap_pass_through ?source_api_id ?subscription_required
    ?terms_of_service_url ?version ?version_description
    ?version_set_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision ~contact ~import ~license
    ~oauth2_authorization ~openid_authentication
    ~subscription_key_parameter_names __id =
  let (r : _ Tf_core.resource) =
    make ?api_type ?description ?display_name ?id ?path ?protocols
      ?revision_description ?service_url ?soap_pass_through
      ?source_api_id ?subscription_required ?terms_of_service_url
      ?version ?version_description ?version_set_id ?timeouts
      ~api_management_name ~name ~resource_group_name ~revision
      ~contact ~import ~license ~oauth2_authorization
      ~openid_authentication ~subscription_key_parameter_names __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
