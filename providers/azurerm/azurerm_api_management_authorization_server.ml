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

type token_body_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** token_body_parameter *)

type azurerm_api_management_authorization_server = {
  api_management_name : string prop;  (** api_management_name *)
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  authorization_methods : string prop list;
      (** authorization_methods *)
  bearer_token_sending_methods : string prop list option; [@option]
      (** bearer_token_sending_methods *)
  client_authentication_method : string prop list option; [@option]
      (** client_authentication_method *)
  client_id : string prop;  (** client_id *)
  client_registration_endpoint : string prop;
      (** client_registration_endpoint *)
  client_secret : string prop option; [@option]  (** client_secret *)
  default_scope : string prop option; [@option]  (** default_scope *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  grant_types : string prop list;  (** grant_types *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  resource_owner_password : string prop option; [@option]
      (** resource_owner_password *)
  resource_owner_username : string prop option; [@option]
      (** resource_owner_username *)
  support_state : bool prop option; [@option]  (** support_state *)
  token_endpoint : string prop option; [@option]
      (** token_endpoint *)
  timeouts : timeouts option;
  token_body_parameter : token_body_parameter list;
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let token_body_parameter ~name ~value () : token_body_parameter =
  { name; value }

let azurerm_api_management_authorization_server
    ?bearer_token_sending_methods ?client_authentication_method
    ?client_secret ?default_scope ?description ?id
    ?resource_owner_password ?resource_owner_username ?support_state
    ?token_endpoint ?timeouts ~api_management_name
    ~authorization_endpoint ~authorization_methods ~client_id
    ~client_registration_endpoint ~display_name ~grant_types ~name
    ~resource_group_name ~token_body_parameter () :
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
    ?token_endpoint ?timeouts ~api_management_name
    ~authorization_endpoint ~authorization_methods ~client_id
    ~client_registration_endpoint ~display_name ~grant_types ~name
    ~resource_group_name ~token_body_parameter __id =
  let __type = "azurerm_api_management_authorization_server" in
  let __attrs =
    ({
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
           ?timeouts ~api_management_name ~authorization_endpoint
           ~authorization_methods ~client_id
           ~client_registration_endpoint ~display_name ~grant_types
           ~name ~resource_group_name ~token_body_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?bearer_token_sending_methods
    ?client_authentication_method ?client_secret ?default_scope
    ?description ?id ?resource_owner_password
    ?resource_owner_username ?support_state ?token_endpoint ?timeouts
    ~api_management_name ~authorization_endpoint
    ~authorization_methods ~client_id ~client_registration_endpoint
    ~display_name ~grant_types ~name ~resource_group_name
    ~token_body_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?bearer_token_sending_methods ?client_authentication_method
      ?client_secret ?default_scope ?description ?id
      ?resource_owner_password ?resource_owner_username
      ?support_state ?token_endpoint ?timeouts ~api_management_name
      ~authorization_endpoint ~authorization_methods ~client_id
      ~client_registration_endpoint ~display_name ~grant_types ~name
      ~resource_group_name ~token_body_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
