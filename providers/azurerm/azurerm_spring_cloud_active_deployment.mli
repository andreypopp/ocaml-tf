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

type azurerm_spring_cloud_active_deployment

val azurerm_spring_cloud_active_deployment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  deployment_name:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_active_deployment

val yojson_of_azurerm_spring_cloud_active_deployment :
  azurerm_spring_cloud_active_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deployment_name : string prop;
  id : string prop;
  spring_cloud_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  deployment_name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  deployment_name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
