(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_source_control_slot__github_action_configuration__code_configuration

type azurerm_app_service_source_control_slot__github_action_configuration__container_configuration

type azurerm_app_service_source_control_slot__github_action_configuration

type azurerm_app_service_source_control_slot__timeouts
type azurerm_app_service_source_control_slot

val azurerm_app_service_source_control_slot :
  ?branch:string prop ->
  ?id:string prop ->
  ?repo_url:string prop ->
  ?rollback_enabled:bool prop ->
  ?use_local_git:bool prop ->
  ?use_manual_integration:bool prop ->
  ?use_mercurial:bool prop ->
  ?timeouts:azurerm_app_service_source_control_slot__timeouts ->
  slot_id:string prop ->
  github_action_configuration:
    azurerm_app_service_source_control_slot__github_action_configuration
    list ->
  string ->
  unit
