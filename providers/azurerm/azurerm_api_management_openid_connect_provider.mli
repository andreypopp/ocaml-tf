(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_openid_connect_provider

val azurerm_api_management_openid_connect_provider :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  display_name:string prop ->
  metadata_endpoint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_openid_connect_provider

val yojson_of_azurerm_api_management_openid_connect_provider :
  azurerm_api_management_openid_connect_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  display_name:string prop ->
  metadata_endpoint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  display_name:string prop ->
  metadata_endpoint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
