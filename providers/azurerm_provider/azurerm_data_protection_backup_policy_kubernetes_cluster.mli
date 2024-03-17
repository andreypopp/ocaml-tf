(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule__life_cycle

type azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__criteria

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule__life_cycle

type azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule

type azurerm_data_protection_backup_policy_kubernetes_cluster__timeouts

type azurerm_data_protection_backup_policy_kubernetes_cluster

val azurerm_data_protection_backup_policy_kubernetes_cluster :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:
    azurerm_data_protection_backup_policy_kubernetes_cluster__timeouts ->
  backup_repeating_time_intervals:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  vault_name:string prop ->
  default_retention_rule:
    azurerm_data_protection_backup_policy_kubernetes_cluster__default_retention_rule
    list ->
  retention_rule:
    azurerm_data_protection_backup_policy_kubernetes_cluster__retention_rule
    list ->
  string ->
  unit
