(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_actions_runner_group

val github_actions_runner_group :
  ?allows_public_repositories:bool prop ->
  ?restricted_to_workflows:bool prop ->
  ?selected_repository_ids:float prop list ->
  ?selected_workflows:string prop list ->
  name:string prop ->
  visibility:string prop ->
  unit ->
  github_actions_runner_group

val yojson_of_github_actions_runner_group :
  github_actions_runner_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allows_public_repositories : bool prop;
  default : bool prop;
  etag : string prop;
  id : string prop;
  inherited : bool prop;
  name : string prop;
  restricted_to_workflows : bool prop;
  runners_url : string prop;
  selected_repositories_url : string prop;
  selected_repository_ids : float list prop;
  selected_workflows : string list prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allows_public_repositories:bool prop ->
  ?restricted_to_workflows:bool prop ->
  ?selected_repository_ids:float prop list ->
  ?selected_workflows:string prop list ->
  name:string prop ->
  visibility:string prop ->
  string ->
  t

val make :
  ?allows_public_repositories:bool prop ->
  ?restricted_to_workflows:bool prop ->
  ?selected_repository_ids:float prop list ->
  ?selected_workflows:string prop list ->
  name:string prop ->
  visibility:string prop ->
  string ->
  t Tf_core.resource
