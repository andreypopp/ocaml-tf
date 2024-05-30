(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type assets = {
  browser_download_url : string prop;  (** browser_download_url *)
  content_type : string prop;  (** content_type *)
  created_at : string prop;  (** created_at *)
  id : float prop;  (** id *)
  label : string prop;  (** label *)
  name : string prop;  (** name *)
  node_id : string prop;  (** node_id *)
  size : float prop;  (** size *)
  updated_at : string prop;  (** updated_at *)
  url : string prop;  (** url *)
}

type github_release

val github_release :
  ?id:string prop ->
  ?release_id:float prop ->
  ?release_tag:string prop ->
  owner:string prop ->
  repository:string prop ->
  retrieve_by:string prop ->
  unit ->
  github_release

val yojson_of_github_release : github_release -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  asserts_url : string prop;
  assets : assets list prop;
  assets_url : string prop;
  body : string prop;
  created_at : string prop;
  draft : bool prop;
  html_url : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  prerelease : bool prop;
  published_at : string prop;
  release_id : float prop;
  release_tag : string prop;
  repository : string prop;
  retrieve_by : string prop;
  tarball_url : string prop;
  target_commitish : string prop;
  upload_url : string prop;
  url : string prop;
  zipball_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?release_id:float prop ->
  ?release_tag:string prop ->
  owner:string prop ->
  repository:string prop ->
  retrieve_by:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?release_id:float prop ->
  ?release_tag:string prop ->
  owner:string prop ->
  repository:string prop ->
  retrieve_by:string prop ->
  string ->
  t Tf_core.resource
