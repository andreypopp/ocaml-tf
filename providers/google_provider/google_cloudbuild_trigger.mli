(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_trigger__approval_config

type google_cloudbuild_trigger__bitbucket_server_trigger_config__pull_request

type google_cloudbuild_trigger__bitbucket_server_trigger_config__push
type google_cloudbuild_trigger__bitbucket_server_trigger_config
type google_cloudbuild_trigger__build__artifacts__maven_artifacts
type google_cloudbuild_trigger__build__artifacts__npm_packages

type google_cloudbuild_trigger__build__artifacts__objects__timing = {
  end_time : string;  (** end_time *)
  start_time : string;  (** start_time *)
}

type google_cloudbuild_trigger__build__artifacts__objects
type google_cloudbuild_trigger__build__artifacts__python_packages
type google_cloudbuild_trigger__build__artifacts

type google_cloudbuild_trigger__build__available_secrets__secret_manager

type google_cloudbuild_trigger__build__available_secrets
type google_cloudbuild_trigger__build__options__volumes
type google_cloudbuild_trigger__build__options
type google_cloudbuild_trigger__build__secret
type google_cloudbuild_trigger__build__source__repo_source
type google_cloudbuild_trigger__build__source__storage_source
type google_cloudbuild_trigger__build__source
type google_cloudbuild_trigger__build__step__volumes
type google_cloudbuild_trigger__build__step
type google_cloudbuild_trigger__build
type google_cloudbuild_trigger__git_file_source
type google_cloudbuild_trigger__github__pull_request
type google_cloudbuild_trigger__github__push
type google_cloudbuild_trigger__github
type google_cloudbuild_trigger__pubsub_config
type google_cloudbuild_trigger__repository_event_config__pull_request
type google_cloudbuild_trigger__repository_event_config__push
type google_cloudbuild_trigger__repository_event_config
type google_cloudbuild_trigger__source_to_build
type google_cloudbuild_trigger__timeouts
type google_cloudbuild_trigger__trigger_template
type google_cloudbuild_trigger__webhook_config
type google_cloudbuild_trigger

val google_cloudbuild_trigger :
  ?description:string ->
  ?disabled:bool ->
  ?filename:string ->
  ?filter:string ->
  ?id:string ->
  ?ignored_files:string list ->
  ?include_build_logs:string ->
  ?included_files:string list ->
  ?location:string ->
  ?name:string ->
  ?project:string ->
  ?service_account:string ->
  ?substitutions:(string * string) list ->
  ?tags:string list ->
  ?timeouts:google_cloudbuild_trigger__timeouts ->
  approval_config:google_cloudbuild_trigger__approval_config list ->
  bitbucket_server_trigger_config:
    google_cloudbuild_trigger__bitbucket_server_trigger_config list ->
  build:google_cloudbuild_trigger__build list ->
  git_file_source:google_cloudbuild_trigger__git_file_source list ->
  github:google_cloudbuild_trigger__github list ->
  pubsub_config:google_cloudbuild_trigger__pubsub_config list ->
  repository_event_config:
    google_cloudbuild_trigger__repository_event_config list ->
  source_to_build:google_cloudbuild_trigger__source_to_build list ->
  trigger_template:google_cloudbuild_trigger__trigger_template list ->
  webhook_config:google_cloudbuild_trigger__webhook_config list ->
  string ->
  unit
