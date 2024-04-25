(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_action_configuration__code_configuration

val github_action_configuration__code_configuration :
  runtime_stack:string prop ->
  runtime_version:string prop ->
  unit ->
  github_action_configuration__code_configuration

type github_action_configuration__container_configuration

val github_action_configuration__container_configuration :
  ?registry_password:string prop ->
  ?registry_username:string prop ->
  image_name:string prop ->
  registry_url:string prop ->
  unit ->
  github_action_configuration__container_configuration

type github_action_configuration

val github_action_configuration :
  ?generate_workflow_file:bool prop ->
  ?code_configuration:
    github_action_configuration__code_configuration list ->
  ?container_configuration:
    github_action_configuration__container_configuration list ->
  unit ->
  github_action_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_app_service_source_control

val azurerm_app_service_source_control :
  ?branch:string prop ->
  ?id:string prop ->
  ?repo_url:string prop ->
  ?rollback_enabled:bool prop ->
  ?use_local_git:bool prop ->
  ?use_manual_integration:bool prop ->
  ?use_mercurial:bool prop ->
  ?github_action_configuration:github_action_configuration list ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  unit ->
  azurerm_app_service_source_control

val yojson_of_azurerm_app_service_source_control :
  azurerm_app_service_source_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  branch : string prop;
  id : string prop;
  repo_url : string prop;
  rollback_enabled : bool prop;
  scm_type : string prop;
  use_local_git : bool prop;
  use_manual_integration : bool prop;
  use_mercurial : bool prop;
  uses_github_action : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?branch:string prop ->
  ?id:string prop ->
  ?repo_url:string prop ->
  ?rollback_enabled:bool prop ->
  ?use_local_git:bool prop ->
  ?use_manual_integration:bool prop ->
  ?use_mercurial:bool prop ->
  ?github_action_configuration:github_action_configuration list ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  string ->
  t

val make :
  ?branch:string prop ->
  ?id:string prop ->
  ?repo_url:string prop ->
  ?rollback_enabled:bool prop ->
  ?use_local_git:bool prop ->
  ?use_manual_integration:bool prop ->
  ?use_mercurial:bool prop ->
  ?github_action_configuration:github_action_configuration list ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  string ->
  t Tf_core.resource
