(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_replication_policy__timeouts
type azurerm_site_recovery_replication_policy

val azurerm_site_recovery_replication_policy :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_replication_policy__timeouts ->
  application_consistent_snapshot_frequency_in_minutes:float prop ->
  name:string prop ->
  recovery_point_retention_in_minutes:float prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
