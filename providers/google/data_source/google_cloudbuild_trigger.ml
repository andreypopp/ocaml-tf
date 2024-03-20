(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_config = { approval_required : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_config) -> ()

let yojson_of_approval_config =
  (function
   | { approval_required = v_approval_required } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_approval_required
         in
         ("approval_required", arg) :: bnds
       in
       `Assoc bnds
    : approval_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_config

[@@@deriving.end]

type bitbucket_server_trigger_config__push = {
  branch : string prop;
  invert_regex : bool prop;
  tag : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : bitbucket_server_trigger_config__push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bitbucket_server_trigger_config__push

[@@@deriving.end]

type bitbucket_server_trigger_config__pull_request = {
  branch : string prop;
  comment_control : string prop;
  invert_regex : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comment_control
         in
         ("comment_control", arg) :: bnds
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

type bitbucket_server_trigger_config = {
  bitbucket_server_config_resource : string prop;
  project_key : string prop;
  pull_request : bitbucket_server_trigger_config__pull_request list;
  push : bitbucket_server_trigger_config__push list;
  repo_slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bitbucket_server_trigger_config) -> ()

let yojson_of_bitbucket_server_trigger_config =
  (function
   | {
       bitbucket_server_config_resource =
         v_bitbucket_server_config_resource;
       project_key = v_project_key;
       pull_request = v_pull_request;
       push = v_push;
       repo_slug = v_repo_slug;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_slug in
         ("repo_slug", arg) :: bnds
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
  allow_exit_codes : float prop list;
  allow_failure : bool prop;
  args : string prop list;
  dir : string prop;
  entrypoint : string prop;
  env : string prop list;
  id : string prop;
  name : string prop;
  script : string prop;
  secret_env : string prop list;
  timeout : string prop;
  timing : string prop;
  volumes : build__step__volumes list;
  wait_for : string prop list;
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
       volumes = v_volumes;
       wait_for = v_wait_for;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_wait_for
         in
         ("wait_for", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__step__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timing in
         ("timing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_secret_env
         in
         ("secret_env", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script in
         ("script", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entrypoint in
         ("entrypoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dir in
         ("dir", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_args
         in
         ("args", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_allow_failure in
         ("allow_failure", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_allow_exit_codes
         in
         ("allow_exit_codes", arg) :: bnds
       in
       `Assoc bnds
    : build__step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__step

[@@@deriving.end]

type build__source__storage_source = {
  bucket : string prop;
  generation : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_generation in
         ("generation", arg) :: bnds
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

type build__source__repo_source = {
  branch_name : string prop;
  commit_sha : string prop;
  dir : string prop;
  invert_regex : bool prop;
  project_id : string prop;
  repo_name : string prop;
  substitutions : (string * string prop) list;
  tag_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_tag_name in
         ("tag_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_substitutions
         in
         ("substitutions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_name in
         ("repo_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dir in
         ("dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_commit_sha in
         ("commit_sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       `Assoc bnds
    : build__source__repo_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__source__repo_source

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

type build__secret = {
  kms_key_name : string prop;
  secret_env : (string * string prop) list;
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_secret_env
         in
         ("secret_env", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : build__secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__secret

[@@@deriving.end]

type build__options__volumes = {
  name : string prop;
  path : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : build__options__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__options__volumes

[@@@deriving.end]

type build__options = {
  disk_size_gb : float prop;
  dynamic_substitutions : bool prop;
  env : string prop list;
  log_streaming_option : string prop;
  logging : string prop;
  machine_type : string prop;
  requested_verify_option : string prop;
  secret_env : string prop list;
  source_provenance_hash : string prop list;
  substitution_option : string prop;
  volumes : build__options__volumes list;
  worker_pool : string prop;
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
       volumes = v_volumes;
       worker_pool = v_worker_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_worker_pool in
         ("worker_pool", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__options__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_substitution_option
         in
         ("substitution_option", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_source_provenance_hash
         in
         ("source_provenance_hash", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_secret_env
         in
         ("secret_env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_requested_verify_option
         in
         ("requested_verify_option", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logging in
         ("logging", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_streaming_option
         in
         ("log_streaming_option", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_dynamic_substitutions
         in
         ("dynamic_substitutions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       `Assoc bnds
    : build__options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__options

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

type build__artifacts__python_packages = {
  paths : string prop list;
  repository : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_paths
         in
         ("paths", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts__python_packages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__python_packages

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
  location : string prop;
  paths : string prop list;
  timing : build__artifacts__objects__timing list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build__artifacts__objects) -> ()

let yojson_of_build__artifacts__objects =
  (function
   | { location = v_location; paths = v_paths; timing = v_timing } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__artifacts__objects__timing
             v_timing
         in
         ("timing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_paths
         in
         ("paths", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts__objects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__objects

[@@@deriving.end]

type build__artifacts__npm_packages = {
  package_path : string prop;
  repository : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_package_path in
         ("package_path", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts__npm_packages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__npm_packages

[@@@deriving.end]

type build__artifacts__maven_artifacts = {
  artifact_id : string prop;
  group_id : string prop;
  path : string prop;
  repository : string prop;
  version : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_artifact_id in
         ("artifact_id", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts__maven_artifacts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts__maven_artifacts

[@@@deriving.end]

type build__artifacts = {
  images : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_images
         in
         ("images", arg) :: bnds
       in
       `Assoc bnds
    : build__artifacts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build__artifacts

[@@@deriving.end]

type build = {
  artifacts : build__artifacts list;
  available_secrets : build__available_secrets list;
  images : string prop list;
  logs_bucket : string prop;
  options : build__options list;
  queue_ttl : string prop;
  secret : build__secret list;
  source : build__source list;
  step : build__step list;
  substitutions : (string * string prop) list;
  tags : string prop list;
  timeout : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build) -> ()

let yojson_of_build =
  (function
   | {
       artifacts = v_artifacts;
       available_secrets = v_available_secrets;
       images = v_images;
       logs_bucket = v_logs_bucket;
       options = v_options;
       queue_ttl = v_queue_ttl;
       secret = v_secret;
       source = v_source;
       step = v_step;
       substitutions = v_substitutions;
       tags = v_tags;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_substitutions
         in
         ("substitutions", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_queue_ttl in
         ("queue_ttl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build__options v_options
         in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logs_bucket in
         ("logs_bucket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_images
         in
         ("images", arg) :: bnds
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
       `Assoc bnds
    : build -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build

[@@@deriving.end]

type git_file_source = {
  bitbucket_server_config : string prop;
  github_enterprise_config : string prop;
  path : string prop;
  repo_type : string prop;
  repository : string prop;
  revision : string prop;
  uri : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_github_enterprise_config
         in
         ("github_enterprise_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bitbucket_server_config
         in
         ("bitbucket_server_config", arg) :: bnds
       in
       `Assoc bnds
    : git_file_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_file_source

[@@@deriving.end]

type github__push = {
  branch : string prop;
  invert_regex : bool prop;
  tag : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github__push -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github__push

[@@@deriving.end]

type github__pull_request = {
  branch : string prop;
  comment_control : string prop;
  invert_regex : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comment_control
         in
         ("comment_control", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github__pull_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github__pull_request

[@@@deriving.end]

type github = {
  enterprise_config_resource_name : string prop;
  name : string prop;
  owner : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_enterprise_config_resource_name
         in
         ("enterprise_config_resource_name", arg) :: bnds
       in
       `Assoc bnds
    : github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github

[@@@deriving.end]

type pubsub_config = {
  service_account_email : string prop;
  state : string prop;
  subscription : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pubsub_config) -> ()

let yojson_of_pubsub_config =
  (function
   | {
       service_account_email = v_service_account_email;
       state = v_state;
       subscription = v_subscription;
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
         let arg = yojson_of_prop yojson_of_string v_subscription in
         ("subscription", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       `Assoc bnds
    : pubsub_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pubsub_config

[@@@deriving.end]

type repository_event_config__push = {
  branch : string prop;
  invert_regex : bool prop;
  tag : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : repository_event_config__push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config__push

[@@@deriving.end]

type repository_event_config__pull_request = {
  branch : string prop;
  comment_control : string prop;
  invert_regex : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comment_control
         in
         ("comment_control", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : repository_event_config__pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config__pull_request

[@@@deriving.end]

type repository_event_config = {
  pull_request : repository_event_config__pull_request list;
  push : repository_event_config__push list;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_event_config) -> ()

let yojson_of_repository_event_config =
  (function
   | {
       pull_request = v_pull_request;
       push = v_push;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
       `Assoc bnds
    : repository_event_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_event_config

[@@@deriving.end]

type source_to_build = {
  bitbucket_server_config : string prop;
  github_enterprise_config : string prop;
  ref : string prop;
  repo_type : string prop;
  repository : string prop;
  uri : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_github_enterprise_config
         in
         ("github_enterprise_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bitbucket_server_config
         in
         ("bitbucket_server_config", arg) :: bnds
       in
       `Assoc bnds
    : source_to_build -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_to_build

[@@@deriving.end]

type trigger_template = {
  branch_name : string prop;
  commit_sha : string prop;
  dir : string prop;
  invert_regex : bool prop;
  project_id : string prop;
  repo_name : string prop;
  tag_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_tag_name in
         ("tag_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_name in
         ("repo_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dir in
         ("dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_commit_sha in
         ("commit_sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       `Assoc bnds
    : trigger_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_template

[@@@deriving.end]

type webhook_config = { secret : string prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_config) -> ()

let yojson_of_webhook_config =
  (function
   | { secret = v_secret; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
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
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  trigger_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuild_trigger) -> ()

let yojson_of_google_cloudbuild_trigger =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       trigger_id = v_trigger_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger_id in
         ("trigger_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudbuild_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuild_trigger

[@@@deriving.end]

let google_cloudbuild_trigger ?id ?project ~location ~trigger_id () :
    google_cloudbuild_trigger =
  { id; location; project; trigger_id }

type t = {
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

let make ?id ?project ~location ~trigger_id __id =
  let __type = "google_cloudbuild_trigger" in
  let __attrs =
    ({
       approval_config = Prop.computed __type __id "approval_config";
       bitbucket_server_trigger_config =
         Prop.computed __type __id "bitbucket_server_trigger_config";
       build = Prop.computed __type __id "build";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filename = Prop.computed __type __id "filename";
       filter = Prop.computed __type __id "filter";
       git_file_source = Prop.computed __type __id "git_file_source";
       github = Prop.computed __type __id "github";
       id = Prop.computed __type __id "id";
       ignored_files = Prop.computed __type __id "ignored_files";
       include_build_logs =
         Prop.computed __type __id "include_build_logs";
       included_files = Prop.computed __type __id "included_files";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       pubsub_config = Prop.computed __type __id "pubsub_config";
       repository_event_config =
         Prop.computed __type __id "repository_event_config";
       service_account = Prop.computed __type __id "service_account";
       source_to_build = Prop.computed __type __id "source_to_build";
       substitutions = Prop.computed __type __id "substitutions";
       tags = Prop.computed __type __id "tags";
       trigger_id = Prop.computed __type __id "trigger_id";
       trigger_template =
         Prop.computed __type __id "trigger_template";
       webhook_config = Prop.computed __type __id "webhook_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudbuild_trigger
        (google_cloudbuild_trigger ?id ?project ~location ~trigger_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~trigger_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~trigger_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
