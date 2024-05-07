(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_backup_policy_vm

val azurerm_backup_policy_vm :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_backup_policy_vm

val yojson_of_azurerm_backup_policy_vm :
  azurerm_backup_policy_vm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
