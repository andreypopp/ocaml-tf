(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_aad__timeouts
type azurerm_api_management_identity_provider_aad

val azurerm_api_management_identity_provider_aad :
  ?id:string prop ->
  ?signin_tenant:string prop ->
  ?timeouts:azurerm_api_management_identity_provider_aad__timeouts ->
  allowed_tenants:string prop list ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
