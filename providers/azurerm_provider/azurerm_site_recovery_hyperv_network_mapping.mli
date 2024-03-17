(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_hyperv_network_mapping__timeouts
type azurerm_site_recovery_hyperv_network_mapping

val azurerm_site_recovery_hyperv_network_mapping :
  ?id:string ->
  ?timeouts:azurerm_site_recovery_hyperv_network_mapping__timeouts ->
  name:string ->
  recovery_vault_id:string ->
  source_network_name:string ->
  source_system_center_virtual_machine_manager_name:string ->
  target_network_id:string ->
  string ->
  unit
