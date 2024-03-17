(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_identity_provider_google__timeouts
type azurerm_api_management_identity_provider_google

type t = private {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
}

val azurerm_api_management_identity_provider_google :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_identity_provider_google__timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t
