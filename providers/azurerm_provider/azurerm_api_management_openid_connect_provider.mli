(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_openid_connect_provider__timeouts
type azurerm_api_management_openid_connect_provider

val azurerm_api_management_openid_connect_provider :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_api_management_openid_connect_provider__timeouts ->
  api_management_name:string ->
  client_id:string ->
  client_secret:string ->
  display_name:string ->
  metadata_endpoint:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
