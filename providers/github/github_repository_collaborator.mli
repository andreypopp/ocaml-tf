(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_collaborator

val github_repository_collaborator :
  ?id:string prop ->
  ?permission:string prop ->
  ?permission_diff_suppression:bool prop ->
  repository:string prop ->
  username:string prop ->
  unit ->
  github_repository_collaborator

val yojson_of_github_repository_collaborator :
  github_repository_collaborator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  invitation_id : string prop;
  permission : string prop;
  permission_diff_suppression : bool prop;
  repository : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?permission:string prop ->
  ?permission_diff_suppression:bool prop ->
  repository:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?permission:string prop ->
  ?permission_diff_suppression:bool prop ->
  repository:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
