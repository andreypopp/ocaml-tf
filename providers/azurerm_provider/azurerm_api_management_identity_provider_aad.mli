(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_aad__timeouts
type azurerm_api_management_identity_provider_aad

val azurerm_api_management_identity_provider_aad :
  ?id:string ->
  ?signin_tenant:string ->
  ?timeouts:azurerm_api_management_identity_provider_aad__timeouts ->
  allowed_tenants:string list ->
  api_management_name:string ->
  client_id:string ->
  client_secret:string ->
  resource_group_name:string ->
  string ->
  unit
