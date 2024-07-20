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

type azurerm_container_registry_cache_rule

val azurerm_container_registry_cache_rule :
  ?credential_set_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  source_repo:string prop ->
  target_repo:string prop ->
  unit ->
  azurerm_container_registry_cache_rule

val yojson_of_azurerm_container_registry_cache_rule :
  azurerm_container_registry_cache_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_registry_id : string prop;
  credential_set_id : string prop;
  id : string prop;
  name : string prop;
  source_repo : string prop;
  target_repo : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?credential_set_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  source_repo:string prop ->
  target_repo:string prop ->
  string ->
  t

val make :
  ?credential_set_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  source_repo:string prop ->
  target_repo:string prop ->
  string ->
  t Tf_core.resource
