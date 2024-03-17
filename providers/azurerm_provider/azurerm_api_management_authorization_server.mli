(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_authorization_server__timeouts
type azurerm_api_management_authorization_server__token_body_parameter
type azurerm_api_management_authorization_server

val azurerm_api_management_authorization_server :
  ?bearer_token_sending_methods:string list ->
  ?client_authentication_method:string list ->
  ?client_secret:string ->
  ?default_scope:string ->
  ?description:string ->
  ?id:string ->
  ?resource_owner_password:string ->
  ?resource_owner_username:string ->
  ?support_state:bool ->
  ?token_endpoint:string ->
  ?timeouts:azurerm_api_management_authorization_server__timeouts ->
  api_management_name:string ->
  authorization_endpoint:string ->
  authorization_methods:string list ->
  client_id:string ->
  client_registration_endpoint:string ->
  display_name:string ->
  grant_types:string list ->
  name:string ->
  resource_group_name:string ->
  token_body_parameter:
    azurerm_api_management_authorization_server__token_body_parameter
    list ->
  string ->
  unit
