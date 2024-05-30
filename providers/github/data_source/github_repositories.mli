(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repositories

val github_repositories :
  ?id:string prop ->
  ?include_repo_id:bool prop ->
  ?results_per_page:float prop ->
  ?sort:string prop ->
  query:string prop ->
  unit ->
  github_repositories

val yojson_of_github_repositories : github_repositories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  full_names : string list prop;
  id : string prop;
  include_repo_id : bool prop;
  names : string list prop;
  query : string prop;
  repo_ids : float list prop;
  results_per_page : float prop;
  sort : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_repo_id:bool prop ->
  ?results_per_page:float prop ->
  ?sort:string prop ->
  query:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_repo_id:bool prop ->
  ?results_per_page:float prop ->
  ?sort:string prop ->
  query:string prop ->
  string ->
  t Tf_core.resource
