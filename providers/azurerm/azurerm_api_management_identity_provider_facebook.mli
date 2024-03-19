(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_identity_provider_facebook

val azurerm_api_management_identity_provider_facebook :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  app_id:string prop ->
  app_secret:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_identity_provider_facebook

val yojson_of_azurerm_api_management_identity_provider_facebook :
  azurerm_api_management_identity_provider_facebook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  app_id : string prop;
  app_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  app_id:string prop ->
  app_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t
