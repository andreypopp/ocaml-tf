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

type azurerm_network_manager_deployment

val azurerm_network_manager_deployment :
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_ids:string prop list ->
  location:string prop ->
  network_manager_id:string prop ->
  scope_access:string prop ->
  unit ->
  azurerm_network_manager_deployment

val yojson_of_azurerm_network_manager_deployment :
  azurerm_network_manager_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  configuration_ids : string list prop;
  id : string prop;
  location : string prop;
  network_manager_id : string prop;
  scope_access : string prop;
  triggers : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_ids:string prop list ->
  location:string prop ->
  network_manager_id:string prop ->
  scope_access:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_ids:string prop list ->
  location:string prop ->
  network_manager_id:string prop ->
  scope_access:string prop ->
  string ->
  t Tf_core.resource
