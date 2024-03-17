(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_openid_connect_provider__timeouts
type azurerm_api_management_openid_connect_provider

type t = private {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_endpoint : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_api_management_openid_connect_provider :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_api_management_openid_connect_provider__timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  display_name:string prop ->
  metadata_endpoint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
