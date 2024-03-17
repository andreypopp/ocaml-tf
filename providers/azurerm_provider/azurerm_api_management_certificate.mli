(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_certificate__timeouts
type azurerm_api_management_certificate

val azurerm_api_management_certificate :
  ?data:string ->
  ?key_vault_identity_client_id:string ->
  ?key_vault_secret_id:string ->
  ?password:string ->
  ?timeouts:azurerm_api_management_certificate__timeouts ->
  api_management_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
