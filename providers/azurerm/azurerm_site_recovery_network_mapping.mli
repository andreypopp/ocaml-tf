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

type azurerm_site_recovery_network_mapping

val azurerm_site_recovery_network_mapping :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_network_id:string prop ->
  source_recovery_fabric_name:string prop ->
  target_network_id:string prop ->
  target_recovery_fabric_name:string prop ->
  unit ->
  azurerm_site_recovery_network_mapping

val yojson_of_azurerm_site_recovery_network_mapping :
  azurerm_site_recovery_network_mapping -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_network_id:string prop ->
  source_recovery_fabric_name:string prop ->
  target_network_id:string prop ->
  target_recovery_fabric_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_network_id:string prop ->
  source_recovery_fabric_name:string prop ->
  target_network_id:string prop ->
  target_recovery_fabric_name:string prop ->
  string ->
  t Tf_core.resource
