(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type approval_config

val approval_config :
  ?approval_required:bool prop -> unit -> approval_config

type bitbucket_server_trigger_config__pull_request

val bitbucket_server_trigger_config__pull_request :
  ?comment_control:string prop ->
  ?invert_regex:bool prop ->
  branch:string prop ->
  unit ->
  bitbucket_server_trigger_config__pull_request

type bitbucket_server_trigger_config__push

val bitbucket_server_trigger_config__push :
  ?branch:string prop ->
  ?invert_regex:bool prop ->
  ?tag:string prop ->
  unit ->
  bitbucket_server_trigger_config__push

type bitbucket_server_trigger_config

val bitbucket_server_trigger_config :
  bitbucket_server_config_resource:string prop ->
  project_key:string prop ->
  repo_slug:string prop ->
  pull_request:bitbucket_server_trigger_config__pull_request list ->
  push:bitbucket_server_trigger_config__push list ->
  unit ->
  bitbucket_server_trigger_config

type build__artifacts__maven_artifacts

val build__artifacts__maven_artifacts :
  ?artifact_id:string prop ->
  ?group_id:string prop ->
  ?path:string prop ->
  ?repository:string prop ->
  ?version:string prop ->
  unit ->
  build__artifacts__maven_artifacts

type build__artifacts__npm_packages

val build__artifacts__npm_packages :
  ?package_path:string prop ->
  ?repository:string prop ->
  unit ->
  build__artifacts__npm_packages

type build__artifacts__objects__timing = {
  end_time : string prop;  (** end_time *)
  start_time : string prop;  (** start_time *)
}

type build__artifacts__objects

val build__artifacts__objects :
  ?location:string prop ->
  ?paths:string prop list ->
  unit ->
  build__artifacts__objects

type build__artifacts__python_packages

val build__artifacts__python_packages :
  ?paths:string prop list ->
  ?repository:string prop ->
  unit ->
  build__artifacts__python_packages

type build__artifacts

val build__artifacts :
  ?images:string prop list ->
  maven_artifacts:build__artifacts__maven_artifacts list ->
  npm_packages:build__artifacts__npm_packages list ->
  objects:build__artifacts__objects list ->
  python_packages:build__artifacts__python_packages list ->
  unit ->
  build__artifacts

type build__available_secrets__secret_manager

val build__available_secrets__secret_manager :
  env:string prop ->
  version_name:string prop ->
  unit ->
  build__available_secrets__secret_manager

type build__available_secrets

val build__available_secrets :
  secret_manager:build__available_secrets__secret_manager list ->
  unit ->
  build__available_secrets

type build__options__volumes

val build__options__volumes :
  ?name:string prop ->
  ?path:string prop ->
  unit ->
  build__options__volumes

type build__options

val build__options :
  ?disk_size_gb:float prop ->
  ?dynamic_substitutions:bool prop ->
  ?env:string prop list ->
  ?log_streaming_option:string prop ->
  ?logging:string prop ->
  ?machine_type:string prop ->
  ?requested_verify_option:string prop ->
  ?secret_env:string prop list ->
  ?source_provenance_hash:string prop list ->
  ?substitution_option:string prop ->
  ?worker_pool:string prop ->
  volumes:build__options__volumes list ->
  unit ->
  build__options

type build__secret

val build__secret :
  ?secret_env:(string * string prop) list ->
  kms_key_name:string prop ->
  unit ->
  build__secret

type build__source__repo_source

val build__source__repo_source :
  ?branch_name:string prop ->
  ?commit_sha:string prop ->
  ?dir:string prop ->
  ?invert_regex:bool prop ->
  ?project_id:string prop ->
  ?substitutions:(string * string prop) list ->
  ?tag_name:string prop ->
  repo_name:string prop ->
  unit ->
  build__source__repo_source

type build__source__storage_source

val build__source__storage_source :
  ?generation:string prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  build__source__storage_source

type build__source

val build__source :
  repo_source:build__source__repo_source list ->
  storage_source:build__source__storage_source list ->
  unit ->
  build__source

type build__step__volumes

val build__step__volumes :
  name:string prop ->
  path:string prop ->
  unit ->
  build__step__volumes

type build__step

val build__step :
  ?allow_exit_codes:float prop list ->
  ?allow_failure:bool prop ->
  ?args:string prop list ->
  ?dir:string prop ->
  ?entrypoint:string prop ->
  ?env:string prop list ->
  ?id:string prop ->
  ?script:string prop ->
  ?secret_env:string prop list ->
  ?timeout:string prop ->
  ?timing:string prop ->
  ?wait_for:string prop list ->
  name:string prop ->
  volumes:build__step__volumes list ->
  unit ->
  build__step

type build

val build :
  ?images:string prop list ->
  ?logs_bucket:string prop ->
  ?queue_ttl:string prop ->
  ?substitutions:(string * string prop) list ->
  ?tags:string prop list ->
  ?timeout:string prop ->
  artifacts:build__artifacts list ->
  available_secrets:build__available_secrets list ->
  options:build__options list ->
  secret:build__secret list ->
  source:build__source list ->
  step:build__step list ->
  unit ->
  build

type git_file_source

val git_file_source :
  ?bitbucket_server_config:string prop ->
  ?github_enterprise_config:string prop ->
  ?repository:string prop ->
  ?revision:string prop ->
  ?uri:string prop ->
  path:string prop ->
  repo_type:string prop ->
  unit ->
  git_file_source

type github__pull_request

val github__pull_request :
  ?comment_control:string prop ->
  ?invert_regex:bool prop ->
  branch:string prop ->
  unit ->
  github__pull_request

type github__push

val github__push :
  ?branch:string prop ->
  ?invert_regex:bool prop ->
  ?tag:string prop ->
  unit ->
  github__push

type github

val github :
  ?enterprise_config_resource_name:string prop ->
  ?name:string prop ->
  ?owner:string prop ->
  pull_request:github__pull_request list ->
  push:github__push list ->
  unit ->
  github

type pubsub_config

val pubsub_config :
  ?service_account_email:string prop ->
  topic:string prop ->
  unit ->
  pubsub_config

type repository_event_config__pull_request

val repository_event_config__pull_request :
  ?branch:string prop ->
  ?comment_control:string prop ->
  ?invert_regex:bool prop ->
  unit ->
  repository_event_config__pull_request

type repository_event_config__push

val repository_event_config__push :
  ?branch:string prop ->
  ?invert_regex:bool prop ->
  ?tag:string prop ->
  unit ->
  repository_event_config__push

type repository_event_config

val repository_event_config :
  ?repository:string prop ->
  pull_request:repository_event_config__pull_request list ->
  push:repository_event_config__push list ->
  unit ->
  repository_event_config

type source_to_build

val source_to_build :
  ?bitbucket_server_config:string prop ->
  ?github_enterprise_config:string prop ->
  ?repository:string prop ->
  ?uri:string prop ->
  ref:string prop ->
  repo_type:string prop ->
  unit ->
  source_to_build

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trigger_template

val trigger_template :
  ?branch_name:string prop ->
  ?commit_sha:string prop ->
  ?dir:string prop ->
  ?invert_regex:bool prop ->
  ?project_id:string prop ->
  ?repo_name:string prop ->
  ?tag_name:string prop ->
  unit ->
  trigger_template

type webhook_config

val webhook_config : secret:string prop -> unit -> webhook_config

type google_cloudbuild_trigger

val google_cloudbuild_trigger :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filename:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?ignored_files:string prop list ->
  ?include_build_logs:string prop ->
  ?included_files:string prop list ->
  ?location:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?substitutions:(string * string prop) list ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  approval_config:approval_config list ->
  bitbucket_server_trigger_config:
    bitbucket_server_trigger_config list ->
  build:build list ->
  git_file_source:git_file_source list ->
  github:github list ->
  pubsub_config:pubsub_config list ->
  repository_event_config:repository_event_config list ->
  source_to_build:source_to_build list ->
  trigger_template:trigger_template list ->
  webhook_config:webhook_config list ->
  unit ->
  google_cloudbuild_trigger

val yojson_of_google_cloudbuild_trigger :
  google_cloudbuild_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  disabled : bool prop;
  filename : string prop;
  filter : string prop;
  id : string prop;
  ignored_files : string list prop;
  include_build_logs : string prop;
  included_files : string list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  substitutions : (string * string) list prop;
  tags : string list prop;
  trigger_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filename:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?ignored_files:string prop list ->
  ?include_build_logs:string prop ->
  ?included_files:string prop list ->
  ?location:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?substitutions:(string * string prop) list ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  approval_config:approval_config list ->
  bitbucket_server_trigger_config:
    bitbucket_server_trigger_config list ->
  build:build list ->
  git_file_source:git_file_source list ->
  github:github list ->
  pubsub_config:pubsub_config list ->
  repository_event_config:repository_event_config list ->
  source_to_build:source_to_build list ->
  trigger_template:trigger_template list ->
  webhook_config:webhook_config list ->
  string ->
  t
