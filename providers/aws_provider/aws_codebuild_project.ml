(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codebuild_project__artifacts = {
  artifact_identifier : string option; [@option]
      (** artifact_identifier *)
  bucket_owner_access : string option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool option; [@option]
      (** encryption_disabled *)
  location : string option; [@option]  (** location *)
  name : string option; [@option]  (** name *)
  namespace_type : string option; [@option]  (** namespace_type *)
  override_artifact_name : bool option; [@option]
      (** override_artifact_name *)
  packaging : string option; [@option]  (** packaging *)
  path : string option; [@option]  (** path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__artifacts *)

type aws_codebuild_project__build_batch_config__restrictions = {
  compute_types_allowed : string list option; [@option]
      (** compute_types_allowed *)
  maximum_builds_allowed : float option; [@option]
      (** maximum_builds_allowed *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__build_batch_config__restrictions *)

type aws_codebuild_project__build_batch_config = {
  combine_artifacts : bool option; [@option]
      (** combine_artifacts *)
  service_role : string;  (** service_role *)
  timeout_in_mins : float option; [@option]  (** timeout_in_mins *)
  restrictions :
    aws_codebuild_project__build_batch_config__restrictions list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__build_batch_config *)

type aws_codebuild_project__cache = {
  location : string option; [@option]  (** location *)
  modes : string list option; [@option]  (** modes *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__cache *)

type aws_codebuild_project__environment__environment_variable = {
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment__environment_variable *)

type aws_codebuild_project__environment__registry_credential = {
  credential : string;  (** credential *)
  credential_provider : string;  (** credential_provider *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment__registry_credential *)

type aws_codebuild_project__environment = {
  certificate : string option; [@option]  (** certificate *)
  compute_type : string;  (** compute_type *)
  image : string;  (** image *)
  image_pull_credentials_type : string option; [@option]
      (** image_pull_credentials_type *)
  privileged_mode : bool option; [@option]  (** privileged_mode *)
  type_ : string; [@key "type"]  (** type *)
  environment_variable :
    aws_codebuild_project__environment__environment_variable list;
  registry_credential :
    aws_codebuild_project__environment__registry_credential list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment *)

type aws_codebuild_project__file_system_locations = {
  identifier : string option; [@option]  (** identifier *)
  location : string option; [@option]  (** location *)
  mount_options : string option; [@option]  (** mount_options *)
  mount_point : string option; [@option]  (** mount_point *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__file_system_locations *)

type aws_codebuild_project__logs_config__cloudwatch_logs = {
  group_name : string option; [@option]  (** group_name *)
  status : string option; [@option]  (** status *)
  stream_name : string option; [@option]  (** stream_name *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__logs_config__cloudwatch_logs *)

type aws_codebuild_project__logs_config__s3_logs = {
  bucket_owner_access : string option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool option; [@option]
      (** encryption_disabled *)
  location : string option; [@option]  (** location *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__logs_config__s3_logs *)

type aws_codebuild_project__logs_config = {
  cloudwatch_logs :
    aws_codebuild_project__logs_config__cloudwatch_logs list;
  s3_logs : aws_codebuild_project__logs_config__s3_logs list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__logs_config *)

type aws_codebuild_project__secondary_artifacts = {
  artifact_identifier : string;  (** artifact_identifier *)
  bucket_owner_access : string option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool option; [@option]
      (** encryption_disabled *)
  location : string option; [@option]  (** location *)
  name : string option; [@option]  (** name *)
  namespace_type : string option; [@option]  (** namespace_type *)
  override_artifact_name : bool option; [@option]
      (** override_artifact_name *)
  packaging : string option; [@option]  (** packaging *)
  path : string option; [@option]  (** path *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_artifacts *)

type aws_codebuild_project__secondary_source_version = {
  source_identifier : string;  (** source_identifier *)
  source_version : string;  (** source_version *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_source_version *)

type aws_codebuild_project__secondary_sources__build_status_config = {
  context : string option; [@option]  (** context *)
  target_url : string option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_sources__build_status_config *)

type aws_codebuild_project__secondary_sources__git_submodules_config = {
  fetch_submodules : bool;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_sources__git_submodules_config *)

type aws_codebuild_project__secondary_sources = {
  buildspec : string option; [@option]  (** buildspec *)
  git_clone_depth : float option; [@option]  (** git_clone_depth *)
  insecure_ssl : bool option; [@option]  (** insecure_ssl *)
  location : string option; [@option]  (** location *)
  report_build_status : bool option; [@option]
      (** report_build_status *)
  source_identifier : string;  (** source_identifier *)
  type_ : string; [@key "type"]  (** type *)
  build_status_config :
    aws_codebuild_project__secondary_sources__build_status_config
    list;
  git_submodules_config :
    aws_codebuild_project__secondary_sources__git_submodules_config
    list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_sources *)

type aws_codebuild_project__source__build_status_config = {
  context : string option; [@option]  (** context *)
  target_url : string option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__source__build_status_config *)

type aws_codebuild_project__source__git_submodules_config = {
  fetch_submodules : bool;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__source__git_submodules_config *)

type aws_codebuild_project__source = {
  buildspec : string option; [@option]  (** buildspec *)
  git_clone_depth : float option; [@option]  (** git_clone_depth *)
  insecure_ssl : bool option; [@option]  (** insecure_ssl *)
  location : string option; [@option]  (** location *)
  report_build_status : bool option; [@option]
      (** report_build_status *)
  type_ : string; [@key "type"]  (** type *)
  build_status_config :
    aws_codebuild_project__source__build_status_config list;
  git_submodules_config :
    aws_codebuild_project__source__git_submodules_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__source *)

type aws_codebuild_project__vpc_config = {
  security_group_ids : string list;  (** security_group_ids *)
  subnets : string list;  (** subnets *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__vpc_config *)

type aws_codebuild_project = {
  badge_enabled : bool option; [@option]  (** badge_enabled *)
  build_timeout : float option; [@option]  (** build_timeout *)
  concurrent_build_limit : float option; [@option]
      (** concurrent_build_limit *)
  name : string;  (** name *)
  project_visibility : string option; [@option]
      (** project_visibility *)
  queued_timeout : float option; [@option]  (** queued_timeout *)
  resource_access_role : string option; [@option]
      (** resource_access_role *)
  service_role : string;  (** service_role *)
  source_version : string option; [@option]  (** source_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  artifacts : aws_codebuild_project__artifacts list;
  build_batch_config :
    aws_codebuild_project__build_batch_config list;
  cache : aws_codebuild_project__cache list;
  environment : aws_codebuild_project__environment list;
  file_system_locations :
    aws_codebuild_project__file_system_locations list;
  logs_config : aws_codebuild_project__logs_config list;
  secondary_artifacts :
    aws_codebuild_project__secondary_artifacts list;
  secondary_source_version :
    aws_codebuild_project__secondary_source_version list;
  secondary_sources : aws_codebuild_project__secondary_sources list;
  source : aws_codebuild_project__source list;
  vpc_config : aws_codebuild_project__vpc_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_project *)

let aws_codebuild_project ?badge_enabled ?build_timeout
    ?concurrent_build_limit ?project_visibility ?queued_timeout
    ?resource_access_role ?source_version ?tags ~name ~service_role
    ~artifacts ~build_batch_config ~cache ~environment
    ~file_system_locations ~logs_config ~secondary_artifacts
    ~secondary_source_version ~secondary_sources ~source ~vpc_config
    __resource_id =
  let __resource_type = "aws_codebuild_project" in
  let __resource =
    {
      badge_enabled;
      build_timeout;
      concurrent_build_limit;
      name;
      project_visibility;
      queued_timeout;
      resource_access_role;
      service_role;
      source_version;
      tags;
      artifacts;
      build_batch_config;
      cache;
      environment;
      file_system_locations;
      logs_config;
      secondary_artifacts;
      secondary_source_version;
      secondary_sources;
      source;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_project __resource);
  ()
