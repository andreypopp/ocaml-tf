(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_hyperv_network_mapping__timeouts
type azurerm_site_recovery_hyperv_network_mapping

val azurerm_site_recovery_hyperv_network_mapping :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_hyperv_network_mapping__timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_network_name:string prop ->
  source_system_center_virtual_machine_manager_name:string prop ->
  target_network_id:string prop ->
  string ->
  unit
