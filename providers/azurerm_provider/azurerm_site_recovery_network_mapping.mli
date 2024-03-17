(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_network_mapping__timeouts
type azurerm_site_recovery_network_mapping

val azurerm_site_recovery_network_mapping :
  ?id:string ->
  ?timeouts:azurerm_site_recovery_network_mapping__timeouts ->
  name:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  source_network_id:string ->
  source_recovery_fabric_name:string ->
  target_network_id:string ->
  target_recovery_fabric_name:string ->
  string ->
  unit
