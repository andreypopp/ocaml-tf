(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization

val github_organization :
  ?id:string prop ->
  ?ignore_archived_repos:bool prop ->
  name:string prop ->
  unit ->
  github_organization

val yojson_of_github_organization : github_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  advanced_security_enabled_for_new_repositories : bool prop;
  default_repository_permission : string prop;
  dependabot_alerts_enabled_for_new_repositories : bool prop;
  dependabot_security_updates_enabled_for_new_repositories :
    bool prop;
  dependency_graph_enabled_for_new_repositories : bool prop;
  description : string prop;
  id : string prop;
  ignore_archived_repos : bool prop;
  login : string prop;
  members : string list prop;
  members_allowed_repository_creation_type : string prop;
  members_can_create_internal_repositories : bool prop;
  members_can_create_pages : bool prop;
  members_can_create_private_pages : bool prop;
  members_can_create_private_repositories : bool prop;
  members_can_create_public_pages : bool prop;
  members_can_create_public_repositories : bool prop;
  members_can_create_repositories : bool prop;
  members_can_fork_private_repositories : bool prop;
  name : string prop;
  node_id : string prop;
  orgname : string prop;
  plan : string prop;
  repositories : string list prop;
  secret_scanning_enabled_for_new_repositories : bool prop;
  secret_scanning_push_protection_enabled_for_new_repositories :
    bool prop;
  two_factor_requirement_enabled : bool prop;
  users : (string * string) list list prop;
  web_commit_signoff_required : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ignore_archived_repos:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ignore_archived_repos:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
