(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_team_repository

val github_team_repository :
  ?id:string prop ->
  ?permission:string prop ->
  repository:string prop ->
  team_id:string prop ->
  unit ->
  github_team_repository

val yojson_of_github_team_repository : github_team_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  permission : string prop;
  repository : string prop;
  team_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?permission:string prop ->
  repository:string prop ->
  team_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?permission:string prop ->
  repository:string prop ->
  team_id:string prop ->
  string ->
  t Tf_core.resource
