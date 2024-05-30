(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type teams = {
  name : string prop;  (** name *)
  permission : string prop;  (** permission *)
  slug : string prop;  (** slug *)
}

type github_repository_teams

val github_repository_teams :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  github_repository_teams

val yojson_of_github_repository_teams :
  github_repository_teams -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  full_name : string prop;
  id : string prop;
  name : string prop;
  teams : teams list prop;
}

val register :
  ?tf_module:tf_module ->
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
