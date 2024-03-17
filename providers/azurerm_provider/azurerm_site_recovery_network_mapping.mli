(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_network_mapping__timeouts
type azurerm_site_recovery_network_mapping

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_network_id : string prop;
  source_recovery_fabric_name : string prop;
  target_network_id : string prop;
  target_recovery_fabric_name : string prop;
}

val azurerm_site_recovery_network_mapping :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_network_mapping__timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_network_id:string prop ->
  source_recovery_fabric_name:string prop ->
  target_network_id:string prop ->
  target_recovery_fabric_name:string prop ->
  string ->
  t
