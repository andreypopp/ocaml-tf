(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_vmware_replication_policy

val azurerm_site_recovery_vmware_replication_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_consistent_snapshot_frequency_in_minutes:float prop ->
  name:string prop ->
  recovery_point_retention_in_minutes:float prop ->
  recovery_vault_id:string prop ->
  unit ->
  azurerm_site_recovery_vmware_replication_policy

val yojson_of_azurerm_site_recovery_vmware_replication_policy :
  azurerm_site_recovery_vmware_replication_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_consistent_snapshot_frequency_in_minutes : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_minutes : float prop;
  recovery_vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_consistent_snapshot_frequency_in_minutes:float prop ->
  name:string prop ->
  recovery_point_retention_in_minutes:float prop ->
  recovery_vault_id:string prop ->
  string ->
  t
