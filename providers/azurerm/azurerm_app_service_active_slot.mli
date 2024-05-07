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

type azurerm_app_service_active_slot

val azurerm_app_service_active_slot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_slot_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_active_slot

val yojson_of_azurerm_app_service_active_slot :
  azurerm_app_service_active_slot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_name : string prop;
  app_service_slot_name : string prop;
  id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_slot_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_slot_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
