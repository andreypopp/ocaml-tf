(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_vault__identity
type azurerm_data_protection_backup_vault__timeouts
type azurerm_data_protection_backup_vault

val azurerm_data_protection_backup_vault :
  ?retention_duration_in_days:float ->
  ?soft_delete:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_data_protection_backup_vault__timeouts ->
  datastore_type:string ->
  location:string ->
  name:string ->
  redundancy:string ->
  resource_group_name:string ->
  identity:azurerm_data_protection_backup_vault__identity list ->
  string ->
  unit
