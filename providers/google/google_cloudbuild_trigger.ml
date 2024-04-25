(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_config = {
  approval_required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_config) -> ()

let yojson_of_approval_config =
  (function
   | { approval_required = v_approval_required } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_approval_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "approval_required", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : approval_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_config

[@@@deriving.end]

type bitbucket_server_trigger_config__pull_request = {
  branch : string prop;
  comment_control : string prop option; [@option]
  invert_regex : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bitbucket_server_trigger_config__pull_request) -> ()

let yojson_of_bitbucket_server_trigger_config__pull_request =
  (function
   | {
       branch = v_branch;
       comment_control = v_comment_control;
       invert_regex = v_invert_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment_control", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : bitbucket_server_trigger_config__pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bitbucket_server_trigger_config__pull_request

[@@@deriving.end]

type bitbucket_server_trigger_config__push = {
  branch : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bitbucket_server_trigger_config__push) -> ()

let yojson_of_bitbucket_server_trigger_config__push =
  (function
   | {
       branch = v_branch;
       invert_regex = v_invert_regex;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bitbucket_server_trigger_config__push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bitbucket_server_trigger_config__push

[@@@deriving.end]

type bitbucket_server_trigger_config = {
  bitbucket_server_config_resource : string prop;
  project_key : string prop;
  repo_slug : string prop;
  pull_request : bitbucket_server_trigger_config__pull_request list;
  push : bitbucket_server_trigger_config__push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bitbucket_server_trigger_config) -> ()

let yojson_of_bitbucket_server_trigger_config =
  (function
   | {
       bitbucket_server_config_resource =
         v_bitbucket_server_config_resource;
       project_key = v_project_key;
       repo_slug = v_repo_slug;
       pull_request = v_pull_request;
       push = v_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_bitbucket_server_trigger_config__push v_push
         in
         ("push", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_bitbucket_server_trigger_config__pull_request
             v_pull_request
         in
         ("pull_request", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_slug in
         ("repo_slug", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_key in
         ("project_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_bitbucket_server_config_resource
         in
         ("bitbucket_server_config_resource", arg) :: bnds
       in
       `Assoc bnds
    : bitbucket_server_trigger_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bitbucket_server_trigger_config

[@@@deriving.end]

type build__artifacts__maven_artifacts = {
  artifact_id : string prop option; [@option]
  group_id : string prop option; [@option]
  path : string prop option; [@option]
  repository : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__maven_artifacts) -> ()

let yojson_of_build__artifacts__maven_artifacts =
  (function
   | {
       artifact_id = v_artifact_id;
       group_id = v_group_id;
       path = v_path;
       repository = v_repository;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_artifact_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "artifact_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__artifacts__maven_artifacts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__maven_artifacts

[@@@deriving.end]

type build__artifacts__npm_packages = {
  package_path : string prop option; [@option]
  repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__npm_packages) -> ()

let yojson_of_build__artifacts__npm_packages =
  (function
   | { package_path = v_package_path; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__artifacts__npm_packages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__npm_packages

[@@@deriving.end]

type build__artifacts__objects__timing = {
  end_time : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__objects__timing) -> ()

let yojson_of_build__artifacts__objects__timing =
  (function
   | { end_time = v_end_time; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts__objects__timing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__objects__timing

[@@@deriving.end]

type build__artifacts__objects = {
  location : string prop option; [@option]
  paths : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__objects) -> ()

let yojson_of_build__artifacts__objects =
  (function
   | { location = v_location; paths = v_paths } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__artifacts__objects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__objects

[@@@deriving.end]

type build__artifacts__python_packages = {
  paths : string prop list option; [@option]
  repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__python_packages) -> ()

let yojson_of_build__artifacts__python_packages =
  (function
   | { paths = v_paths; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "paths", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__artifacts__python_packages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__python_packages

[@@@deriving.end]

type build__artifacts = {
  images : string prop list option; [@option]
  maven_artifacts : build__artifacts__maven_artifacts list;
  npm_packages : build__artifacts__npm_packages list;
  objects : build__artifacts__objects list;
  python_packages : build__artifacts__python_packages list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts) -> ()

let yojson_of_build__artifacts =
  (function
   | {
       images = v_images;
       maven_artifacts = v_maven_artifacts;
       npm_packages = v_npm_packages;
       objects = v_objects;
       python_packages = v_python_packages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts__python_packages
             v_python_packages
         in
         ("python_packages", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts__objects
             v_objects
         in
         ("objects", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts__npm_packages
             v_npm_packages
         in
         ("npm_packages", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts__maven_artifacts
             v_maven_artifacts
         in
         ("maven_artifacts", arg) :: bnds
       in
       let bnds =
         match v_images with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "images", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__artifacts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts

[@@@deriving.end]

type build__available_secrets__secret_manager = {
  env : string prop;
  version_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__available_secrets__secret_manager) -> ()

let yojson_of_build__available_secrets__secret_manager =
  (function
   | { env = v_env; version_name = v_version_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version_name in
         ("version_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_env in
         ("env", arg) :: bnds
       in
       `Assoc bnds
    : build__available_secrets__secret_manager ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__available_secrets__secret_manager

[@@@deriving.end]

type build__available_secrets = {
  secret_manager : build__available_secrets__secret_manager list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__available_secrets) -> ()

let yojson_of_build__available_secrets =
  (function
   | { secret_manager = v_secret_manager } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_build__available_secrets__secret_manager
             v_secret_manager
         in
         ("secret_manager", arg) :: bnds
       in
       `Assoc bnds
    : build__available_secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__available_secrets

[@@@deriving.end]

type build__options__volumes = {
  name : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__options__volumes) -> ()

let yojson_of_build__options__volumes =
  (function
   | { name = v_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__options__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__options__volumes

[@@@deriving.end]

type build__options = {
  disk_size_gb : float prop option; [@option]
  dynamic_substitutions : bool prop option; [@option]
  env : string prop list option; [@option]
  log_streaming_option : string prop option; [@option]
  logging : string prop option; [@option]
  machine_type : string prop option; [@option]
  requested_verify_option : string prop option; [@option]
  secret_env : string prop list option; [@option]
  source_provenance_hash : string prop list option; [@option]
  substitution_option : string prop option; [@option]
  worker_pool : string prop option; [@option]
  volumes : build__options__volumes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__options) -> ()

let yojson_of_build__options =
  (function
   | {
       disk_size_gb = v_disk_size_gb;
       dynamic_substitutions = v_dynamic_substitutions;
       env = v_env;
       log_streaming_option = v_log_streaming_option;
       logging = v_logging;
       machine_type = v_machine_type;
       requested_verify_option = v_requested_verify_option;
       secret_env = v_secret_env;
       source_provenance_hash = v_source_provenance_hash;
       substitution_option = v_substitution_option;
       worker_pool = v_worker_pool;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__options__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         match v_worker_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_substitution_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "substitution_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_provenance_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_provenance_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secret_env", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requested_verify_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "requested_verify_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_streaming_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_streaming_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "env", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_substitutions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_substitutions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__options

[@@@deriving.end]

type build__secret = {
  kms_key_name : string prop;
  secret_env : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__secret) -> ()

let yojson_of_build__secret =
  (function
   | { kms_key_name = v_kms_key_name; secret_env = v_secret_env } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "secret_env", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : build__secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__secret

[@@@deriving.end]

type build__source__repo_source = {
  branch_name : string prop option; [@option]
  commit_sha : string prop option; [@option]
  dir : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  project_id : string prop option; [@option]
  repo_name : string prop;
  substitutions : (string * string prop) list option; [@option]
  tag_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__source__repo_source) -> ()

let yojson_of_build__source__repo_source =
  (function
   | {
       branch_name = v_branch_name;
       commit_sha = v_commit_sha;
       dir = v_dir;
       invert_regex = v_invert_regex;
       project_id = v_project_id;
       repo_name = v_repo_name;
       substitutions = v_substitutions;
       tag_name = v_tag_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_substitutions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "substitutions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_name in
         ("repo_name", arg) :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commit_sha with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commit_sha", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__source__repo_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__source__repo_source

[@@@deriving.end]

type build__source__storage_source = {
  bucket : string prop;
  generation : string prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__source__storage_source) -> ()

let yojson_of_build__source__storage_source =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : build__source__storage_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__source__storage_source

[@@@deriving.end]

type build__source = {
  repo_source : build__source__repo_source list;
  storage_source : build__source__storage_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__source) -> ()

let yojson_of_build__source =
  (function
   | {
       repo_source = v_repo_source;
       storage_source = v_storage_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__source__storage_source
             v_storage_source
         in
         ("storage_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__source__repo_source
             v_repo_source
         in
         ("repo_source", arg) :: bnds
       in
       `Assoc bnds
    : build__source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__source

[@@@deriving.end]

type build__step__volumes = {
  name : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__step__volumes) -> ()

let yojson_of_build__step__volumes =
  (function
   | { name = v_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : build__step__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__step__volumes

[@@@deriving.end]

type build__step = {
  allow_exit_codes : float prop list option; [@option]
  allow_failure : bool prop option; [@option]
  args : string prop list option; [@option]
  dir : string prop option; [@option]
  entrypoint : string prop option; [@option]
  env : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  script : string prop option; [@option]
  secret_env : string prop list option; [@option]
  timeout : string prop option; [@option]
  timing : string prop option; [@option]
  wait_for : string prop list option; [@option]
  volumes : build__step__volumes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__step) -> ()

let yojson_of_build__step =
  (function
   | {
       allow_exit_codes = v_allow_exit_codes;
       allow_failure = v_allow_failure;
       args = v_args;
       dir = v_dir;
       entrypoint = v_entrypoint;
       env = v_env;
       id = v_id;
       name = v_name;
       script = v_script;
       secret_env = v_secret_env;
       timeout = v_timeout;
       timing = v_timing;
       wait_for = v_wait_for;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__step__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         match v_wait_for with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "wait_for", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secret_env", arg in
             bnd :: bnds
       in
       let bnds =
         match v_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "env", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entrypoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entrypoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_exit_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "allow_exit_codes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build__step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__step

[@@@deriving.end]

type build = {
  images : string prop list option; [@option]
  logs_bucket : string prop option; [@option]
  queue_ttl : string prop option; [@option]
  substitutions : (string * string prop) list option; [@option]
  tags : string prop list option; [@option]
  timeout : string prop option; [@option]
  artifacts : build__artifacts list;
  available_secrets : build__available_secrets list;
  options : build__options list;
  secret : build__secret list;
  source : build__source list;
  step : build__step list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build) -> ()

let yojson_of_build =
  (function
   | {
       images = v_images;
       logs_bucket = v_logs_bucket;
       queue_ttl = v_queue_ttl;
       substitutions = v_substitutions;
       tags = v_tags;
       timeout = v_timeout;
       artifacts = v_artifacts;
       available_secrets = v_available_secrets;
       options = v_options;
       secret = v_secret;
       source = v_source;
       step = v_step;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_build__step v_step in
         ("step", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_build__source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_build__secret v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__options v_options
         in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__available_secrets
             v_available_secrets
         in
         ("available_secrets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts v_artifacts
         in
         ("artifacts", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_substitutions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "substitutions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queue_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queue_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logs_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logs_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_images with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "images", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build

[@@@deriving.end]

type git_file_source = {
  bitbucket_server_config : string prop option; [@option]
  github_enterprise_config : string prop option; [@option]
  path : string prop;
  repo_type : string prop;
  repository : string prop option; [@option]
  revision : string prop option; [@option]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_file_source) -> ()

let yojson_of_git_file_source =
  (function
   | {
       bitbucket_server_config = v_bitbucket_server_config;
       github_enterprise_config = v_github_enterprise_config;
       path = v_path;
       repo_type = v_repo_type;
       repository = v_repository;
       revision = v_revision;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_type in
         ("repo_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_github_enterprise_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "github_enterprise_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitbucket_server_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bitbucket_server_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : git_file_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_file_source

[@@@deriving.end]

type github__pull_request = {
  branch : string prop;
  comment_control : string prop option; [@option]
  invert_regex : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github__pull_request) -> ()

let yojson_of_github__pull_request =
  (function
   | {
       branch = v_branch;
       comment_control = v_comment_control;
       invert_regex = v_invert_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment_control", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github__pull_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github__pull_request

[@@@deriving.end]

type github__push = {
  branch : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github__push) -> ()

let yojson_of_github__push =
  (function
   | {
       branch = v_branch;
       invert_regex = v_invert_regex;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github__push -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github__push

[@@@deriving.end]

type github = {
  enterprise_config_resource_name : string prop option; [@option]
  name : string prop option; [@option]
  owner : string prop option; [@option]
  pull_request : github__pull_request list;
  push : github__push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github) -> ()

let yojson_of_github =
  (function
   | {
       enterprise_config_resource_name =
         v_enterprise_config_resource_name;
       name = v_name;
       owner = v_owner;
       pull_request = v_pull_request;
       push = v_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_github__push v_push in
         ("push", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_github__pull_request
             v_pull_request
         in
         ("pull_request", arg) :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enterprise_config_resource_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enterprise_config_resource_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github

[@@@deriving.end]

type pubsub_config = {
  service_account_email : string prop option; [@option]
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pubsub_config) -> ()

let yojson_of_pubsub_config =
  (function
   | {
       service_account_email = v_service_account_email;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pubsub_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pubsub_config

[@@@deriving.end]

type repository_event_config__pull_request = {
  branch : string prop option; [@option]
  comment_control : string prop option; [@option]
  invert_regex : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_event_config__pull_request) -> ()

let yojson_of_repository_event_config__pull_request =
  (function
   | {
       branch = v_branch;
       comment_control = v_comment_control;
       invert_regex = v_invert_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : repository_event_config__pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config__pull_request

[@@@deriving.end]

type repository_event_config__push = {
  branch : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_event_config__push) -> ()

let yojson_of_repository_event_config__push =
  (function
   | {
       branch = v_branch;
       invert_regex = v_invert_regex;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : repository_event_config__push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config__push

[@@@deriving.end]

type repository_event_config = {
  repository : string prop option; [@option]
  pull_request : repository_event_config__pull_request list;
  push : repository_event_config__push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_event_config) -> ()

let yojson_of_repository_event_config =
  (function
   | {
       repository = v_repository;
       pull_request = v_pull_request;
       push = v_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_repository_event_config__push
             v_push
         in
         ("push", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_repository_event_config__pull_request
             v_pull_request
         in
         ("pull_request", arg) :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : repository_event_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config

[@@@deriving.end]

type source_to_build = {
  bitbucket_server_config : string prop option; [@option]
  github_enterprise_config : string prop option; [@option]
  ref : string prop;
  repo_type : string prop;
  repository : string prop option; [@option]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_to_build) -> ()

let yojson_of_source_to_build =
  (function
   | {
       bitbucket_server_config = v_bitbucket_server_config;
       github_enterprise_config = v_github_enterprise_config;
       ref = v_ref;
       repo_type = v_repo_type;
       repository = v_repository;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_type in
         ("repo_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ref in
         ("ref", arg) :: bnds
       in
       let bnds =
         match v_github_enterprise_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "github_enterprise_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitbucket_server_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bitbucket_server_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_to_build -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_to_build

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type trigger_template = {
  branch_name : string prop option; [@option]
  commit_sha : string prop option; [@option]
  dir : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  project_id : string prop option; [@option]
  repo_name : string prop option; [@option]
  tag_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_template) -> ()

let yojson_of_trigger_template =
  (function
   | {
       branch_name = v_branch_name;
       commit_sha = v_commit_sha;
       dir = v_dir;
       invert_regex = v_invert_regex;
       project_id = v_project_id;
       repo_name = v_repo_name;
       tag_name = v_tag_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repo_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commit_sha with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commit_sha", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_template

[@@@deriving.end]

type webhook_config = { secret : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_config) -> ()

let yojson_of_webhook_config =
  (function
   | { secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       `Assoc bnds
    : webhook_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_config

[@@@deriving.end]

type google_cloudbuild_trigger = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  filename : string prop option; [@option]
  filter : string prop option; [@option]
  id : string prop option; [@option]
  ignored_files : string prop list option; [@option]
  include_build_logs : string prop option; [@option]
  included_files : string prop list option; [@option]
  location : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  service_account : string prop option; [@option]
  substitutions : (string * string prop) list option; [@option]
  tags : string prop list option; [@option]
  approval_config : approval_config list;
  bitbucket_server_trigger_config :
    bitbucket_server_trigger_config list;
  build : build list;
  git_file_source : git_file_source list;
  github : github list;
  pubsub_config : pubsub_config list;
  repository_event_config : repository_event_config list;
  source_to_build : source_to_build list;
  timeouts : timeouts option;
  trigger_template : trigger_template list;
  webhook_config : webhook_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuild_trigger) -> ()

let yojson_of_google_cloudbuild_trigger =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       filename = v_filename;
       filter = v_filter;
       id = v_id;
       ignored_files = v_ignored_files;
       include_build_logs = v_include_build_logs;
       included_files = v_included_files;
       location = v_location;
       name = v_name;
       project = v_project;
       service_account = v_service_account;
       substitutions = v_substitutions;
       tags = v_tags;
       approval_config = v_approval_config;
       bitbucket_server_trigger_config =
         v_bitbucket_server_trigger_config;
       build = v_build;
       git_file_source = v_git_file_source;
       github = v_github;
       pubsub_config = v_pubsub_config;
       repository_event_config = v_repository_event_config;
       source_to_build = v_source_to_build;
       timeouts = v_timeouts;
       trigger_template = v_trigger_template;
       webhook_config = v_webhook_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook_config v_webhook_config
         in
         ("webhook_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger_template
             v_trigger_template
         in
         ("trigger_template", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source_to_build v_source_to_build
         in
         ("source_to_build", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_repository_event_config
             v_repository_event_config
         in
         ("repository_event_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pubsub_config v_pubsub_config
         in
         ("pubsub_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_github v_github in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_git_file_source v_git_file_source
         in
         ("git_file_source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_build v_build in
         ("build", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bitbucket_server_trigger_config
             v_bitbucket_server_trigger_config
         in
         ("bitbucket_server_trigger_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_approval_config v_approval_config
         in
         ("approval_config", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_substitutions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "substitutions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_build_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "include_build_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignored_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ignored_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudbuild_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuild_trigger

[@@@deriving.end]

let approval_config ?approval_required () : approval_config =
  { approval_required }

let bitbucket_server_trigger_config__pull_request ?comment_control
    ?invert_regex ~branch () :
    bitbucket_server_trigger_config__pull_request =
  { branch; comment_control; invert_regex }

let bitbucket_server_trigger_config__push ?branch ?invert_regex ?tag
    () : bitbucket_server_trigger_config__push =
  { branch; invert_regex; tag }

let bitbucket_server_trigger_config ?(pull_request = []) ?(push = [])
    ~bitbucket_server_config_resource ~project_key ~repo_slug () :
    bitbucket_server_trigger_config =
  {
    bitbucket_server_config_resource;
    project_key;
    repo_slug;
    pull_request;
    push;
  }

let build__artifacts__maven_artifacts ?artifact_id ?group_id ?path
    ?repository ?version () : build__artifacts__maven_artifacts =
  { artifact_id; group_id; path; repository; version }

let build__artifacts__npm_packages ?package_path ?repository () :
    build__artifacts__npm_packages =
  { package_path; repository }

let build__artifacts__objects ?location ?paths () :
    build__artifacts__objects =
  { location; paths }

let build__artifacts__python_packages ?paths ?repository () :
    build__artifacts__python_packages =
  { paths; repository }

let build__artifacts ?images ?(maven_artifacts = [])
    ?(npm_packages = []) ?(objects = []) ?(python_packages = []) () :
    build__artifacts =
  { images; maven_artifacts; npm_packages; objects; python_packages }

let build__available_secrets__secret_manager ~env ~version_name () :
    build__available_secrets__secret_manager =
  { env; version_name }

let build__available_secrets ~secret_manager () :
    build__available_secrets =
  { secret_manager }

let build__options__volumes ?name ?path () : build__options__volumes
    =
  { name; path }

let build__options ?disk_size_gb ?dynamic_substitutions ?env
    ?log_streaming_option ?logging ?machine_type
    ?requested_verify_option ?secret_env ?source_provenance_hash
    ?substitution_option ?worker_pool ?(volumes = []) () :
    build__options =
  {
    disk_size_gb;
    dynamic_substitutions;
    env;
    log_streaming_option;
    logging;
    machine_type;
    requested_verify_option;
    secret_env;
    source_provenance_hash;
    substitution_option;
    worker_pool;
    volumes;
  }

let build__secret ?secret_env ~kms_key_name () : build__secret =
  { kms_key_name; secret_env }

let build__source__repo_source ?branch_name ?commit_sha ?dir
    ?invert_regex ?project_id ?substitutions ?tag_name ~repo_name ()
    : build__source__repo_source =
  {
    branch_name;
    commit_sha;
    dir;
    invert_regex;
    project_id;
    repo_name;
    substitutions;
    tag_name;
  }

let build__source__storage_source ?generation ~bucket ~object_ () :
    build__source__storage_source =
  { bucket; generation; object_ }

let build__source ?(repo_source = []) ?(storage_source = []) () :
    build__source =
  { repo_source; storage_source }

let build__step__volumes ~name ~path () : build__step__volumes =
  { name; path }

let build__step ?allow_exit_codes ?allow_failure ?args ?dir
    ?entrypoint ?env ?id ?script ?secret_env ?timeout ?timing
    ?wait_for ?(volumes = []) ~name () : build__step =
  {
    allow_exit_codes;
    allow_failure;
    args;
    dir;
    entrypoint;
    env;
    id;
    name;
    script;
    secret_env;
    timeout;
    timing;
    wait_for;
    volumes;
  }

let build ?images ?logs_bucket ?queue_ttl ?substitutions ?tags
    ?timeout ?(artifacts = []) ?(available_secrets = [])
    ?(options = []) ?(secret = []) ?(source = []) ~step () : build =
  {
    images;
    logs_bucket;
    queue_ttl;
    substitutions;
    tags;
    timeout;
    artifacts;
    available_secrets;
    options;
    secret;
    source;
    step;
  }

let git_file_source ?bitbucket_server_config
    ?github_enterprise_config ?repository ?revision ?uri ~path
    ~repo_type () : git_file_source =
  {
    bitbucket_server_config;
    github_enterprise_config;
    path;
    repo_type;
    repository;
    revision;
    uri;
  }

let github__pull_request ?comment_control ?invert_regex ~branch () :
    github__pull_request =
  { branch; comment_control; invert_regex }

let github__push ?branch ?invert_regex ?tag () : github__push =
  { branch; invert_regex; tag }

let github ?enterprise_config_resource_name ?name ?owner
    ?(pull_request = []) ?(push = []) () : github =
  {
    enterprise_config_resource_name;
    name;
    owner;
    pull_request;
    push;
  }

let pubsub_config ?service_account_email ~topic () : pubsub_config =
  { service_account_email; topic }

let repository_event_config__pull_request ?branch ?comment_control
    ?invert_regex () : repository_event_config__pull_request =
  { branch; comment_control; invert_regex }

let repository_event_config__push ?branch ?invert_regex ?tag () :
    repository_event_config__push =
  { branch; invert_regex; tag }

let repository_event_config ?repository ?(pull_request = [])
    ?(push = []) () : repository_event_config =
  { repository; pull_request; push }

let source_to_build ?bitbucket_server_config
    ?github_enterprise_config ?repository ?uri ~ref ~repo_type () :
    source_to_build =
  {
    bitbucket_server_config;
    github_enterprise_config;
    ref;
    repo_type;
    repository;
    uri;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let trigger_template ?branch_name ?commit_sha ?dir ?invert_regex
    ?project_id ?repo_name ?tag_name () : trigger_template =
  {
    branch_name;
    commit_sha;
    dir;
    invert_regex;
    project_id;
    repo_name;
    tag_name;
  }

let webhook_config ~secret () : webhook_config = { secret }

let google_cloudbuild_trigger ?description ?disabled ?filename
    ?filter ?id ?ignored_files ?include_build_logs ?included_files
    ?location ?name ?project ?service_account ?substitutions ?tags
    ?(approval_config = []) ?(bitbucket_server_trigger_config = [])
    ?(build = []) ?(git_file_source = []) ?(github = [])
    ?(pubsub_config = []) ?(repository_event_config = [])
    ?(source_to_build = []) ?timeouts ?(trigger_template = [])
    ?(webhook_config = []) () : google_cloudbuild_trigger =
  {
    description;
    disabled;
    filename;
    filter;
    id;
    ignored_files;
    include_build_logs;
    included_files;
    location;
    name;
    project;
    service_account;
    substitutions;
    tags;
    approval_config;
    bitbucket_server_trigger_config;
    build;
    git_file_source;
    github;
    pubsub_config;
    repository_event_config;
    source_to_build;
    timeouts;
    trigger_template;
    webhook_config;
  }

type t = {
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

let make ?description ?disabled ?filename ?filter ?id ?ignored_files
    ?include_build_logs ?included_files ?location ?name ?project
    ?service_account ?substitutions ?tags ?(approval_config = [])
    ?(bitbucket_server_trigger_config = []) ?(build = [])
    ?(git_file_source = []) ?(github = []) ?(pubsub_config = [])
    ?(repository_event_config = []) ?(source_to_build = []) ?timeouts
    ?(trigger_template = []) ?(webhook_config = []) __id =
  let __type = "google_cloudbuild_trigger" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filename = Prop.computed __type __id "filename";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       ignored_files = Prop.computed __type __id "ignored_files";
       include_build_logs =
         Prop.computed __type __id "include_build_logs";
       included_files = Prop.computed __type __id "included_files";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       substitutions = Prop.computed __type __id "substitutions";
       tags = Prop.computed __type __id "tags";
       trigger_id = Prop.computed __type __id "trigger_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudbuild_trigger
        (google_cloudbuild_trigger ?description ?disabled ?filename
           ?filter ?id ?ignored_files ?include_build_logs
           ?included_files ?location ?name ?project ?service_account
           ?substitutions ?tags ~approval_config
           ~bitbucket_server_trigger_config ~build ~git_file_source
           ~github ~pubsub_config ~repository_event_config
           ~source_to_build ?timeouts ~trigger_template
           ~webhook_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?filename ?filter ?id
    ?ignored_files ?include_build_logs ?included_files ?location
    ?name ?project ?service_account ?substitutions ?tags
    ?(approval_config = []) ?(bitbucket_server_trigger_config = [])
    ?(build = []) ?(git_file_source = []) ?(github = [])
    ?(pubsub_config = []) ?(repository_event_config = [])
    ?(source_to_build = []) ?timeouts ?(trigger_template = [])
    ?(webhook_config = []) __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?filename ?filter ?id ?ignored_files
      ?include_build_logs ?included_files ?location ?name ?project
      ?service_account ?substitutions ?tags ~approval_config
      ~bitbucket_server_trigger_config ~build ~git_file_source
      ~github ~pubsub_config ~repository_event_config
      ~source_to_build ?timeouts ~trigger_template ~webhook_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
