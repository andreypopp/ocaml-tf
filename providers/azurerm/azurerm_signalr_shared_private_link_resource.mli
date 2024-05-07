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

type azurerm_signalr_shared_private_link_resource

val azurerm_signalr_shared_private_link_resource :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  signalr_service_id:string prop ->
  sub_resource_name:string prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_signalr_shared_private_link_resource

val yojson_of_azurerm_signalr_shared_private_link_resource :
  azurerm_signalr_shared_private_link_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  request_message : string prop;
  signalr_service_id : string prop;
  status : string prop;
  sub_resource_name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  signalr_service_id:string prop ->
  sub_resource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  signalr_service_id:string prop ->
  sub_resource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t Tf_core.resource
