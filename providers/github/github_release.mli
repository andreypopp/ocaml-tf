(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_release

val github_release :
  ?body:string prop ->
  ?discussion_category_name:string prop ->
  ?draft:bool prop ->
  ?generate_release_notes:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?prerelease:bool prop ->
  ?target_commitish:string prop ->
  repository:string prop ->
  tag_name:string prop ->
  unit ->
  github_release

val yojson_of_github_release : github_release -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assets_url : string prop;
  body : string prop;
  created_at : string prop;
  discussion_category_name : string prop;
  draft : bool prop;
  etag : string prop;
  generate_release_notes : bool prop;
  html_url : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  prerelease : bool prop;
  published_at : string prop;
  release_id : float prop;
  repository : string prop;
  tag_name : string prop;
  tarball_url : string prop;
  target_commitish : string prop;
  upload_url : string prop;
  url : string prop;
  zipball_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?body:string prop ->
  ?discussion_category_name:string prop ->
  ?draft:bool prop ->
  ?generate_release_notes:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?prerelease:bool prop ->
  ?target_commitish:string prop ->
  repository:string prop ->
  tag_name:string prop ->
  string ->
  t

val make :
  ?body:string prop ->
  ?discussion_category_name:string prop ->
  ?draft:bool prop ->
  ?generate_release_notes:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?prerelease:bool prop ->
  ?target_commitish:string prop ->
  repository:string prop ->
  tag_name:string prop ->
  string ->
  t Tf_core.resource
