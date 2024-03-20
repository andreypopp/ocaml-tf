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

type azurerm_recovery_services_vault_resource_guard_association

val azurerm_recovery_services_vault_resource_guard_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_guard_id:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_recovery_services_vault_resource_guard_association

val yojson_of_azurerm_recovery_services_vault_resource_guard_association :
  azurerm_recovery_services_vault_resource_guard_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  resource_guard_id : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_guard_id:string prop ->
  vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_guard_id:string prop ->
  vault_id:string prop ->
  string ->
  t Tf_core.resource
