(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_api_management_group_user

val azurerm_api_management_group_user :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  unit ->
  azurerm_api_management_group_user

val yojson_of_azurerm_api_management_group_user :
  azurerm_api_management_group_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  group_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  string ->
  t
