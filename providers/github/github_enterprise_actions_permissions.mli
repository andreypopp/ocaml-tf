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

type enabled_organizations_config

val enabled_organizations_config :
  organization_ids:float prop list ->
  unit ->
  enabled_organizations_config

type github_enterprise_actions_permissions

val github_enterprise_actions_permissions :
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_organizations_config:enabled_organizations_config list ->
  enabled_organizations:string prop ->
  enterprise_slug:string prop ->
  unit ->
  github_enterprise_actions_permissions

val yojson_of_github_enterprise_actions_permissions :
  github_enterprise_actions_permissions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_actions : string prop;
  enabled_organizations : string prop;
  enterprise_slug : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_organizations_config:enabled_organizations_config list ->
  enabled_organizations:string prop ->
  enterprise_slug:string prop ->
  string ->
  t

val make :
  ?allowed_actions:string prop ->
  ?id:string prop ->
  ?allowed_actions_config:allowed_actions_config list ->
  ?enabled_organizations_config:enabled_organizations_config list ->
  enabled_organizations:string prop ->
  enterprise_slug:string prop ->
  string ->
  t Tf_core.resource
