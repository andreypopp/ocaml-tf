(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pages__source

val pages__source :
  ?path:string prop -> branch:string prop -> unit -> pages__source

type pages

val pages :
  ?build_type:string prop ->
  ?cname:string prop ->
  ?source:pages__source list ->
  unit ->
  pages

type security_and_analysis__advanced_security

val security_and_analysis__advanced_security :
  status:string prop ->
  unit ->
  security_and_analysis__advanced_security

type security_and_analysis__secret_scanning

val security_and_analysis__secret_scanning :
  status:string prop ->
  unit ->
  security_and_analysis__secret_scanning

type security_and_analysis__secret_scanning_push_protection

val security_and_analysis__secret_scanning_push_protection :
  status:string prop ->
  unit ->
  security_and_analysis__secret_scanning_push_protection

type security_and_analysis

val security_and_analysis :
  ?advanced_security:security_and_analysis__advanced_security list ->
  ?secret_scanning:security_and_analysis__secret_scanning list ->
  ?secret_scanning_push_protection:
    security_and_analysis__secret_scanning_push_protection list ->
  unit ->
  security_and_analysis

type template

val template :
  ?include_all_branches:bool prop ->
  owner:string prop ->
  repository:string prop ->
  unit ->
  template

type github_repository

val github_repository :
  ?allow_auto_merge:bool prop ->
  ?allow_merge_commit:bool prop ->
  ?allow_rebase_merge:bool prop ->
  ?allow_squash_merge:bool prop ->
  ?allow_update_branch:bool prop ->
  ?archive_on_destroy:bool prop ->
  ?archived:bool prop ->
  ?auto_init:bool prop ->
  ?default_branch:string prop ->
  ?delete_branch_on_merge:bool prop ->
  ?description:string prop ->
  ?gitignore_template:string prop ->
  ?has_discussions:bool prop ->
  ?has_downloads:bool prop ->
  ?has_issues:bool prop ->
  ?has_projects:bool prop ->
  ?has_wiki:bool prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?ignore_vulnerability_alerts_during_read:bool prop ->
  ?is_template:bool prop ->
  ?license_template:string prop ->
  ?merge_commit_message:string prop ->
  ?merge_commit_title:string prop ->
  ?private_:bool prop ->
  ?squash_merge_commit_message:string prop ->
  ?squash_merge_commit_title:string prop ->
  ?topics:string prop list ->
  ?visibility:string prop ->
  ?vulnerability_alerts:bool prop ->
  ?web_commit_signoff_required:bool prop ->
  ?pages:pages list ->
  ?security_and_analysis:security_and_analysis list ->
  ?template:template list ->
  name:string prop ->
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
  allow_update_branch : bool prop;
  archive_on_destroy : bool prop;
  archived : bool prop;
  auto_init : bool prop;
  default_branch : string prop;
  delete_branch_on_merge : bool prop;
  description : string prop;
  etag : string prop;
  full_name : string prop;
  git_clone_url : string prop;
  gitignore_template : string prop;
  has_discussions : bool prop;
  has_downloads : bool prop;
  has_issues : bool prop;
  has_projects : bool prop;
  has_wiki : bool prop;
  homepage_url : string prop;
  html_url : string prop;
  http_clone_url : string prop;
  id : string prop;
  ignore_vulnerability_alerts_during_read : bool prop;
  is_template : bool prop;
  license_template : string prop;
  merge_commit_message : string prop;
  merge_commit_title : string prop;
  name : string prop;
  node_id : string prop;
  primary_language : string prop;
  private_ : bool prop;
  repo_id : float prop;
  squash_merge_commit_message : string prop;
  squash_merge_commit_title : string prop;
  ssh_clone_url : string prop;
  svn_url : string prop;
  topics : string list prop;
  visibility : string prop;
  vulnerability_alerts : bool prop;
  web_commit_signoff_required : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_auto_merge:bool prop ->
  ?allow_merge_commit:bool prop ->
  ?allow_rebase_merge:bool prop ->
  ?allow_squash_merge:bool prop ->
  ?allow_update_branch:bool prop ->
  ?archive_on_destroy:bool prop ->
  ?archived:bool prop ->
  ?auto_init:bool prop ->
  ?default_branch:string prop ->
  ?delete_branch_on_merge:bool prop ->
  ?description:string prop ->
  ?gitignore_template:string prop ->
  ?has_discussions:bool prop ->
  ?has_downloads:bool prop ->
  ?has_issues:bool prop ->
  ?has_projects:bool prop ->
  ?has_wiki:bool prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?ignore_vulnerability_alerts_during_read:bool prop ->
  ?is_template:bool prop ->
  ?license_template:string prop ->
  ?merge_commit_message:string prop ->
  ?merge_commit_title:string prop ->
  ?private_:bool prop ->
  ?squash_merge_commit_message:string prop ->
  ?squash_merge_commit_title:string prop ->
  ?topics:string prop list ->
  ?visibility:string prop ->
  ?vulnerability_alerts:bool prop ->
  ?web_commit_signoff_required:bool prop ->
  ?pages:pages list ->
  ?security_and_analysis:security_and_analysis list ->
  ?template:template list ->
  name:string prop ->
  string ->
  t

val make :
  ?allow_auto_merge:bool prop ->
  ?allow_merge_commit:bool prop ->
  ?allow_rebase_merge:bool prop ->
  ?allow_squash_merge:bool prop ->
  ?allow_update_branch:bool prop ->
  ?archive_on_destroy:bool prop ->
  ?archived:bool prop ->
  ?auto_init:bool prop ->
  ?default_branch:string prop ->
  ?delete_branch_on_merge:bool prop ->
  ?description:string prop ->
  ?gitignore_template:string prop ->
  ?has_discussions:bool prop ->
  ?has_downloads:bool prop ->
  ?has_issues:bool prop ->
  ?has_projects:bool prop ->
  ?has_wiki:bool prop ->
  ?homepage_url:string prop ->
  ?id:string prop ->
  ?ignore_vulnerability_alerts_during_read:bool prop ->
  ?is_template:bool prop ->
  ?license_template:string prop ->
  ?merge_commit_message:string prop ->
  ?merge_commit_title:string prop ->
  ?private_:bool prop ->
  ?squash_merge_commit_message:string prop ->
  ?squash_merge_commit_title:string prop ->
  ?topics:string prop list ->
  ?visibility:string prop ->
  ?vulnerability_alerts:bool prop ->
  ?web_commit_signoff_required:bool prop ->
  ?pages:pages list ->
  ?security_and_analysis:security_and_analysis list ->
  ?template:template list ->
  name:string prop ->
  string ->
  t Tf_core.resource
