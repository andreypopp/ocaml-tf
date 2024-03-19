(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type azure_to_azure_settings

val azure_to_azure_settings :
  ?primary_edge_zone:string prop ->
  ?primary_zone:string prop ->
  ?recovery_edge_zone:string prop ->
  ?recovery_zone:string prop ->
  unit ->
  azure_to_azure_settings

type boot_recovery_group__post_action

val boot_recovery_group__post_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  boot_recovery_group__post_action

type boot_recovery_group__pre_action

val boot_recovery_group__pre_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  boot_recovery_group__pre_action

type boot_recovery_group

val boot_recovery_group :
  ?replicated_protected_items:string prop list ->
  post_action:boot_recovery_group__post_action list ->
  pre_action:boot_recovery_group__pre_action list ->
  unit ->
  boot_recovery_group

type failover_recovery_group__post_action

val failover_recovery_group__post_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  failover_recovery_group__post_action

type failover_recovery_group__pre_action

val failover_recovery_group__pre_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  failover_recovery_group__pre_action

type failover_recovery_group

val failover_recovery_group :
  post_action:failover_recovery_group__post_action list ->
  pre_action:failover_recovery_group__pre_action list ->
  unit ->
  failover_recovery_group

type recovery_group__post_action

val recovery_group__post_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  recovery_group__post_action

type recovery_group__pre_action

val recovery_group__pre_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  recovery_group__pre_action

type recovery_group

val recovery_group :
  ?replicated_protected_items:string prop list ->
  type_:string prop ->
  post_action:recovery_group__post_action list ->
  pre_action:recovery_group__pre_action list ->
  unit ->
  recovery_group

type shutdown_recovery_group__post_action

val shutdown_recovery_group__post_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  shutdown_recovery_group__post_action

type shutdown_recovery_group__pre_action

val shutdown_recovery_group__pre_action :
  ?fabric_location:string prop ->
  ?manual_action_instruction:string prop ->
  ?runbook_id:string prop ->
  ?script_path:string prop ->
  fail_over_directions:string prop list ->
  fail_over_types:string prop list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  shutdown_recovery_group__pre_action

type shutdown_recovery_group

val shutdown_recovery_group :
  post_action:shutdown_recovery_group__post_action list ->
  pre_action:shutdown_recovery_group__pre_action list ->
  unit ->
  shutdown_recovery_group

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_replication_recovery_plan

val azurerm_site_recovery_replication_recovery_plan :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_recovery_fabric_id:string prop ->
  target_recovery_fabric_id:string prop ->
  azure_to_azure_settings:azure_to_azure_settings list ->
  boot_recovery_group:boot_recovery_group list ->
  failover_recovery_group:failover_recovery_group list ->
  recovery_group:recovery_group list ->
  shutdown_recovery_group:shutdown_recovery_group list ->
  unit ->
  azurerm_site_recovery_replication_recovery_plan

val yojson_of_azurerm_site_recovery_replication_recovery_plan :
  azurerm_site_recovery_replication_recovery_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
  source_recovery_fabric_id : string prop;
  target_recovery_fabric_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  source_recovery_fabric_id:string prop ->
  target_recovery_fabric_id:string prop ->
  azure_to_azure_settings:azure_to_azure_settings list ->
  boot_recovery_group:boot_recovery_group list ->
  failover_recovery_group:failover_recovery_group list ->
  recovery_group:recovery_group list ->
  shutdown_recovery_group:shutdown_recovery_group list ->
  string ->
  t
