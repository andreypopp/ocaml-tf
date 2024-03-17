(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_project__artifacts
type aws_codebuild_project__build_batch_config__restrictions
type aws_codebuild_project__build_batch_config
type aws_codebuild_project__cache
type aws_codebuild_project__environment__environment_variable
type aws_codebuild_project__environment__registry_credential
type aws_codebuild_project__environment
type aws_codebuild_project__file_system_locations
type aws_codebuild_project__logs_config__cloudwatch_logs
type aws_codebuild_project__logs_config__s3_logs
type aws_codebuild_project__logs_config
type aws_codebuild_project__secondary_artifacts
type aws_codebuild_project__secondary_source_version
type aws_codebuild_project__secondary_sources__build_status_config
type aws_codebuild_project__secondary_sources__git_submodules_config
type aws_codebuild_project__secondary_sources
type aws_codebuild_project__source__build_status_config
type aws_codebuild_project__source__git_submodules_config
type aws_codebuild_project__source
type aws_codebuild_project__vpc_config
type aws_codebuild_project

val aws_codebuild_project :
  ?badge_enabled:bool ->
  ?build_timeout:float ->
  ?concurrent_build_limit:float ->
  ?project_visibility:string ->
  ?queued_timeout:float ->
  ?resource_access_role:string ->
  ?source_version:string ->
  ?tags:(string * string) list ->
  name:string ->
  service_role:string ->
  artifacts:aws_codebuild_project__artifacts list ->
  build_batch_config:aws_codebuild_project__build_batch_config list ->
  cache:aws_codebuild_project__cache list ->
  environment:aws_codebuild_project__environment list ->
  file_system_locations:
    aws_codebuild_project__file_system_locations list ->
  logs_config:aws_codebuild_project__logs_config list ->
  secondary_artifacts:aws_codebuild_project__secondary_artifacts list ->
  secondary_source_version:
    aws_codebuild_project__secondary_source_version list ->
  secondary_sources:aws_codebuild_project__secondary_sources list ->
  source:aws_codebuild_project__source list ->
  vpc_config:aws_codebuild_project__vpc_config list ->
  string ->
  unit
