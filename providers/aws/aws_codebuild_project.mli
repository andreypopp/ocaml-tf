(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type artifacts

val artifacts :
  ?artifact_identifier:string prop ->
  ?bucket_owner_access:string prop ->
  ?encryption_disabled:bool prop ->
  ?location:string prop ->
  ?name:string prop ->
  ?namespace_type:string prop ->
  ?override_artifact_name:bool prop ->
  ?packaging:string prop ->
  ?path:string prop ->
  type_:string prop ->
  unit ->
  artifacts

type build_batch_config__restrictions

val build_batch_config__restrictions :
  ?compute_types_allowed:string prop list ->
  ?maximum_builds_allowed:float prop ->
  unit ->
  build_batch_config__restrictions

type build_batch_config

val build_batch_config :
  ?combine_artifacts:bool prop ->
  ?timeout_in_mins:float prop ->
  service_role:string prop ->
  restrictions:build_batch_config__restrictions list ->
  unit ->
  build_batch_config

type cache

val cache :
  ?location:string prop ->
  ?modes:string prop list ->
  ?type_:string prop ->
  unit ->
  cache

type environment__environment_variable

val environment__environment_variable :
  ?type_:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  environment__environment_variable

type environment__registry_credential

val environment__registry_credential :
  credential:string prop ->
  credential_provider:string prop ->
  unit ->
  environment__registry_credential

type environment

val environment :
  ?certificate:string prop ->
  ?image_pull_credentials_type:string prop ->
  ?privileged_mode:bool prop ->
  compute_type:string prop ->
  image:string prop ->
  type_:string prop ->
  environment_variable:environment__environment_variable list ->
  registry_credential:environment__registry_credential list ->
  unit ->
  environment

type file_system_locations

val file_system_locations :
  ?identifier:string prop ->
  ?location:string prop ->
  ?mount_options:string prop ->
  ?mount_point:string prop ->
  ?type_:string prop ->
  unit ->
  file_system_locations

type logs_config__cloudwatch_logs

val logs_config__cloudwatch_logs :
  ?group_name:string prop ->
  ?status:string prop ->
  ?stream_name:string prop ->
  unit ->
  logs_config__cloudwatch_logs

type logs_config__s3_logs

val logs_config__s3_logs :
  ?bucket_owner_access:string prop ->
  ?encryption_disabled:bool prop ->
  ?location:string prop ->
  ?status:string prop ->
  unit ->
  logs_config__s3_logs

type logs_config

val logs_config :
  cloudwatch_logs:logs_config__cloudwatch_logs list ->
  s3_logs:logs_config__s3_logs list ->
  unit ->
  logs_config

type secondary_artifacts

val secondary_artifacts :
  ?bucket_owner_access:string prop ->
  ?encryption_disabled:bool prop ->
  ?location:string prop ->
  ?name:string prop ->
  ?namespace_type:string prop ->
  ?override_artifact_name:bool prop ->
  ?packaging:string prop ->
  ?path:string prop ->
  artifact_identifier:string prop ->
  type_:string prop ->
  unit ->
  secondary_artifacts

type secondary_source_version

val secondary_source_version :
  source_identifier:string prop ->
  source_version:string prop ->
  unit ->
  secondary_source_version

type secondary_sources__build_status_config

val secondary_sources__build_status_config :
  ?context:string prop ->
  ?target_url:string prop ->
  unit ->
  secondary_sources__build_status_config

type secondary_sources__git_submodules_config

val secondary_sources__git_submodules_config :
  fetch_submodules:bool prop ->
  unit ->
  secondary_sources__git_submodules_config

type secondary_sources

val secondary_sources :
  ?buildspec:string prop ->
  ?git_clone_depth:float prop ->
  ?insecure_ssl:bool prop ->
  ?location:string prop ->
  ?report_build_status:bool prop ->
  source_identifier:string prop ->
  type_:string prop ->
  build_status_config:secondary_sources__build_status_config list ->
  git_submodules_config:secondary_sources__git_submodules_config list ->
  unit ->
  secondary_sources

type source__build_status_config

val source__build_status_config :
  ?context:string prop ->
  ?target_url:string prop ->
  unit ->
  source__build_status_config

type source__git_submodules_config

val source__git_submodules_config :
  fetch_submodules:bool prop -> unit -> source__git_submodules_config

type source

val source :
  ?buildspec:string prop ->
  ?git_clone_depth:float prop ->
  ?insecure_ssl:bool prop ->
  ?location:string prop ->
  ?report_build_status:bool prop ->
  type_:string prop ->
  build_status_config:source__build_status_config list ->
  git_submodules_config:source__git_submodules_config list ->
  unit ->
  source

type vpc_config

val vpc_config :
  security_group_ids:string prop list ->
  subnets:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_config

type aws_codebuild_project

val aws_codebuild_project :
  ?badge_enabled:bool prop ->
  ?build_timeout:float prop ->
  ?concurrent_build_limit:float prop ->
  ?description:string prop ->
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?project_visibility:string prop ->
  ?queued_timeout:float prop ->
  ?resource_access_role:string prop ->
  ?source_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  service_role:string prop ->
  artifacts:artifacts list ->
  build_batch_config:build_batch_config list ->
  cache:cache list ->
  environment:environment list ->
  file_system_locations:file_system_locations list ->
  logs_config:logs_config list ->
  secondary_artifacts:secondary_artifacts list ->
  secondary_source_version:secondary_source_version list ->
  secondary_sources:secondary_sources list ->
  source:source list ->
  vpc_config:vpc_config list ->
  unit ->
  aws_codebuild_project

val yojson_of_aws_codebuild_project : aws_codebuild_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  badge_enabled : bool prop;
  badge_url : string prop;
  build_timeout : float prop;
  concurrent_build_limit : float prop;
  description : string prop;
  encryption_key : string prop;
  id : string prop;
  name : string prop;
  project_visibility : string prop;
  public_project_alias : string prop;
  queued_timeout : float prop;
  resource_access_role : string prop;
  service_role : string prop;
  source_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?badge_enabled:bool prop ->
  ?build_timeout:float prop ->
  ?concurrent_build_limit:float prop ->
  ?description:string prop ->
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?project_visibility:string prop ->
  ?queued_timeout:float prop ->
  ?resource_access_role:string prop ->
  ?source_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  service_role:string prop ->
  artifacts:artifacts list ->
  build_batch_config:build_batch_config list ->
  cache:cache list ->
  environment:environment list ->
  file_system_locations:file_system_locations list ->
  logs_config:logs_config list ->
  secondary_artifacts:secondary_artifacts list ->
  secondary_source_version:secondary_source_version list ->
  secondary_sources:secondary_sources list ->
  source:source list ->
  vpc_config:vpc_config list ->
  string ->
  t

val make :
  ?badge_enabled:bool prop ->
  ?build_timeout:float prop ->
  ?concurrent_build_limit:float prop ->
  ?description:string prop ->
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?project_visibility:string prop ->
  ?queued_timeout:float prop ->
  ?resource_access_role:string prop ->
  ?source_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  service_role:string prop ->
  artifacts:artifacts list ->
  build_batch_config:build_batch_config list ->
  cache:cache list ->
  environment:environment list ->
  file_system_locations:file_system_locations list ->
  logs_config:logs_config list ->
  secondary_artifacts:secondary_artifacts list ->
  secondary_source_version:secondary_source_version list ->
  secondary_sources:secondary_sources list ->
  source:source list ->
  vpc_config:vpc_config list ->
  string ->
  t Tf_core.resource
