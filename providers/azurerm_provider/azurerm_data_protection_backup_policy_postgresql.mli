(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_policy_postgresql__retention_rule__criteria

type azurerm_data_protection_backup_policy_postgresql__retention_rule
type azurerm_data_protection_backup_policy_postgresql__timeouts
type azurerm_data_protection_backup_policy_postgresql

val azurerm_data_protection_backup_policy_postgresql :
  ?time_zone:string ->
  ?timeouts:
    azurerm_data_protection_backup_policy_postgresql__timeouts ->
  backup_repeating_time_intervals:string list ->
  default_retention_duration:string ->
  name:string ->
  resource_group_name:string ->
  vault_name:string ->
  retention_rule:
    azurerm_data_protection_backup_policy_postgresql__retention_rule
    list ->
  string ->
  unit
