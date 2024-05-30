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

type github_actions_repository_permissions

val github_actions_repository_permissions :
  ?allowed_actions:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  repository:string prop ->
  unit ->
  github_actions_repository_permissions

val yojson_of_github_actions_repository_permissions :
  github_actions_repository_permissions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_actions : string prop;
  enabled : bool prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_actions:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  repository:string prop ->
  string ->
  t

val make :
  ?allowed_actions:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  repository:string prop ->
  string ->
  t Tf_core.resource
