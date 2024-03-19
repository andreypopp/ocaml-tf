(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_registry_scope_map

val azurerm_container_registry_scope_map :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  actions:string prop list ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_registry_scope_map

val yojson_of_azurerm_container_registry_scope_map :
  azurerm_container_registry_scope_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  actions : string list prop;
  container_registry_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  actions:string prop list ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
