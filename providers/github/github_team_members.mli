(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type members

val members :
  ?role:string prop -> username:string prop -> unit -> members

type github_team_members

val github_team_members :
  ?id:string prop ->
  team_id:string prop ->
  members:members list ->
  unit ->
  github_team_members

val yojson_of_github_team_members : github_team_members -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  team_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  team_id:string prop ->
  members:members list ->
  string ->
  t

val make :
  ?id:string prop ->
  team_id:string prop ->
  members:members list ->
  string ->
  t Tf_core.resource
