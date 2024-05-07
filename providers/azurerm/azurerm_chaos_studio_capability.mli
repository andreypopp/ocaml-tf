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

type azurerm_chaos_studio_capability

val azurerm_chaos_studio_capability :
  ?id:string prop ->
  ?timeouts:timeouts ->
  capability_type:string prop ->
  chaos_studio_target_id:string prop ->
  unit ->
  azurerm_chaos_studio_capability

val yojson_of_azurerm_chaos_studio_capability :
  azurerm_chaos_studio_capability -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  capability_type:string prop ->
  chaos_studio_target_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  capability_type:string prop ->
  chaos_studio_target_id:string prop ->
  string ->
  t Tf_core.resource
