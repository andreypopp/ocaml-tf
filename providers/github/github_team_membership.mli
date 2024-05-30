(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_team_membership

val github_team_membership :
  ?id:string prop ->
  ?role:string prop ->
  team_id:string prop ->
  username:string prop ->
  unit ->
  github_team_membership

val yojson_of_github_team_membership : github_team_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  role : string prop;
  team_id : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role:string prop ->
  team_id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?role:string prop ->
  team_id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
