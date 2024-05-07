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

type azurerm_backup_protected_vm

val azurerm_backup_protected_vm :
  ?backup_policy_id:string prop ->
  ?exclude_disk_luns:float prop list ->
  ?id:string prop ->
  ?include_disk_luns:float prop list ->
  ?protection_state:string prop ->
  ?source_vm_id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_backup_protected_vm

val yojson_of_azurerm_backup_protected_vm :
  azurerm_backup_protected_vm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_policy_id : string prop;
  exclude_disk_luns : float list prop;
  id : string prop;
  include_disk_luns : float list prop;
  protection_state : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_vm_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backup_policy_id:string prop ->
  ?exclude_disk_luns:float prop list ->
  ?id:string prop ->
  ?include_disk_luns:float prop list ->
  ?protection_state:string prop ->
  ?source_vm_id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?backup_policy_id:string prop ->
  ?exclude_disk_luns:float prop list ->
  ?id:string prop ->
  ?include_disk_luns:float prop list ->
  ?protection_state:string prop ->
  ?source_vm_id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
