(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_task__agent_setting
type azurerm_container_registry_task__base_image_trigger
type azurerm_container_registry_task__docker_step
type azurerm_container_registry_task__encoded_step
type azurerm_container_registry_task__file_step
type azurerm_container_registry_task__identity
type azurerm_container_registry_task__platform
type azurerm_container_registry_task__registry_credential__custom
type azurerm_container_registry_task__registry_credential__source
type azurerm_container_registry_task__registry_credential
type azurerm_container_registry_task__source_trigger__authentication
type azurerm_container_registry_task__source_trigger
type azurerm_container_registry_task__timeouts
type azurerm_container_registry_task__timer_trigger
type azurerm_container_registry_task

val azurerm_container_registry_task :
  ?agent_pool_name:string ->
  ?enabled:bool ->
  ?id:string ->
  ?is_system_task:bool ->
  ?log_template:string ->
  ?tags:(string * string) list ->
  ?timeout_in_seconds:float ->
  ?timeouts:azurerm_container_registry_task__timeouts ->
  container_registry_id:string ->
  name:string ->
  agent_setting:azurerm_container_registry_task__agent_setting list ->
  base_image_trigger:
    azurerm_container_registry_task__base_image_trigger list ->
  docker_step:azurerm_container_registry_task__docker_step list ->
  encoded_step:azurerm_container_registry_task__encoded_step list ->
  file_step:azurerm_container_registry_task__file_step list ->
  identity:azurerm_container_registry_task__identity list ->
  platform:azurerm_container_registry_task__platform list ->
  registry_credential:
    azurerm_container_registry_task__registry_credential list ->
  source_trigger:azurerm_container_registry_task__source_trigger list ->
  timer_trigger:azurerm_container_registry_task__timer_trigger list ->
  string ->
  unit
