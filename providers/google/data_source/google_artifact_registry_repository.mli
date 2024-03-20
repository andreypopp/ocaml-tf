(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cleanup_policies__most_recent_versions = {
  keep_count : float prop;  (** keep_count *)
  package_name_prefixes : string prop list;
      (** package_name_prefixes *)
}

type cleanup_policies__condition = {
  newer_than : string prop;  (** newer_than *)
  older_than : string prop;  (** older_than *)
  package_name_prefixes : string prop list;
      (** package_name_prefixes *)
  tag_prefixes : string prop list;  (** tag_prefixes *)
  tag_state : string prop;  (** tag_state *)
  version_name_prefixes : string prop list;
      (** version_name_prefixes *)
}

type cleanup_policies = {
  action : string prop;  (** action *)
  condition : cleanup_policies__condition list;  (** condition *)
  id : string prop;  (** id *)
  most_recent_versions : cleanup_policies__most_recent_versions list;
      (** most_recent_versions *)
}

type docker_config = {
  immutable_tags : bool prop;  (** immutable_tags *)
}

type maven_config = {
  allow_snapshot_overwrites : bool prop;
      (** allow_snapshot_overwrites *)
  version_policy : string prop;  (** version_policy *)
}

type remote_repository_config__yum_repository__public_repository = {
  repository_base : string prop;  (** repository_base *)
  repository_path : string prop;  (** repository_path *)
}

type remote_repository_config__yum_repository = {
  public_repository :
    remote_repository_config__yum_repository__public_repository list;
      (** public_repository *)
}

type remote_repository_config__upstream_credentials__username_password_credentials = {
  password_secret_version : string prop;
      (** password_secret_version *)
  username : string prop;  (** username *)
}

type remote_repository_config__upstream_credentials = {
  username_password_credentials :
    remote_repository_config__upstream_credentials__username_password_credentials
    list;
      (** username_password_credentials *)
}

type remote_repository_config__python_repository = {
  public_repository : string prop;  (** public_repository *)
}

type remote_repository_config__npm_repository = {
  public_repository : string prop;  (** public_repository *)
}

type remote_repository_config__maven_repository = {
  public_repository : string prop;  (** public_repository *)
}

type remote_repository_config__docker_repository = {
  public_repository : string prop;  (** public_repository *)
}

type remote_repository_config__apt_repository__public_repository = {
  repository_base : string prop;  (** repository_base *)
  repository_path : string prop;  (** repository_path *)
}

type remote_repository_config__apt_repository = {
  public_repository :
    remote_repository_config__apt_repository__public_repository list;
      (** public_repository *)
}

type remote_repository_config = {
  apt_repository : remote_repository_config__apt_repository list;
      (** apt_repository *)
  description : string prop;  (** description *)
  docker_repository :
    remote_repository_config__docker_repository list;
      (** docker_repository *)
  maven_repository : remote_repository_config__maven_repository list;
      (** maven_repository *)
  npm_repository : remote_repository_config__npm_repository list;
      (** npm_repository *)
  python_repository :
    remote_repository_config__python_repository list;
      (** python_repository *)
  upstream_credentials :
    remote_repository_config__upstream_credentials list;
      (** upstream_credentials *)
  yum_repository : remote_repository_config__yum_repository list;
      (** yum_repository *)
}

type virtual_repository_config__upstream_policies = {
  id : string prop;  (** id *)
  priority : float prop;  (** priority *)
  repository : string prop;  (** repository *)
}

type virtual_repository_config = {
  upstream_policies :
    virtual_repository_config__upstream_policies list;
      (** upstream_policies *)
}

type google_artifact_registry_repository

val google_artifact_registry_repository :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  repository_id:string prop ->
  unit ->
  google_artifact_registry_repository

val yojson_of_google_artifact_registry_repository :
  google_artifact_registry_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cleanup_policies : cleanup_policies list prop;
  cleanup_policy_dry_run : bool prop;
  create_time : string prop;
  description : string prop;
  docker_config : docker_config list prop;
  effective_labels : (string * string) list prop;
  format : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maven_config : maven_config list prop;
  mode : string prop;
  name : string prop;
  project : string prop;
  remote_repository_config : remote_repository_config list prop;
  repository_id : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  virtual_repository_config : virtual_repository_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t Tf_core.resource
