(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type build_config__automatic_update_policy = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__automatic_update_policy) -> ()

let yojson_of_build_config__automatic_update_policy =
  (yojson_of_unit
    : build_config__automatic_update_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__automatic_update_policy

[@@@deriving.end]

type build_config__on_deploy_update_policy = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__on_deploy_update_policy) -> ()

let yojson_of_build_config__on_deploy_update_policy =
  (yojson_of_unit
    : build_config__on_deploy_update_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__on_deploy_update_policy

[@@@deriving.end]

type build_config__source__repo_source = {
  branch_name : string prop option; [@option]
  commit_sha : string prop option; [@option]
  dir : string prop option; [@option]
  invert_regex : bool prop option; [@option]
  project_id : string prop option; [@option]
  repo_name : string prop option; [@option]
  tag_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source__repo_source) -> ()

let yojson_of_build_config__source__repo_source =
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
    : build_config__source__repo_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source__repo_source

[@@@deriving.end]

type build_config__source__storage_source = {
  bucket : string prop option; [@option]
  generation : float prop option; [@option]
  object_ : string prop option; [@option] [@key "object"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source__storage_source) -> ()

let yojson_of_build_config__source__storage_source =
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
         match v_object_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_config__source__storage_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source__storage_source

[@@@deriving.end]

type build_config__source = {
  repo_source : build_config__source__repo_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_source : build_config__source__storage_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source) -> ()

let yojson_of_build_config__source =
  (function
   | {
       repo_source = v_repo_source;
       storage_source = v_storage_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_build_config__source__storage_source)
               v_storage_source
           in
           let bnd = "storage_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_repo_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_build_config__source__repo_source)
               v_repo_source
           in
           let bnd = "repo_source", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : build_config__source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source

[@@@deriving.end]

type build_config = {
  docker_repository : string prop option; [@option]
  entry_point : string prop option; [@option]
  environment_variables : string prop Tf_core.assoc option; [@option]
  runtime : string prop option; [@option]
  service_account : string prop option; [@option]
  worker_pool : string prop option; [@option]
  automatic_update_policy :
    build_config__automatic_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_deploy_update_policy :
    build_config__on_deploy_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : build_config__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config) -> ()

let yojson_of_build_config =
  (function
   | {
       docker_repository = v_docker_repository;
       entry_point = v_entry_point;
       environment_variables = v_environment_variables;
       runtime = v_runtime;
       service_account = v_service_account;
       worker_pool = v_worker_pool;
       automatic_update_policy = v_automatic_update_policy;
       on_deploy_update_policy = v_on_deploy_update_policy;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_build_config__source) v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_deploy_update_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_build_config__on_deploy_update_policy)
               v_on_deploy_update_policy
           in
           let bnd = "on_deploy_update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_update_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_build_config__automatic_update_policy)
               v_automatic_update_policy
           in
           let bnd = "automatic_update_policy", arg in
           bnd :: bnds
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
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entry_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entry_point", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config

[@@@deriving.end]

type event_trigger__event_filters = {
  attribute : string prop;
  operator : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger__event_filters) -> ()

let yojson_of_event_trigger__event_filters =
  (function
   | {
       attribute = v_attribute;
       operator = v_operator;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attribute in
         ("attribute", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger__event_filters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger__event_filters

[@@@deriving.end]

type event_trigger = {
  event_type : string prop option; [@option]
  pubsub_topic : string prop option; [@option]
  retry_policy : string prop option; [@option]
  service_account_email : string prop option; [@option]
  trigger_region : string prop option; [@option]
  event_filters : event_trigger__event_filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger) -> ()

let yojson_of_event_trigger =
  (function
   | {
       event_type = v_event_type;
       pubsub_topic = v_pubsub_topic;
       retry_policy = v_retry_policy;
       service_account_email = v_service_account_email;
       trigger_region = v_trigger_region;
       event_filters = v_event_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_event_filters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_trigger__event_filters)
               v_event_filters
           in
           let bnd = "event_filters", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trigger_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retry_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pubsub_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pubsub_topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger

[@@@deriving.end]

type service_config__secret_environment_variables = {
  key : string prop;
  project_id : string prop;
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_environment_variables) -> ()

let yojson_of_service_config__secret_environment_variables =
  (function
   | {
       key = v_key;
       project_id = v_project_id;
       secret = v_secret;
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
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_environment_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_environment_variables

[@@@deriving.end]

type service_config__secret_volumes__versions = {
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_volumes__versions) -> ()

let yojson_of_service_config__secret_volumes__versions =
  (function
   | { path = v_path; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_volumes__versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_volumes__versions

[@@@deriving.end]

type service_config__secret_volumes = {
  mount_path : string prop;
  project_id : string prop;
  secret : string prop;
  versions : service_config__secret_volumes__versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_volumes) -> ()

let yojson_of_service_config__secret_volumes =
  (function
   | {
       mount_path = v_mount_path;
       project_id = v_project_id;
       secret = v_secret;
       versions = v_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_versions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_config__secret_volumes__versions)
               v_versions
           in
           let bnd = "versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_volumes

[@@@deriving.end]

type service_config = {
  all_traffic_on_latest_revision : bool prop option; [@option]
  available_cpu : string prop option; [@option]
  available_memory : string prop option; [@option]
  environment_variables : string prop Tf_core.assoc option; [@option]
  ingress_settings : string prop option; [@option]
  max_instance_count : float prop option; [@option]
  max_instance_request_concurrency : float prop option; [@option]
  min_instance_count : float prop option; [@option]
  service : string prop option; [@option]
  service_account_email : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
  vpc_connector : string prop option; [@option]
  vpc_connector_egress_settings : string prop option; [@option]
  secret_environment_variables :
    service_config__secret_environment_variables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_volumes : service_config__secret_volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config) -> ()

let yojson_of_service_config =
  (function
   | {
       all_traffic_on_latest_revision =
         v_all_traffic_on_latest_revision;
       available_cpu = v_available_cpu;
       available_memory = v_available_memory;
       environment_variables = v_environment_variables;
       ingress_settings = v_ingress_settings;
       max_instance_count = v_max_instance_count;
       max_instance_request_concurrency =
         v_max_instance_request_concurrency;
       min_instance_count = v_min_instance_count;
       service = v_service;
       service_account_email = v_service_account_email;
       timeout_seconds = v_timeout_seconds;
       vpc_connector = v_vpc_connector;
       vpc_connector_egress_settings =
         v_vpc_connector_egress_settings;
       secret_environment_variables = v_secret_environment_variables;
       secret_volumes = v_secret_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_volumes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_config__secret_volumes)
               v_secret_volumes
           in
           let bnd = "secret_volumes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_environment_variables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_config__secret_environment_variables)
               v_secret_environment_variables
           in
           let bnd = "secret_environment_variables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_connector_egress_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_connector_egress_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_connector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_connector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instance_request_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instance_request_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_available_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "available_memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_available_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "available_cpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_traffic_on_latest_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_traffic_on_latest_revision", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config

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

type google_cloudfunctions2_function = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  build_config : build_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  event_trigger : event_trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_config : service_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudfunctions2_function) -> ()

let yojson_of_google_cloudfunctions2_function =
  (function
   | {
       description = v_description;
       id = v_id;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       build_config = v_build_config;
       event_trigger = v_event_trigger;
       service_config = v_service_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_config)
               v_service_config
           in
           let bnd = "service_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_event_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_trigger) v_event_trigger
           in
           let bnd = "event_trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_build_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_build_config) v_build_config
           in
           let bnd = "build_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudfunctions2_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudfunctions2_function

[@@@deriving.end]

let build_config__automatic_update_policy () = ()
let build_config__on_deploy_update_policy () = ()

let build_config__source__repo_source ?branch_name ?commit_sha ?dir
    ?invert_regex ?project_id ?repo_name ?tag_name () :
    build_config__source__repo_source =
  {
    branch_name;
    commit_sha;
    dir;
    invert_regex;
    project_id;
    repo_name;
    tag_name;
  }

let build_config__source__storage_source ?bucket ?generation ?object_
    () : build_config__source__storage_source =
  { bucket; generation; object_ }

let build_config__source ?(repo_source = []) ?(storage_source = [])
    () : build_config__source =
  { repo_source; storage_source }

let build_config ?docker_repository ?entry_point
    ?environment_variables ?runtime ?service_account ?worker_pool
    ?(automatic_update_policy = []) ?(on_deploy_update_policy = [])
    ?(source = []) () : build_config =
  {
    docker_repository;
    entry_point;
    environment_variables;
    runtime;
    service_account;
    worker_pool;
    automatic_update_policy;
    on_deploy_update_policy;
    source;
  }

let event_trigger__event_filters ?operator ~attribute ~value () :
    event_trigger__event_filters =
  { attribute; operator; value }

let event_trigger ?event_type ?pubsub_topic ?retry_policy
    ?service_account_email ?trigger_region ~event_filters () :
    event_trigger =
  {
    event_type;
    pubsub_topic;
    retry_policy;
    service_account_email;
    trigger_region;
    event_filters;
  }

let service_config__secret_environment_variables ~key ~project_id
    ~secret ~version () :
    service_config__secret_environment_variables =
  { key; project_id; secret; version }

let service_config__secret_volumes__versions ~path ~version () :
    service_config__secret_volumes__versions =
  { path; version }

let service_config__secret_volumes ?(versions = []) ~mount_path
    ~project_id ~secret () : service_config__secret_volumes =
  { mount_path; project_id; secret; versions }

let service_config ?all_traffic_on_latest_revision ?available_cpu
    ?available_memory ?environment_variables ?ingress_settings
    ?max_instance_count ?max_instance_request_concurrency
    ?min_instance_count ?service ?service_account_email
    ?timeout_seconds ?vpc_connector ?vpc_connector_egress_settings
    ?(secret_environment_variables = []) ?(secret_volumes = []) () :
    service_config =
  {
    all_traffic_on_latest_revision;
    available_cpu;
    available_memory;
    environment_variables;
    ingress_settings;
    max_instance_count;
    max_instance_request_concurrency;
    min_instance_count;
    service;
    service_account_email;
    timeout_seconds;
    vpc_connector;
    vpc_connector_egress_settings;
    secret_environment_variables;
    secret_volumes;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloudfunctions2_function ?description ?id ?kms_key_name
    ?labels ?project ?(build_config = []) ?(event_trigger = [])
    ?(service_config = []) ?timeouts ~location ~name () :
    google_cloudfunctions2_function =
  {
    description;
    id;
    kms_key_name;
    labels;
    location;
    name;
    project;
    build_config;
    event_trigger;
    service_config;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  environment : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
  url : string prop;
}

let make ?description ?id ?kms_key_name ?labels ?project
    ?(build_config = []) ?(event_trigger = []) ?(service_config = [])
    ?timeouts ~location ~name __id =
  let __type = "google_cloudfunctions2_function" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions2_function
        (google_cloudfunctions2_function ?description ?id
           ?kms_key_name ?labels ?project ~build_config
           ~event_trigger ~service_config ?timeouts ~location ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_name ?labels
    ?project ?(build_config = []) ?(event_trigger = [])
    ?(service_config = []) ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_name ?labels ?project
      ~build_config ~event_trigger ~service_config ?timeouts
      ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
