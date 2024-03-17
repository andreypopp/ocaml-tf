(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_authorization_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server__timeouts *)

type azurerm_api_management_authorization_server__token_body_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server__token_body_parameter *)

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
  timeouts :
    azurerm_api_management_authorization_server__timeouts option;
  token_body_parameter :
    azurerm_api_management_authorization_server__token_body_parameter
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server *)

let azurerm_api_management_authorization_server
    ?bearer_token_sending_methods ?client_authentication_method
    ?client_secret ?default_scope ?description ?id
    ?resource_owner_password ?resource_owner_username ?support_state
    ?token_endpoint ?timeouts ~api_management_name
    ~authorization_endpoint ~authorization_methods ~client_id
    ~client_registration_endpoint ~display_name ~grant_types ~name
    ~resource_group_name ~token_body_parameter __resource_id =
  let __resource_type =
    "azurerm_api_management_authorization_server"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_authorization_server __resource);
  ()
