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

type azurerm_network_manager_scope_connection

val azurerm_network_manager_scope_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  target_scope_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_network_manager_scope_connection

val yojson_of_azurerm_network_manager_scope_connection :
  azurerm_network_manager_scope_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
  target_scope_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  target_scope_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  target_scope_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
