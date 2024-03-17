(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_authorization_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server__timeouts *)

type azurerm_api_management_authorization_server__token_body_parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_authorization_server__token_body_parameter *)

type azurerm_api_management_authorization_server = {
  api_management_name : string;  (** api_management_name *)
  authorization_endpoint : string;  (** authorization_endpoint *)
  authorization_methods : string list;  (** authorization_methods *)
  bearer_token_sending_methods : string list option; [@option]
      (** bearer_token_sending_methods *)
  client_authentication_method : string list option; [@option]
      (** client_authentication_method *)
  client_id : string;  (** client_id *)
  client_registration_endpoint : string;
      (** client_registration_endpoint *)
  client_secret : string option; [@option]  (** client_secret *)
  default_scope : string option; [@option]  (** default_scope *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  grant_types : string list;  (** grant_types *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  resource_owner_password : string option; [@option]
      (** resource_owner_password *)
  resource_owner_username : string option; [@option]
      (** resource_owner_username *)
  support_state : bool option; [@option]  (** support_state *)
  token_endpoint : string option; [@option]  (** token_endpoint *)
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
    ?client_secret ?default_scope ?description
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
