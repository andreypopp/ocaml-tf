(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_project_column

val github_project_column :
  ?id:string prop ->
  name:string prop ->
  project_id:string prop ->
  unit ->
  github_project_column

val yojson_of_github_project_column : github_project_column -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  column_id : float prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  project_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  project_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  project_id:string prop ->
  string ->
  t Tf_core.resource
