(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_project__artifacts = {
  artifact_identifier : string prop option; [@option]
      (** artifact_identifier *)
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  name : string prop option; [@option]  (** name *)
  namespace_type : string prop option; [@option]
      (** namespace_type *)
  override_artifact_name : bool prop option; [@option]
      (** override_artifact_name *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__artifacts *)

type aws_codebuild_project__build_batch_config__restrictions = {
  compute_types_allowed : string prop list option; [@option]
      (** compute_types_allowed *)
  maximum_builds_allowed : float prop option; [@option]
      (** maximum_builds_allowed *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__build_batch_config__restrictions *)

type aws_codebuild_project__build_batch_config = {
  combine_artifacts : bool prop option; [@option]
      (** combine_artifacts *)
  service_role : string prop;  (** service_role *)
  timeout_in_mins : float prop option; [@option]
      (** timeout_in_mins *)
  restrictions :
    aws_codebuild_project__build_batch_config__restrictions list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__build_batch_config *)

type aws_codebuild_project__cache = {
  location : string prop option; [@option]  (** location *)
  modes : string prop list option; [@option]  (** modes *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__cache *)

type aws_codebuild_project__environment__environment_variable = {
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment__environment_variable *)

type aws_codebuild_project__environment__registry_credential = {
  credential : string prop;  (** credential *)
  credential_provider : string prop;  (** credential_provider *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment__registry_credential *)

type aws_codebuild_project__environment = {
  certificate : string prop option; [@option]  (** certificate *)
  compute_type : string prop;  (** compute_type *)
  image : string prop;  (** image *)
  image_pull_credentials_type : string prop option; [@option]
      (** image_pull_credentials_type *)
  privileged_mode : bool prop option; [@option]
      (** privileged_mode *)
  type_ : string prop; [@key "type"]  (** type *)
  environment_variable :
    aws_codebuild_project__environment__environment_variable list;
  registry_credential :
    aws_codebuild_project__environment__registry_credential list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__environment *)

type aws_codebuild_project__file_system_locations = {
  identifier : string prop option; [@option]  (** identifier *)
  location : string prop option; [@option]  (** location *)
  mount_options : string prop option; [@option]  (** mount_options *)
  mount_point : string prop option; [@option]  (** mount_point *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__file_system_locations *)

type aws_codebuild_project__logs_config__cloudwatch_logs = {
  group_name : string prop option; [@option]  (** group_name *)
  status : string prop option; [@option]  (** status *)
  stream_name : string prop option; [@option]  (** stream_name *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__logs_config__cloudwatch_logs *)

type aws_codebuild_project__logs_config__s3_logs = {
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  status : string prop option; [@option]  (** status *)
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
  artifact_identifier : string prop;  (** artifact_identifier *)
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  name : string prop option; [@option]  (** name *)
  namespace_type : string prop option; [@option]
      (** namespace_type *)
  override_artifact_name : bool prop option; [@option]
      (** override_artifact_name *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_artifacts *)

type aws_codebuild_project__secondary_source_version = {
  source_identifier : string prop;  (** source_identifier *)
  source_version : string prop;  (** source_version *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_source_version *)

type aws_codebuild_project__secondary_sources__build_status_config = {
  context : string prop option; [@option]  (** context *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_sources__build_status_config *)

type aws_codebuild_project__secondary_sources__git_submodules_config = {
  fetch_submodules : bool prop;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__secondary_sources__git_submodules_config *)

type aws_codebuild_project__secondary_sources = {
  buildspec : string prop option; [@option]  (** buildspec *)
  git_clone_depth : float prop option; [@option]
      (** git_clone_depth *)
  insecure_ssl : bool prop option; [@option]  (** insecure_ssl *)
  location : string prop option; [@option]  (** location *)
  report_build_status : bool prop option; [@option]
      (** report_build_status *)
  source_identifier : string prop;  (** source_identifier *)
  type_ : string prop; [@key "type"]  (** type *)
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
  context : string prop option; [@option]  (** context *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__source__build_status_config *)

type aws_codebuild_project__source__git_submodules_config = {
  fetch_submodules : bool prop;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__source__git_submodules_config *)

type aws_codebuild_project__source = {
  buildspec : string prop option; [@option]  (** buildspec *)
  git_clone_depth : float prop option; [@option]
      (** git_clone_depth *)
  insecure_ssl : bool prop option; [@option]  (** insecure_ssl *)
  location : string prop option; [@option]  (** location *)
  report_build_status : bool prop option; [@option]
      (** report_build_status *)
  type_ : string prop; [@key "type"]  (** type *)
  build_status_config :
    aws_codebuild_project__source__build_status_config list;
  git_submodules_config :
    aws_codebuild_project__source__git_submodules_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_project__source *)

type aws_codebuild_project__vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_codebuild_project__vpc_config *)

type aws_codebuild_project = {
  badge_enabled : bool prop option; [@option]  (** badge_enabled *)
  build_timeout : float prop option; [@option]  (** build_timeout *)
  concurrent_build_limit : float prop option; [@option]
      (** concurrent_build_limit *)
  description : string prop option; [@option]  (** description *)
  encryption_key : string prop option; [@option]
      (** encryption_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_visibility : string prop option; [@option]
      (** project_visibility *)
  queued_timeout : float prop option; [@option]
      (** queued_timeout *)
  resource_access_role : string prop option; [@option]
      (** resource_access_role *)
  service_role : string prop;  (** service_role *)
  source_version : string prop option; [@option]
      (** source_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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
    ?concurrent_build_limit ?description ?encryption_key ?id
    ?project_visibility ?queued_timeout ?resource_access_role
    ?source_version ?tags ?tags_all ~name ~service_role ~artifacts
    ~build_batch_config ~cache ~environment ~file_system_locations
    ~logs_config ~secondary_artifacts ~secondary_source_version
    ~secondary_sources ~source ~vpc_config __resource_id =
  let __resource_type = "aws_codebuild_project" in
  let __resource =
    {
      badge_enabled;
      build_timeout;
      concurrent_build_limit;
      description;
      encryption_key;
      id;
      name;
      project_visibility;
      queued_timeout;
      resource_access_role;
      service_role;
      source_version;
      tags;
      tags_all;
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
