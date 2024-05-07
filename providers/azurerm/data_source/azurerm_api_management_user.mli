(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_api_management_user

val azurerm_api_management_user :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  unit ->
  azurerm_api_management_user

val yojson_of_azurerm_api_management_user :
  azurerm_api_management_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  email : string prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  note : string prop;
  resource_group_name : string prop;
  state : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
