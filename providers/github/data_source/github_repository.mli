(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pages__source = {
  branch : string prop;  (** branch *)
  path : string prop;  (** path *)
}

type pages = {
  build_type : string prop;  (** build_type *)
  cname : string prop;  (** cname *)
  custom_404 : bool prop;  (** custom_404 *)
  html_url : string prop;  (** html_url *)
  source : pages__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source *)
  status : string prop;  (** status *)
  url : string prop;  (** url *)
}

type repository_license__license = {
  body : string prop;  (** body *)
  conditions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** conditions *)
  description : string prop;  (** description *)
  featured : bool prop;  (** featured *)
  html_url : string prop;  (** html_url *)
  implementation : string prop;  (** implementation *)
  key : string prop;  (** key *)
  limitations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** limitations *)
  name : string prop;  (** name *)
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** permissions *)
  spdx_id : string prop;  (** spdx_id *)
  url : string prop;  (** url *)
}

type repository_license = {
  content : string prop;  (** content *)
  download_url : string prop;  (** download_url *)
  encoding : string prop;  (** encoding *)
  git_url : string prop;  (** git_url *)
  html_url : string prop;  (** html_url *)
  license : repository_license__license list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** license *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  sha : string prop;  (** sha *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop;  (** url *)
}

type template = {
  owner : string prop;  (** owner *)
  repository : string prop;  (** repository *)
}

type github_repository

val github_repository :
  ?description:string prop ->
  ?full_name:string prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  github_repository

val yojson_of_github_repository : github_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_auto_merge : bool prop;
  allow_merge_commit : bool prop;
  allow_rebase_merge : bool prop;
  allow_squash_merge : bool prop;
  archived : bool prop;
  default_branch : string prop;
  description : string prop;
  fork : bool prop;
  full_name : string prop;
  git_clone_url : string prop;
  has_discussions : bool prop;
  has_downloads : bool prop;
  has_issues : bool prop;
  has_projects : bool prop;
  has_wiki : bool prop;
  homepage_url : string prop;
  html_url : string prop;
  http_clone_url : string prop;
  id : string prop;
  is_template : bool prop;
  merge_commit_message : string prop;
  merge_commit_title : string prop;
  name : string prop;
  node_id : string prop;
  pages : pages list prop;
  primary_language : string prop;
  private_ : bool prop;
  repo_id : float prop;
  repository_license : repository_license list prop;
  squash_merge_commit_message : string prop;
  squash_merge_commit_title : string prop;
  ssh_clone_url : string prop;
  svn_url : string prop;
  template : template list prop;
  topics : string list prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?full_name:string prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?full_name:string prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
