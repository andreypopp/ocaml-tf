(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_facebook__timeouts
type azurerm_api_management_identity_provider_facebook

val azurerm_api_management_identity_provider_facebook :
  ?id:string prop ->
  ?timeouts:
    azurerm_api_management_identity_provider_facebook__timeouts ->
  api_management_name:string prop ->
  app_id:string prop ->
  app_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
