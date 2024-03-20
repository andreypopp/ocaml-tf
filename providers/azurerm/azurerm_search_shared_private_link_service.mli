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

type azurerm_search_shared_private_link_service

val azurerm_search_shared_private_link_service :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  search_service_id:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_search_shared_private_link_service

val yojson_of_azurerm_search_shared_private_link_service :
  azurerm_search_shared_private_link_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  request_message : string prop;
  search_service_id : string prop;
  status : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  search_service_id:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  search_service_id:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t Tf_core.resource
