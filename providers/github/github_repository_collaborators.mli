(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type team

val team :
  ?permission:string prop -> team_id:string prop -> unit -> team

type user

val user :
  ?permission:string prop -> username:string prop -> unit -> user

type github_repository_collaborators

val github_repository_collaborators :
  ?id:string prop ->
  repository:string prop ->
  team:team list ->
  user:user list ->
  unit ->
  github_repository_collaborators

val yojson_of_github_repository_collaborators :
  github_repository_collaborators -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  invitation_ids : (string * string) list prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  team:team list ->
  user:user list ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  team:team list ->
  user:user list ->
  string ->
  t Tf_core.resource
