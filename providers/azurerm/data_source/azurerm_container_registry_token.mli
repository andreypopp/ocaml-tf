(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_registry_token

val azurerm_container_registry_token :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_registry_token

val yojson_of_azurerm_container_registry_token :
  azurerm_container_registry_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_registry_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_map_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
