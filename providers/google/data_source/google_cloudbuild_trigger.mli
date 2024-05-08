(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type approval_config = {
  approval_required : bool prop;  (** approval_required *)
}

type bitbucket_server_trigger_config__push = {
  branch : string prop;  (** branch *)
  invert_regex : bool prop;  (** invert_regex *)
  tag : string prop;  (** tag *)
}

type bitbucket_server_trigger_config__pull_request = {
  branch : string prop;  (** branch *)
  comment_control : string prop;  (** comment_control *)
  invert_regex : bool prop;  (** invert_regex *)
}

type bitbucket_server_trigger_config = {
  bitbucket_server_config_resource : string prop;
      (** bitbucket_server_config_resource *)
  project_key : string prop;  (** project_key *)
  pull_request : bitbucket_server_trigger_config__pull_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pull_request *)
  push : bitbucket_server_trigger_config__push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** push *)
  repo_slug : string prop;  (** repo_slug *)
}

type build__step__volumes = {
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}

type build__step = {
  allow_exit_codes : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allow_exit_codes *)
  allow_failure : bool prop;  (** allow_failure *)
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** args *)
  dir : string prop;  (** dir *)
  entrypoint : string prop;  (** entrypoint *)
  env : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** env *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  script : string prop;  (** script *)
  secret_env : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_env *)
  timeout : string prop;  (** timeout *)
  timing : string prop;  (** timing *)
  volumes : build__step__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** volumes *)
  wait_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** wait_for *)
}

type build__source__storage_source = {
  bucket : string prop;  (** bucket *)
  generation : string prop;  (** generation *)
  object_ : string prop; [@key "object"]  (** object *)
}

type build__source__repo_source = {
  branch_name : string prop;  (** branch_name *)
  commit_sha : string prop;  (** commit_sha *)
  dir : string prop;  (** dir *)
  invert_regex : bool prop;  (** invert_regex *)
  project_id : string prop;  (** project_id *)
  repo_name : string prop;  (** repo_name *)
  substitutions : (string * string prop) list;  (** substitutions *)
  tag_name : string prop;  (** tag_name *)
}

type build__source = {
  repo_source : build__source__repo_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** repo_source *)
  storage_source : build__source__storage_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** storage_source *)
}

type build__secret = {
  kms_key_name : string prop;  (** kms_key_name *)
  secret_env : (string * string prop) list;  (** secret_env *)
}

type build__options__volumes = {
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}

type build__options = {
  disk_size_gb : float prop;  (** disk_size_gb *)
  dynamic_substitutions : bool prop;  (** dynamic_substitutions *)
  env : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** env *)
  log_streaming_option : string prop;  (** log_streaming_option *)
  logging : string prop;  (** logging *)
  machine_type : string prop;  (** machine_type *)
  requested_verify_option : string prop;
      (** requested_verify_option *)
  secret_env : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_env *)
  source_provenance_hash : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_provenance_hash *)
  substitution_option : string prop;  (** substitution_option *)
  volumes : build__options__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** volumes *)
  worker_pool : string prop;  (** worker_pool *)
}

type build__available_secrets__secret_manager = {
  env : string prop;  (** env *)
  version_name : string prop;  (** version_name *)
}

type build__available_secrets = {
  secret_manager : build__available_secrets__secret_manager list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_manager *)
}

type build__artifacts__python_packages = {
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** paths *)
  repository : string prop;  (** repository *)
}

type build__artifacts__objects__timing = {
  end_time : string prop;  (** end_time *)
  start_time : string prop;  (** start_time *)
}

type build__artifacts__objects = {
  location : string prop;  (** location *)
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** paths *)
  timing : build__artifacts__objects__timing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** timing *)
}

type build__artifacts__npm_packages = {
  package_path : string prop;  (** package_path *)
  repository : string prop;  (** repository *)
}

type build__artifacts__maven_artifacts = {
  artifact_id : string prop;  (** artifact_id *)
  group_id : string prop;  (** group_id *)
  path : string prop;  (** path *)
  repository : string prop;  (** repository *)
  version : string prop;  (** version *)
}

type build__artifacts = {
  images : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** images *)
  maven_artifacts : build__artifacts__maven_artifacts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** maven_artifacts *)
  npm_packages : build__artifacts__npm_packages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** npm_packages *)
  objects : build__artifacts__objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** objects *)
  python_packages : build__artifacts__python_packages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** python_packages *)
}

type build = {
  artifacts : build__artifacts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** artifacts *)
  available_secrets : build__available_secrets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** available_secrets *)
  images : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** images *)
  logs_bucket : string prop;  (** logs_bucket *)
  options : build__options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** options *)
  queue_ttl : string prop;  (** queue_ttl *)
  secret : build__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret *)
  source : build__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source *)
  step : build__step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** step *)
  substitutions : (string * string prop) list;  (** substitutions *)
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
  timeout : string prop;  (** timeout *)
}

type git_file_source = {
  bitbucket_server_config : string prop;
      (** bitbucket_server_config *)
  github_enterprise_config : string prop;
      (** github_enterprise_config *)
  path : string prop;  (** path *)
  repo_type : string prop;  (** repo_type *)
  repository : string prop;  (** repository *)
  revision : string prop;  (** revision *)
  uri : string prop;  (** uri *)
}

type github__push = {
  branch : string prop;  (** branch *)
  invert_regex : bool prop;  (** invert_regex *)
  tag : string prop;  (** tag *)
}

type github__pull_request = {
  branch : string prop;  (** branch *)
  comment_control : string prop;  (** comment_control *)
  invert_regex : bool prop;  (** invert_regex *)
}

type github = {
  enterprise_config_resource_name : string prop;
      (** enterprise_config_resource_name *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
  pull_request : github__pull_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pull_request *)
  push : github__push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** push *)
}

type pubsub_config = {
  service_account_email : string prop;  (** service_account_email *)
  state : string prop;  (** state *)
  subscription : string prop;  (** subscription *)
  topic : string prop;  (** topic *)
}

type repository_event_config__push = {
  branch : string prop;  (** branch *)
  invert_regex : bool prop;  (** invert_regex *)
  tag : string prop;  (** tag *)
}

type repository_event_config__pull_request = {
  branch : string prop;  (** branch *)
  comment_control : string prop;  (** comment_control *)
  invert_regex : bool prop;  (** invert_regex *)
}

type repository_event_config = {
  pull_request : repository_event_config__pull_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pull_request *)
  push : repository_event_config__push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** push *)
  repository : string prop;  (** repository *)
}

type source_to_build = {
  bitbucket_server_config : string prop;
      (** bitbucket_server_config *)
  github_enterprise_config : string prop;
      (** github_enterprise_config *)
  ref : string prop;  (** ref *)
  repo_type : string prop;  (** repo_type *)
  repository : string prop;  (** repository *)
  uri : string prop;  (** uri *)
}

type trigger_template = {
  branch_name : string prop;  (** branch_name *)
  commit_sha : string prop;  (** commit_sha *)
  dir : string prop;  (** dir *)
  invert_regex : bool prop;  (** invert_regex *)
  project_id : string prop;  (** project_id *)
  repo_name : string prop;  (** repo_name *)
  tag_name : string prop;  (** tag_name *)
}

type webhook_config = {
  secret : string prop;  (** secret *)
  state : string prop;  (** state *)
}

type google_cloudbuild_trigger

val google_cloudbuild_trigger :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  trigger_id:string prop ->
  unit ->
  google_cloudbuild_trigger

val yojson_of_google_cloudbuild_trigger :
  google_cloudbuild_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  approval_config : approval_config list prop;
  bitbucket_server_trigger_config :
    bitbucket_server_trigger_config list prop;
  build : build list prop;
  create_time : string prop;
  description : string prop;
  disabled : bool prop;
  filename : string prop;
  filter : string prop;
  git_file_source : git_file_source list prop;
  github : github list prop;
  id : string prop;
  ignored_files : string list prop;
  include_build_logs : string prop;
  included_files : string list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  pubsub_config : pubsub_config list prop;
  repository_event_config : repository_event_config list prop;
  service_account : string prop;
  source_to_build : source_to_build list prop;
  substitutions : (string * string) list prop;
  tags : string list prop;
  trigger_id : string prop;
  trigger_template : trigger_template list prop;
  webhook_config : webhook_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  trigger_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  trigger_id:string prop ->
  string ->
  t Tf_core.resource
