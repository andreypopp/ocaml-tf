(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_vmware_replication_policy__timeouts
type azurerm_site_recovery_vmware_replication_policy

val azurerm_site_recovery_vmware_replication_policy :
  ?timeouts:azurerm_site_recovery_vmware_replication_policy__timeouts ->
  application_consistent_snapshot_frequency_in_minutes:float ->
  name:string ->
  recovery_point_retention_in_minutes:float ->
  recovery_vault_id:string ->
  string ->
  unit
