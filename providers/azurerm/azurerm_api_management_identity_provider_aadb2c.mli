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

type azurerm_api_management_identity_provider_aadb2c

val azurerm_api_management_identity_provider_aadb2c :
  ?client_library:string prop ->
  ?id:string prop ->
  ?password_reset_policy:string prop ->
  ?profile_editing_policy:string prop ->
  ?timeouts:timeouts ->
  allowed_tenant:string prop ->
  api_management_name:string prop ->
  authority:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  signin_policy:string prop ->
  signin_tenant:string prop ->
  signup_policy:string prop ->
  unit ->
  azurerm_api_management_identity_provider_aadb2c

val yojson_of_azurerm_api_management_identity_provider_aadb2c :
  azurerm_api_management_identity_provider_aadb2c -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_tenant : string prop;
  api_management_name : string prop;
  authority : string prop;
  client_id : string prop;
  client_library : string prop;
  client_secret : string prop;
  id : string prop;
  password_reset_policy : string prop;
  profile_editing_policy : string prop;
  resource_group_name : string prop;
  signin_policy : string prop;
  signin_tenant : string prop;
  signup_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_library:string prop ->
  ?id:string prop ->
  ?password_reset_policy:string prop ->
  ?profile_editing_policy:string prop ->
  ?timeouts:timeouts ->
  allowed_tenant:string prop ->
  api_management_name:string prop ->
  authority:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  signin_policy:string prop ->
  signin_tenant:string prop ->
  signup_policy:string prop ->
  string ->
  t

val make :
  ?client_library:string prop ->
  ?id:string prop ->
  ?password_reset_policy:string prop ->
  ?profile_editing_policy:string prop ->
  ?timeouts:timeouts ->
  allowed_tenant:string prop ->
  api_management_name:string prop ->
  authority:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  signin_policy:string prop ->
  signin_tenant:string prop ->
  signup_policy:string prop ->
  string ->
  t Tf_core.resource
