(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_pull_request

val github_repository_pull_request :
  ?id:string prop ->
  ?owner:string prop ->
  base_repository:string prop ->
  number:float prop ->
  unit ->
  github_repository_pull_request

val yojson_of_github_repository_pull_request :
  github_repository_pull_request -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_ref : string prop;
  base_repository : string prop;
  base_sha : string prop;
  body : string prop;
  draft : bool prop;
  head_owner : string prop;
  head_ref : string prop;
  head_repository : string prop;
  head_sha : string prop;
  id : string prop;
  labels : string list prop;
  maintainer_can_modify : bool prop;
  number : float prop;
  opened_at : float prop;
  opened_by : string prop;
  owner : string prop;
  state : string prop;
  title : string prop;
  updated_at : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner:string prop ->
  base_repository:string prop ->
  number:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner:string prop ->
  base_repository:string prop ->
  number:float prop ->
  string ->
  t Tf_core.resource
