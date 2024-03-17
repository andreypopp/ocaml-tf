(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy__timeouts
type azurerm_site_recovery_hyperv_replication_policy

val azurerm_site_recovery_hyperv_replication_policy :
  ?timeouts:azurerm_site_recovery_hyperv_replication_policy__timeouts ->
  application_consistent_snapshot_frequency_in_hours:float ->
  name:string ->
  recovery_point_retention_in_hours:float ->
  recovery_vault_id:string ->
  replication_interval_in_seconds:float ->
  string ->
  unit
