(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy__timeouts
type azurerm_site_recovery_hyperv_replication_policy

type t = private {
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
}

val azurerm_site_recovery_hyperv_replication_policy :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_hyperv_replication_policy__timeouts ->
  application_consistent_snapshot_frequency_in_hours:float prop ->
  name:string prop ->
  recovery_point_retention_in_hours:float prop ->
  recovery_vault_id:string prop ->
  replication_interval_in_seconds:float prop ->
  string ->
  t
