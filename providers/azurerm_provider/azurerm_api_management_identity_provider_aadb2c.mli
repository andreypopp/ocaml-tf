(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_aadb2c__timeouts
type azurerm_api_management_identity_provider_aadb2c

val azurerm_api_management_identity_provider_aadb2c :
  ?id:string ->
  ?password_reset_policy:string ->
  ?profile_editing_policy:string ->
  ?timeouts:azurerm_api_management_identity_provider_aadb2c__timeouts ->
  allowed_tenant:string ->
  api_management_name:string ->
  authority:string ->
  client_id:string ->
  client_secret:string ->
  resource_group_name:string ->
  signin_policy:string ->
  signin_tenant:string ->
  signup_policy:string ->
  string ->
  unit
