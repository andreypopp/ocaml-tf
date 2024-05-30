(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_actions_organization_variable

val github_actions_organization_variable :
  ?id:string prop ->
  ?selected_repository_ids:float prop list ->
  value:string prop ->
  variable_name:string prop ->
  visibility:string prop ->
  unit ->
  github_actions_organization_variable

val yojson_of_github_actions_organization_variable :
  github_actions_organization_variable -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  selected_repository_ids : float list prop;
  updated_at : string prop;
  value : string prop;
  variable_name : string prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?selected_repository_ids:float prop list ->
  value:string prop ->
  variable_name:string prop ->
  visibility:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?selected_repository_ids:float prop list ->
  value:string prop ->
  variable_name:string prop ->
  visibility:string prop ->
  string ->
  t Tf_core.resource
