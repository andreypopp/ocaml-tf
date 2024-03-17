(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_protected_vm__timeouts
type azurerm_backup_protected_vm

val azurerm_backup_protected_vm :
  ?backup_policy_id:string ->
  ?exclude_disk_luns:float list ->
  ?include_disk_luns:float list ->
  ?timeouts:azurerm_backup_protected_vm__timeouts ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  string ->
  unit
