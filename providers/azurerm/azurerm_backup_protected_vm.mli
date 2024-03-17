(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_protected_vm__timeouts
type azurerm_backup_protected_vm

type t = private {
  backup_policy_id : string prop;
  exclude_disk_luns : float list prop;
  id : string prop;
  include_disk_luns : float list prop;
  protection_state : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_vm_id : string prop;
}

val azurerm_backup_protected_vm :
  ?backup_policy_id:string prop ->
  ?exclude_disk_luns:float prop list ->
  ?id:string prop ->
  ?include_disk_luns:float prop list ->
  ?protection_state:string prop ->
  ?source_vm_id:string prop ->
  ?timeouts:azurerm_backup_protected_vm__timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
