(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_protection_container_mapping__automatic_update

type azurerm_site_recovery_protection_container_mapping__timeouts
type azurerm_site_recovery_protection_container_mapping

val azurerm_site_recovery_protection_container_mapping :
  ?timeouts:
    azurerm_site_recovery_protection_container_mapping__timeouts ->
  name:string ->
  recovery_fabric_name:string ->
  recovery_replication_policy_id:string ->
  recovery_source_protection_container_name:string ->
  recovery_target_protection_container_id:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  automatic_update:
    azurerm_site_recovery_protection_container_mapping__automatic_update
    list ->
  string ->
  unit
