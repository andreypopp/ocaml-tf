(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_twitter__timeouts
type azurerm_api_management_identity_provider_twitter

val azurerm_api_management_identity_provider_twitter :
  ?id:string prop ->
  ?timeouts:
    azurerm_api_management_identity_provider_twitter__timeouts ->
  api_key:string prop ->
  api_management_name:string prop ->
  api_secret_key:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
