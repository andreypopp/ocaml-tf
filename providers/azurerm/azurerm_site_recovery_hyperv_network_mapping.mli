(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_hyperv_network_mapping

val azurerm_site_recovery_hyperv_network_mapping :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_network_name:string prop ->
  source_system_center_virtual_machine_manager_name:string prop ->
  target_network_id:string prop ->
  unit ->
  azurerm_site_recovery_hyperv_network_mapping

val yojson_of_azurerm_site_recovery_hyperv_network_mapping :
  azurerm_site_recovery_hyperv_network_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_network_name : string prop;
  source_system_center_virtual_machine_manager_name : string prop;
  target_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_network_name:string prop ->
  source_system_center_virtual_machine_manager_name:string prop ->
  target_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_network_name:string prop ->
  source_system_center_virtual_machine_manager_name:string prop ->
  target_network_id:string prop ->
  string ->
  t Tf_core.resource
