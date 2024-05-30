(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type environments = {
  name : string prop;  (** name *)
  node_id : string prop;  (** node_id *)
}

type github_repository_environments

val github_repository_environments :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_repository_environments

val yojson_of_github_repository_environments :
  github_repository_environments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  environments : environments list prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
