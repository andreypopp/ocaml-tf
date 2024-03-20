(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_chaos_studio_target

val azurerm_chaos_studio_target :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  target_resource_id:string prop ->
  target_type:string prop ->
  unit ->
  azurerm_chaos_studio_target

val yojson_of_azurerm_chaos_studio_target :
  azurerm_chaos_studio_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  target_resource_id : string prop;
  target_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  target_resource_id:string prop ->
  target_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  target_resource_id:string prop ->
  target_type:string prop ->
  string ->
  t Tf_core.resource
