(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_authorization_server__timeouts
type azurerm_api_management_authorization_server__token_body_parameter
type azurerm_api_management_authorization_server

val azurerm_api_management_authorization_server :
  ?bearer_token_sending_methods:string prop list ->
  ?client_authentication_method:string prop list ->
  ?client_secret:string prop ->
  ?default_scope:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?resource_owner_password:string prop ->
  ?resource_owner_username:string prop ->
  ?support_state:bool prop ->
  ?token_endpoint:string prop ->
  ?timeouts:azurerm_api_management_authorization_server__timeouts ->
  api_management_name:string prop ->
  authorization_endpoint:string prop ->
  authorization_methods:string prop list ->
  client_id:string prop ->
  client_registration_endpoint:string prop ->
  display_name:string prop ->
  grant_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  token_body_parameter:
    azurerm_api_management_authorization_server__token_body_parameter
    list ->
  string ->
  unit
