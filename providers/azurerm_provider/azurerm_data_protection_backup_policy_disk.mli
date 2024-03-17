(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_policy_disk__retention_rule__criteria

type azurerm_data_protection_backup_policy_disk__retention_rule
type azurerm_data_protection_backup_policy_disk__timeouts
type azurerm_data_protection_backup_policy_disk

val azurerm_data_protection_backup_policy_disk :
  ?id:string prop ->
  ?time_zone:string prop ->
  ?timeouts:azurerm_data_protection_backup_policy_disk__timeouts ->
  backup_repeating_time_intervals:string prop list ->
  default_retention_duration:string prop ->
  name:string prop ->
  vault_id:string prop ->
  retention_rule:
    azurerm_data_protection_backup_policy_disk__retention_rule list ->
  string ->
  unit
