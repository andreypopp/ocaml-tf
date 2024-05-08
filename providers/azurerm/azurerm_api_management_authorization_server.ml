(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type token_body_parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : token_body_parameter) -> ()

let yojson_of_token_body_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : token_body_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_token_body_parameter

[@@@deriving.end]

type azurerm_api_management_authorization_server = {
  api_management_name : string prop;
  authorization_endpoint : string prop;
  authorization_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bearer_token_sending_methods : string prop list option; [@option]
  client_authentication_method : string prop list option; [@option]
  client_id : string prop;
  client_registration_endpoint : string prop;
  client_secret : string prop option; [@option]
  default_scope : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  grant_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  resource_owner_password : string prop option; [@option]
  resource_owner_username : string prop option; [@option]
  support_state : bool prop option; [@option]
  token_endpoint : string prop option; [@option]
  timeouts : timeouts option;
  token_body_parameter : token_body_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_authorization_server) -> ()

let yojson_of_azurerm_api_management_authorization_server =
  (function
   | {
       api_management_name = v_api_management_name;
       authorization_endpoint = v_authorization_endpoint;
       authorization_methods = v_authorization_methods;
       bearer_token_sending_methods = v_bearer_token_sending_methods;
       client_authentication_method = v_client_authentication_method;
       client_id = v_client_id;
       client_registration_endpoint = v_client_registration_endpoint;
       client_secret = v_client_secret;
       default_scope = v_default_scope;
       description = v_description;
       display_name = v_display_name;
       grant_types = v_grant_types;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       resource_owner_password = v_resource_owner_password;
       resource_owner_username = v_resource_owner_username;
       support_state = v_support_state;
       token_endpoint = v_token_endpoint;
       timeouts = v_timeouts;
       token_body_parameter = v_token_body_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_token_body_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_token_body_parameter)
               v_token_body_parameter
           in
           let bnd = "token_body_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_token_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_owner_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_owner_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_owner_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_owner_password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         if Stdlib.( = ) [] v_grant_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_grant_types
           in
           let bnd = "grant_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
         match v_default_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_registration_endpoint
         in
         ("client_registration_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         match v_client_authentication_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_authentication_method", arg in
             bnd :: bnds
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
       let bnds =
         if Stdlib.( = ) [] v_authorization_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_authorization_methods
           in
           let bnd = "authorization_methods", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_endpoint
         in
         ("authorization_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_authorization_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_authorization_server

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let token_body_parameter ~name ~value () : token_body_parameter =
  { name; value }

let azurerm_api_management_authorization_server
    ?bearer_token_sending_methods ?client_authentication_method
    ?client_secret ?default_scope ?description ?id
    ?resource_owner_password ?resource_owner_username ?support_state
    ?token_endpoint ?timeouts ?(token_body_parameter = [])
    ~api_management_name ~authorization_endpoint
    ~authorization_methods ~client_id ~client_registration_endpoint
    ~display_name ~grant_types ~name ~resource_group_name () :
    azurerm_api_management_authorization_server =
  {
    api_management_name;
    authorization_endpoint;
    authorization_methods;
    bearer_token_sending_methods;
    client_authentication_method;
    client_id;
    client_registration_endpoint;
    client_secret;
    default_scope;
    description;
    display_name;
    grant_types;
    id;
    name;
    resource_group_name;
    resource_owner_password;
    resource_owner_username;
    support_state;
    token_endpoint;
    timeouts;
    token_body_parameter;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  authorization_endpoint : string prop;
  authorization_methods : string list prop;
  bearer_token_sending_methods : string list prop;
  client_authentication_method : string list prop;
  client_id : string prop;
  client_registration_endpoint : string prop;
  client_secret : string prop;
  default_scope : string prop;
  description : string prop;
  display_name : string prop;
  grant_types : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_owner_password : string prop;
  resource_owner_username : string prop;
  support_state : bool prop;
  token_endpoint : string prop;
}

let make ?bearer_token_sending_methods ?client_authentication_method
    ?client_secret ?default_scope ?description ?id
    ?resource_owner_password ?resource_owner_username ?support_state
    ?token_endpoint ?timeouts ?(token_body_parameter = [])
    ~api_management_name ~authorization_endpoint
    ~authorization_methods ~client_id ~client_registration_endpoint
    ~display_name ~grant_types ~name ~resource_group_name __id =
  let __type = "azurerm_api_management_authorization_server" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       authorization_endpoint =
         Prop.computed __type __id "authorization_endpoint";
       authorization_methods =
         Prop.computed __type __id "authorization_methods";
       bearer_token_sending_methods =
         Prop.computed __type __id "bearer_token_sending_methods";
       client_authentication_method =
         Prop.computed __type __id "client_authentication_method";
       client_id = Prop.computed __type __id "client_id";
       client_registration_endpoint =
         Prop.computed __type __id "client_registration_endpoint";
       client_secret = Prop.computed __type __id "client_secret";
       default_scope = Prop.computed __type __id "default_scope";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       grant_types = Prop.computed __type __id "grant_types";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_owner_password =
         Prop.computed __type __id "resource_owner_password";
       resource_owner_username =
         Prop.computed __type __id "resource_owner_username";
       support_state = Prop.computed __type __id "support_state";
       token_endpoint = Prop.computed __type __id "token_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_authorization_server
        (azurerm_api_management_authorization_server
           ?bearer_token_sending_methods
           ?client_authentication_method ?client_secret
           ?default_scope ?description ?id ?resource_owner_password
           ?resource_owner_username ?support_state ?token_endpoint
           ?timeouts ~token_body_parameter ~api_management_name
           ~authorization_endpoint ~authorization_methods ~client_id
           ~client_registration_endpoint ~display_name ~grant_types
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?bearer_token_sending_methods
    ?client_authentication_method ?client_secret ?default_scope
    ?description ?id ?resource_owner_password
    ?resource_owner_username ?support_state ?token_endpoint ?timeouts
    ?(token_body_parameter = []) ~api_management_name
    ~authorization_endpoint ~authorization_methods ~client_id
    ~client_registration_endpoint ~display_name ~grant_types ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?bearer_token_sending_methods ?client_authentication_method
      ?client_secret ?default_scope ?description ?id
      ?resource_owner_password ?resource_owner_username
      ?support_state ?token_endpoint ?timeouts ~token_body_parameter
      ~api_management_name ~authorization_endpoint
      ~authorization_methods ~client_id ~client_registration_endpoint
      ~display_name ~grant_types ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
