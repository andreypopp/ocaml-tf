(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_policy_vm_workload__protection_policy__backup

type azurerm_backup_policy_vm_workload__protection_policy__retention_daily

type azurerm_backup_policy_vm_workload__protection_policy__retention_monthly

type azurerm_backup_policy_vm_workload__protection_policy__retention_weekly

type azurerm_backup_policy_vm_workload__protection_policy__retention_yearly

type azurerm_backup_policy_vm_workload__protection_policy__simple_retention

type azurerm_backup_policy_vm_workload__protection_policy
type azurerm_backup_policy_vm_workload__settings
type azurerm_backup_policy_vm_workload__timeouts
type azurerm_backup_policy_vm_workload

val azurerm_backup_policy_vm_workload :
  ?id:string prop ->
  ?timeouts:azurerm_backup_policy_vm_workload__timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  workload_type:string prop ->
  protection_policy:
    azurerm_backup_policy_vm_workload__protection_policy list ->
  settings:azurerm_backup_policy_vm_workload__settings list ->
  string ->
  unit
