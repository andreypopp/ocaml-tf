(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type group

val group :
  group_description:string prop ->
  group_id:string prop ->
  group_name:string prop ->
  unit ->
  group

type github_team_sync_group_mapping

val github_team_sync_group_mapping :
  ?id:string prop ->
  team_slug:string prop ->
  group:group list ->
  unit ->
  github_team_sync_group_mapping

val yojson_of_github_team_sync_group_mapping :
  github_team_sync_group_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  team_slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  team_slug:string prop ->
  group:group list ->
  string ->
  t

val make :
  ?id:string prop ->
  team_slug:string prop ->
  group:group list ->
  string ->
  t Tf_core.resource
