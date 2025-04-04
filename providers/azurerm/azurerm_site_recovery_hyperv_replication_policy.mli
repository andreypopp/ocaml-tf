(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_hyperv_replication_policy

val azurerm_site_recovery_hyperv_replication_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_consistent_snapshot_frequency_in_hours:float prop ->
  name:string prop ->
  recovery_point_retention_in_hours:float prop ->
  recovery_vault_id:string prop ->
  replication_interval_in_seconds:float prop ->
  unit ->
  azurerm_site_recovery_hyperv_replication_policy

val yojson_of_azurerm_site_recovery_hyperv_replication_policy :
  azurerm_site_recovery_hyperv_replication_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_consistent_snapshot_frequency_in_hours:float prop ->
  name:string prop ->
  recovery_point_retention_in_hours:float prop ->
  recovery_vault_id:string prop ->
  replication_interval_in_seconds:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_consistent_snapshot_frequency_in_hours:float prop ->
  name:string prop ->
  recovery_point_retention_in_hours:float prop ->
  recovery_vault_id:string prop ->
  replication_interval_in_seconds:float prop ->
  string ->
  t Tf_core.resource
