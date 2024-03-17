(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_policy_vm__backup
type azurerm_backup_policy_vm__instant_restore_resource_group
type azurerm_backup_policy_vm__retention_daily
type azurerm_backup_policy_vm__retention_monthly
type azurerm_backup_policy_vm__retention_weekly
type azurerm_backup_policy_vm__retention_yearly
type azurerm_backup_policy_vm__timeouts
type azurerm_backup_policy_vm

val azurerm_backup_policy_vm :
  ?id:string ->
  ?instant_restore_retention_days:float ->
  ?policy_type:string ->
  ?timezone:string ->
  ?timeouts:azurerm_backup_policy_vm__timeouts ->
  name:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  backup:azurerm_backup_policy_vm__backup list ->
  instant_restore_resource_group:
    azurerm_backup_policy_vm__instant_restore_resource_group list ->
  retention_daily:azurerm_backup_policy_vm__retention_daily list ->
  retention_monthly:azurerm_backup_policy_vm__retention_monthly list ->
  retention_weekly:azurerm_backup_policy_vm__retention_weekly list ->
  retention_yearly:azurerm_backup_policy_vm__retention_yearly list ->
  string ->
  unit
