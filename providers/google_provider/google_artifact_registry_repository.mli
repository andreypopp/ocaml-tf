(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_artifact_registry_repository__cleanup_policies__condition

type google_artifact_registry_repository__cleanup_policies__most_recent_versions

type google_artifact_registry_repository__cleanup_policies
type google_artifact_registry_repository__docker_config
type google_artifact_registry_repository__maven_config

type google_artifact_registry_repository__remote_repository_config__apt_repository__public_repository

type google_artifact_registry_repository__remote_repository_config__apt_repository

type google_artifact_registry_repository__remote_repository_config__docker_repository

type google_artifact_registry_repository__remote_repository_config__maven_repository

type google_artifact_registry_repository__remote_repository_config__npm_repository

type google_artifact_registry_repository__remote_repository_config__python_repository

type google_artifact_registry_repository__remote_repository_config__upstream_credentials__username_password_credentials

type google_artifact_registry_repository__remote_repository_config__upstream_credentials

type google_artifact_registry_repository__remote_repository_config__yum_repository__public_repository

type google_artifact_registry_repository__remote_repository_config__yum_repository

type google_artifact_registry_repository__remote_repository_config
type google_artifact_registry_repository__timeouts

type google_artifact_registry_repository__virtual_repository_config__upstream_policies

type google_artifact_registry_repository__virtual_repository_config
type google_artifact_registry_repository

val google_artifact_registry_repository :
  ?cleanup_policy_dry_run:bool ->
  ?description:string ->
  ?id:string ->
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?mode:string ->
  ?project:string ->
  ?timeouts:google_artifact_registry_repository__timeouts ->
  format:string ->
  repository_id:string ->
  cleanup_policies:
    google_artifact_registry_repository__cleanup_policies list ->
  docker_config:
    google_artifact_registry_repository__docker_config list ->
  maven_config:google_artifact_registry_repository__maven_config list ->
  remote_repository_config:
    google_artifact_registry_repository__remote_repository_config
    list ->
  virtual_repository_config:
    google_artifact_registry_repository__virtual_repository_config
    list ->
  string ->
  unit
