(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_aadb2c__timeouts
type azurerm_api_management_identity_provider_aadb2c

type t = private {
  allowed_tenant : string prop;
  api_management_name : string prop;
  authority : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  password_reset_policy : string prop;
  profile_editing_policy : string prop;
  resource_group_name : string prop;
  signin_policy : string prop;
  signin_tenant : string prop;
  signup_policy : string prop;
}

val azurerm_api_management_identity_provider_aadb2c :
  ?id:string prop ->
  ?password_reset_policy:string prop ->
  ?profile_editing_policy:string prop ->
  ?timeouts:azurerm_api_management_identity_provider_aadb2c__timeouts ->
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
