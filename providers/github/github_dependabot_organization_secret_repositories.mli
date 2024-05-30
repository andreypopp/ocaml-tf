(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_dependabot_organization_secret_repositories

val github_dependabot_organization_secret_repositories :
  ?id:string prop ->
  secret_name:string prop ->
  selected_repository_ids:float prop list ->
  unit ->
  github_dependabot_organization_secret_repositories

val yojson_of_github_dependabot_organization_secret_repositories :
  github_dependabot_organization_secret_repositories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  secret_name : string prop;
  selected_repository_ids : float list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  secret_name:string prop ->
  selected_repository_ids:float prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  secret_name:string prop ->
  selected_repository_ids:float prop list ->
  string ->
  t Tf_core.resource
