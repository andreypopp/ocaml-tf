(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type automatic_update

val automatic_update :
  ?authentication_type:string prop ->
  ?automation_account_id:string prop ->
  ?enabled:bool prop ->
  unit ->
  automatic_update

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_protection_container_mapping

val azurerm_site_recovery_protection_container_mapping :
  ?id:string prop ->
  ?automatic_update:automatic_update list ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_fabric_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_source_protection_container_name:string prop ->
  recovery_target_protection_container_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_site_recovery_protection_container_mapping

val yojson_of_azurerm_site_recovery_protection_container_mapping :
  azurerm_site_recovery_protection_container_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?automatic_update:automatic_update list ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_fabric_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_source_protection_container_name:string prop ->
  recovery_target_protection_container_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?automatic_update:automatic_update list ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_fabric_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_source_protection_container_name:string prop ->
  recovery_target_protection_container_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
