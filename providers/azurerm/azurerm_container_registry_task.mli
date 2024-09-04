(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type agent_setting

val agent_setting : cpu:float prop -> unit -> agent_setting

type base_image_trigger

val base_image_trigger :
  ?enabled:bool prop ->
  ?update_trigger_endpoint:string prop ->
  ?update_trigger_payload_type:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  base_image_trigger

type docker_step

val docker_step :
  ?arguments:string prop Tf_core.assoc ->
  ?cache_enabled:bool prop ->
  ?image_names:string prop list ->
  ?push_enabled:bool prop ->
  ?secret_arguments:string prop Tf_core.assoc ->
  ?target:string prop ->
  context_access_token:string prop ->
  context_path:string prop ->
  dockerfile_path:string prop ->
  unit ->
  docker_step

type encoded_step

val encoded_step :
  ?context_access_token:string prop ->
  ?context_path:string prop ->
  ?secret_values:string prop Tf_core.assoc ->
  ?value_content:string prop ->
  ?values:string prop Tf_core.assoc ->
  task_content:string prop ->
  unit ->
  encoded_step

type file_step

val file_step :
  ?context_access_token:string prop ->
  ?context_path:string prop ->
  ?secret_values:string prop Tf_core.assoc ->
  ?value_file_path:string prop ->
  ?values:string prop Tf_core.assoc ->
  task_file_path:string prop ->
  unit ->
  file_step

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type platform

val platform :
  ?architecture:string prop ->
  ?variant:string prop ->
  os:string prop ->
  unit ->
  platform

type registry_credential__custom

val registry_credential__custom :
  ?identity:string prop ->
  ?password:string prop ->
  ?username:string prop ->
  login_server:string prop ->
  unit ->
  registry_credential__custom

type registry_credential__source

val registry_credential__source :
  login_mode:string prop -> unit -> registry_credential__source

type registry_credential

val registry_credential :
  ?source:registry_credential__source list ->
  custom:registry_credential__custom list ->
  unit ->
  registry_credential

type source_trigger__authentication

val source_trigger__authentication :
  ?expire_in_seconds:float prop ->
  ?refresh_token:string prop ->
  ?scope:string prop ->
  token:string prop ->
  token_type:string prop ->
  unit ->
  source_trigger__authentication

type source_trigger

val source_trigger :
  ?branch:string prop ->
  ?enabled:bool prop ->
  ?authentication:source_trigger__authentication list ->
  events:string prop list ->
  name:string prop ->
  repository_url:string prop ->
  source_type:string prop ->
  unit ->
  source_trigger

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type timer_trigger

val timer_trigger :
  ?enabled:bool prop ->
  name:string prop ->
  schedule:string prop ->
  unit ->
  timer_trigger

type azurerm_container_registry_task

val azurerm_container_registry_task :
  ?agent_pool_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_system_task:bool prop ->
  ?log_template:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?agent_setting:agent_setting list ->
  ?base_image_trigger:base_image_trigger list ->
  ?docker_step:docker_step list ->
  ?encoded_step:encoded_step list ->
  ?file_step:file_step list ->
  ?identity:identity list ->
  ?platform:platform list ->
  ?registry_credential:registry_credential list ->
  ?source_trigger:source_trigger list ->
  ?timeouts:timeouts ->
  ?timer_trigger:timer_trigger list ->
  container_registry_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_container_registry_task

val yojson_of_azurerm_container_registry_task :
  azurerm_container_registry_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_pool_name : string prop;
  container_registry_id : string prop;
  enabled : bool prop;
  id : string prop;
  is_system_task : bool prop;
  log_template : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  timeout_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_pool_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_system_task:bool prop ->
  ?log_template:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?agent_setting:agent_setting list ->
  ?base_image_trigger:base_image_trigger list ->
  ?docker_step:docker_step list ->
  ?encoded_step:encoded_step list ->
  ?file_step:file_step list ->
  ?identity:identity list ->
  ?platform:platform list ->
  ?registry_credential:registry_credential list ->
  ?source_trigger:source_trigger list ->
  ?timeouts:timeouts ->
  ?timer_trigger:timer_trigger list ->
  container_registry_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?agent_pool_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_system_task:bool prop ->
  ?log_template:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?agent_setting:agent_setting list ->
  ?base_image_trigger:base_image_trigger list ->
  ?docker_step:docker_step list ->
  ?encoded_step:encoded_step list ->
  ?file_step:file_step list ->
  ?identity:identity list ->
  ?platform:platform list ->
  ?registry_credential:registry_credential list ->
  ?source_trigger:source_trigger list ->
  ?timeouts:timeouts ->
  ?timer_trigger:timer_trigger list ->
  container_registry_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
