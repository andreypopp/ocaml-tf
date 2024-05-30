(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_actions_config

val allowed_actions_config :
  ?patterns_allowed:string prop list ->
  ?verified_allowed:bool prop ->
  github_owned_allowed:bool prop ->
  unit ->
  allowed_actions_config

type enabled_repositories_config

val enabled_repositories_config :
  repository_ids:float prop list ->
  unit ->
  enabled_repositories_config

type github_actions_organization_permissions

val github_actions_organization_permissions :
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_repositories_config:enabled_repositories_config list ->
  enabled_repositories:string prop ->
  unit ->
  github_actions_organization_permissions

val yojson_of_github_actions_organization_permissions :
  github_actions_organization_permissions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_actions : string prop;
  enabled_repositories : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_repositories_config:enabled_repositories_config list ->
  enabled_repositories:string prop ->
  string ->
  t

val make :
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_repositories_config:enabled_repositories_config list ->
  enabled_repositories:string prop ->
  string ->
  t Tf_core.resource
