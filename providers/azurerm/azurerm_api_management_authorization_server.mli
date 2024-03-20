(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type token_body_parameter

val token_body_parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  token_body_parameter

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
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  authorization_endpoint:string prop ->
  authorization_methods:string prop list ->
  client_id:string prop ->
  client_registration_endpoint:string prop ->
  display_name:string prop ->
  grant_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  token_body_parameter:token_body_parameter list ->
  unit ->
  azurerm_api_management_authorization_server

val yojson_of_azurerm_api_management_authorization_server :
  azurerm_api_management_authorization_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  authorization_endpoint:string prop ->
  authorization_methods:string prop list ->
  client_id:string prop ->
  client_registration_endpoint:string prop ->
  display_name:string prop ->
  grant_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  token_body_parameter:token_body_parameter list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  authorization_endpoint:string prop ->
  authorization_methods:string prop list ->
  client_id:string prop ->
  client_registration_endpoint:string prop ->
  display_name:string prop ->
  grant_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  token_body_parameter:token_body_parameter list ->
  string ->
  t Tf_core.resource
