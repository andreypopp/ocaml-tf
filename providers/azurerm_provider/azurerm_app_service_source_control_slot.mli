(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_source_control_slot__github_action_configuration__code_configuration

type azurerm_app_service_source_control_slot__github_action_configuration__container_configuration

type azurerm_app_service_source_control_slot__github_action_configuration

type azurerm_app_service_source_control_slot__timeouts
type azurerm_app_service_source_control_slot

val azurerm_app_service_source_control_slot :
  ?rollback_enabled:bool ->
  ?use_local_git:bool ->
  ?use_manual_integration:bool ->
  ?use_mercurial:bool ->
  ?timeouts:azurerm_app_service_source_control_slot__timeouts ->
  slot_id:string ->
  github_action_configuration:
    azurerm_app_service_source_control_slot__github_action_configuration
    list ->
  string ->
  unit
