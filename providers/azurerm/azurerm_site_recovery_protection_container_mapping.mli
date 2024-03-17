(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_protection_container_mapping__automatic_update

type azurerm_site_recovery_protection_container_mapping__timeouts
type azurerm_site_recovery_protection_container_mapping

type t = private {
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

val azurerm_site_recovery_protection_container_mapping :
  ?id:string prop ->
  ?timeouts:
    azurerm_site_recovery_protection_container_mapping__timeouts ->
  name:string prop ->
  recovery_fabric_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_source_protection_container_name:string prop ->
  recovery_target_protection_container_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  automatic_update:
    azurerm_site_recovery_protection_container_mapping__automatic_update
    list ->
  string ->
  t
