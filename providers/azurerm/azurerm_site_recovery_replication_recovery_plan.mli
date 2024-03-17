(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_replication_recovery_plan__azure_to_azure_settings

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__post_action

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group__pre_action

type azurerm_site_recovery_replication_recovery_plan__boot_recovery_group

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__post_action

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group__pre_action

type azurerm_site_recovery_replication_recovery_plan__failover_recovery_group

type azurerm_site_recovery_replication_recovery_plan__recovery_group__post_action

type azurerm_site_recovery_replication_recovery_plan__recovery_group__pre_action

type azurerm_site_recovery_replication_recovery_plan__recovery_group

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__post_action

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group__pre_action

type azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group

type azurerm_site_recovery_replication_recovery_plan__timeouts
type azurerm_site_recovery_replication_recovery_plan

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

val azurerm_site_recovery_replication_recovery_plan :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_replication_recovery_plan__timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_recovery_fabric_id:string prop ->
  target_recovery_fabric_id:string prop ->
  azure_to_azure_settings:
    azurerm_site_recovery_replication_recovery_plan__azure_to_azure_settings
    list ->
  boot_recovery_group:
    azurerm_site_recovery_replication_recovery_plan__boot_recovery_group
    list ->
  failover_recovery_group:
    azurerm_site_recovery_replication_recovery_plan__failover_recovery_group
    list ->
  recovery_group:
    azurerm_site_recovery_replication_recovery_plan__recovery_group
    list ->
  shutdown_recovery_group:
    azurerm_site_recovery_replication_recovery_plan__shutdown_recovery_group
    list ->
  string ->
  t
