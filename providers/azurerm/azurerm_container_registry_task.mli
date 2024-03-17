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

type t = private {
  agent_pool_name : string prop;
  container_registry_id : string prop;
  enabled : bool prop;
  id : string prop;
  is_system_task : bool prop;
  log_template : string prop;
  name : string prop;
  tags : (string * string) list prop;
  timeout_in_seconds : float prop;
}

val azurerm_container_registry_task :
  ?agent_pool_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_system_task:bool prop ->
  ?log_template:string prop ->
  ?tags:(string * string prop) list ->
  ?timeout_in_seconds:float prop ->
  ?timeouts:azurerm_container_registry_task__timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
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
  t
