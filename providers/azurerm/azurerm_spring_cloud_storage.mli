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

type azurerm_spring_cloud_storage

val azurerm_spring_cloud_storage :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  unit ->
  azurerm_spring_cloud_storage

val yojson_of_azurerm_spring_cloud_storage :
  azurerm_spring_cloud_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  string ->
  t Tf_core.resource
