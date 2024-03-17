(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_policy_file_share__backup__hourly
type azurerm_backup_policy_file_share__backup
type azurerm_backup_policy_file_share__retention_daily
type azurerm_backup_policy_file_share__retention_monthly
type azurerm_backup_policy_file_share__retention_weekly
type azurerm_backup_policy_file_share__retention_yearly
type azurerm_backup_policy_file_share__timeouts
type azurerm_backup_policy_file_share

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

val azurerm_backup_policy_file_share :
  ?id:string prop ->
  ?timezone:string prop ->
  ?timeouts:azurerm_backup_policy_file_share__timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  backup:azurerm_backup_policy_file_share__backup list ->
  retention_daily:
    azurerm_backup_policy_file_share__retention_daily list ->
  retention_monthly:
    azurerm_backup_policy_file_share__retention_monthly list ->
  retention_weekly:
    azurerm_backup_policy_file_share__retention_weekly list ->
  retention_yearly:
    azurerm_backup_policy_file_share__retention_yearly list ->
  string ->
  t
