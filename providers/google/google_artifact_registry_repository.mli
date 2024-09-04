(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cleanup_policies__condition

val cleanup_policies__condition :
  ?newer_than:string prop ->
  ?older_than:string prop ->
  ?package_name_prefixes:string prop list ->
  ?tag_prefixes:string prop list ->
  ?tag_state:string prop ->
  ?version_name_prefixes:string prop list ->
  unit ->
  cleanup_policies__condition

type cleanup_policies__most_recent_versions

val cleanup_policies__most_recent_versions :
  ?keep_count:float prop ->
  ?package_name_prefixes:string prop list ->
  unit ->
  cleanup_policies__most_recent_versions

type cleanup_policies

val cleanup_policies :
  ?action:string prop ->
  ?condition:cleanup_policies__condition list ->
  ?most_recent_versions:cleanup_policies__most_recent_versions list ->
  id:string prop ->
  unit ->
  cleanup_policies

type docker_config

val docker_config :
  ?immutable_tags:bool prop -> unit -> docker_config

type maven_config

val maven_config :
  ?allow_snapshot_overwrites:bool prop ->
  ?version_policy:string prop ->
  unit ->
  maven_config

type remote_repository_config__apt_repository__public_repository

val remote_repository_config__apt_repository__public_repository :
  repository_base:string prop ->
  repository_path:string prop ->
  unit ->
  remote_repository_config__apt_repository__public_repository

type remote_repository_config__apt_repository

val remote_repository_config__apt_repository :
  ?public_repository:
    remote_repository_config__apt_repository__public_repository list ->
  unit ->
  remote_repository_config__apt_repository

type remote_repository_config__docker_repository__custom_repository

val remote_repository_config__docker_repository__custom_repository :
  ?uri:string prop ->
  unit ->
  remote_repository_config__docker_repository__custom_repository

type remote_repository_config__docker_repository

val remote_repository_config__docker_repository :
  ?public_repository:string prop ->
  ?custom_repository:
    remote_repository_config__docker_repository__custom_repository
    list ->
  unit ->
  remote_repository_config__docker_repository

type remote_repository_config__maven_repository__custom_repository

val remote_repository_config__maven_repository__custom_repository :
  ?uri:string prop ->
  unit ->
  remote_repository_config__maven_repository__custom_repository

type remote_repository_config__maven_repository

val remote_repository_config__maven_repository :
  ?public_repository:string prop ->
  ?custom_repository:
    remote_repository_config__maven_repository__custom_repository
    list ->
  unit ->
  remote_repository_config__maven_repository

type remote_repository_config__npm_repository__custom_repository

val remote_repository_config__npm_repository__custom_repository :
  ?uri:string prop ->
  unit ->
  remote_repository_config__npm_repository__custom_repository

type remote_repository_config__npm_repository

val remote_repository_config__npm_repository :
  ?public_repository:string prop ->
  ?custom_repository:
    remote_repository_config__npm_repository__custom_repository list ->
  unit ->
  remote_repository_config__npm_repository

type remote_repository_config__python_repository__custom_repository

val remote_repository_config__python_repository__custom_repository :
  ?uri:string prop ->
  unit ->
  remote_repository_config__python_repository__custom_repository

type remote_repository_config__python_repository

val remote_repository_config__python_repository :
  ?public_repository:string prop ->
  ?custom_repository:
    remote_repository_config__python_repository__custom_repository
    list ->
  unit ->
  remote_repository_config__python_repository

type remote_repository_config__upstream_credentials__username_password_credentials

val remote_repository_config__upstream_credentials__username_password_credentials :
  ?password_secret_version:string prop ->
  ?username:string prop ->
  unit ->
  remote_repository_config__upstream_credentials__username_password_credentials

type remote_repository_config__upstream_credentials

val remote_repository_config__upstream_credentials :
  ?username_password_credentials:
    remote_repository_config__upstream_credentials__username_password_credentials
    list ->
  unit ->
  remote_repository_config__upstream_credentials

type remote_repository_config__yum_repository__public_repository

val remote_repository_config__yum_repository__public_repository :
  repository_base:string prop ->
  repository_path:string prop ->
  unit ->
  remote_repository_config__yum_repository__public_repository

type remote_repository_config__yum_repository

val remote_repository_config__yum_repository :
  ?public_repository:
    remote_repository_config__yum_repository__public_repository list ->
  unit ->
  remote_repository_config__yum_repository

type remote_repository_config

val remote_repository_config :
  ?description:string prop ->
  ?disable_upstream_validation:bool prop ->
  ?apt_repository:remote_repository_config__apt_repository list ->
  ?docker_repository:remote_repository_config__docker_repository list ->
  ?maven_repository:remote_repository_config__maven_repository list ->
  ?npm_repository:remote_repository_config__npm_repository list ->
  ?python_repository:remote_repository_config__python_repository list ->
  ?upstream_credentials:
    remote_repository_config__upstream_credentials list ->
  ?yum_repository:remote_repository_config__yum_repository list ->
  unit ->
  remote_repository_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_repository_config__upstream_policies

val virtual_repository_config__upstream_policies :
  ?id:string prop ->
  ?priority:float prop ->
  ?repository:string prop ->
  unit ->
  virtual_repository_config__upstream_policies

type virtual_repository_config

val virtual_repository_config :
  ?upstream_policies:
    virtual_repository_config__upstream_policies list ->
  unit ->
  virtual_repository_config

type google_artifact_registry_repository

val google_artifact_registry_repository :
  ?cleanup_policy_dry_run:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?docker_config:docker_config list ->
  ?maven_config:maven_config list ->
  ?remote_repository_config:remote_repository_config list ->
  ?timeouts:timeouts ->
  ?virtual_repository_config:virtual_repository_config list ->
  format:string prop ->
  repository_id:string prop ->
  cleanup_policies:cleanup_policies list ->
  unit ->
  google_artifact_registry_repository

val yojson_of_google_artifact_registry_repository :
  google_artifact_registry_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cleanup_policy_dry_run : bool prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  format : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cleanup_policy_dry_run:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?docker_config:docker_config list ->
  ?maven_config:maven_config list ->
  ?remote_repository_config:remote_repository_config list ->
  ?timeouts:timeouts ->
  ?virtual_repository_config:virtual_repository_config list ->
  format:string prop ->
  repository_id:string prop ->
  cleanup_policies:cleanup_policies list ->
  string ->
  t

val make :
  ?cleanup_policy_dry_run:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?docker_config:docker_config list ->
  ?maven_config:maven_config list ->
  ?remote_repository_config:remote_repository_config list ->
  ?timeouts:timeouts ->
  ?virtual_repository_config:virtual_repository_config list ->
  format:string prop ->
  repository_id:string prop ->
  cleanup_policies:cleanup_policies list ->
  string ->
  t Tf_core.resource
