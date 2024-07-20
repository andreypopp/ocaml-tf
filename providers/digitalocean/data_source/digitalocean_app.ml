(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dedicated_ips = {
  id : string prop option; [@option]
  ip : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_ips) -> ()

let yojson_of_dedicated_ips =
  (function
   | { id = v_id; ip = v_ip; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
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
       `Assoc bnds
    : dedicated_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_ips

[@@@deriving.end]

type spec__worker__log_destination__papertrail = {
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__log_destination__papertrail) -> ()

let yojson_of_spec__worker__log_destination__papertrail =
  (function
   | { endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__log_destination__papertrail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__log_destination__papertrail

[@@@deriving.end]

type spec__worker__log_destination__logtail = { token : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__log_destination__logtail) -> ()

let yojson_of_spec__worker__log_destination__logtail =
  (function
   | { token = v_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__log_destination__logtail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__log_destination__logtail

[@@@deriving.end]

type spec__worker__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__log_destination__datadog) -> ()

let yojson_of_spec__worker__log_destination__datadog =
  (function
   | { api_key = v_api_key; endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__log_destination__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__log_destination__datadog

[@@@deriving.end]

type spec__worker__log_destination = {
  datadog : spec__worker__log_destination__datadog list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logtail : spec__worker__log_destination__logtail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  papertrail : spec__worker__log_destination__papertrail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__log_destination) -> ()

let yojson_of_spec__worker__log_destination =
  (function
   | {
       datadog = v_datadog;
       logtail = v_logtail;
       name = v_name;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_papertrail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__worker__log_destination__papertrail)
               v_papertrail
           in
           let bnd = "papertrail", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logtail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__worker__log_destination__logtail)
               v_logtail
           in
           let bnd = "logtail", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_datadog then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__worker__log_destination__datadog)
               v_datadog
           in
           let bnd = "datadog", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__log_destination

[@@@deriving.end]

type spec__worker__image__deploy_on_push = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__image__deploy_on_push) -> ()

let yojson_of_spec__worker__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__image__deploy_on_push

[@@@deriving.end]

type spec__worker__image = {
  deploy_on_push : spec__worker__image__deploy_on_push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry : string prop;
  registry_credentials : string prop;
  registry_type : string prop;
  repository : string prop;
  tag : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__image) -> ()

let yojson_of_spec__worker__image =
  (function
   | {
       deploy_on_push = v_deploy_on_push;
       registry = v_registry;
       registry_credentials = v_registry_credentials;
       registry_type = v_registry_type;
       repository = v_repository;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_credentials
         in
         ("registry_credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deploy_on_push then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__worker__image__deploy_on_push)
               v_deploy_on_push
           in
           let bnd = "deploy_on_push", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__image

[@@@deriving.end]

type spec__worker__gitlab = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__gitlab) -> ()

let yojson_of_spec__worker__gitlab =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__gitlab

[@@@deriving.end]

type spec__worker__github = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__github) -> ()

let yojson_of_spec__worker__github =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__github

[@@@deriving.end]

type spec__worker__git = {
  branch : string prop;
  repo_clone_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__git) -> ()

let yojson_of_spec__worker__git =
  (function
   | { branch = v_branch; repo_clone_url = v_repo_clone_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repo_clone_url
         in
         ("repo_clone_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__git

[@@@deriving.end]

type spec__worker__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__env) -> ()

let yojson_of_spec__worker__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__env

[@@@deriving.end]

type spec__worker__alert = {
  disabled : bool prop;
  operator : string prop;
  rule : string prop;
  value : float prop;
  window : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__alert) -> ()

let yojson_of_spec__worker__alert =
  (function
   | {
       disabled = v_disabled;
       operator = v_operator;
       rule = v_rule;
       value = v_value;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__alert

[@@@deriving.end]

type spec__worker = {
  alert : spec__worker__alert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  build_command : string prop;
  dockerfile_path : string prop;
  env : spec__worker__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_slug : string prop;
  git : spec__worker__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : spec__worker__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab : spec__worker__gitlab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : spec__worker__image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_count : float prop;
  instance_size_slug : string prop;
  log_destination : spec__worker__log_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  run_command : string prop;
  source_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker) -> ()

let yojson_of_spec__worker =
  (function
   | {
       alert = v_alert;
       build_command = v_build_command;
       dockerfile_path = v_dockerfile_path;
       env = v_env;
       environment_slug = v_environment_slug;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       image = v_image;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       log_destination = v_log_destination;
       name = v_name;
       run_command = v_run_command;
       source_dir = v_source_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_dir in
         ("source_dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_command in
         ("run_command", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__log_destination)
               v_log_destination
           in
           let bnd = "log_destination", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_size_slug
         in
         ("instance_size_slug", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__image) v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gitlab then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__gitlab) v_gitlab
           in
           let bnd = "gitlab", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__github) v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__git) v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_slug
         in
         ("environment_slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dockerfile_path
         in
         ("dockerfile_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build_command in
         ("build_command", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker__alert) v_alert
           in
           let bnd = "alert", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__worker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker

[@@@deriving.end]

type spec__static_site__routes = {
  path : string prop;
  preserve_path_prefix : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__routes) -> ()

let yojson_of_spec__static_site__routes =
  (function
   | { path = v_path; preserve_path_prefix = v_preserve_path_prefix }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_path_prefix
         in
         ("preserve_path_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__routes

[@@@deriving.end]

type spec__static_site__gitlab = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__gitlab) -> ()

let yojson_of_spec__static_site__gitlab =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__gitlab

[@@@deriving.end]

type spec__static_site__github = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__github) -> ()

let yojson_of_spec__static_site__github =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__github

[@@@deriving.end]

type spec__static_site__git = {
  branch : string prop;
  repo_clone_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__git) -> ()

let yojson_of_spec__static_site__git =
  (function
   | { branch = v_branch; repo_clone_url = v_repo_clone_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repo_clone_url
         in
         ("repo_clone_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__git

[@@@deriving.end]

type spec__static_site__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__env) -> ()

let yojson_of_spec__static_site__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__env

[@@@deriving.end]

type spec__static_site__cors__allow_origins = {
  exact : string prop;
  prefix : string prop;
  regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__cors__allow_origins) -> ()

let yojson_of_spec__static_site__cors__allow_origins =
  (function
   | { exact = v_exact; prefix = v_prefix; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__cors__allow_origins

[@@@deriving.end]

type spec__static_site__cors = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_origins : spec__static_site__cors__allow_origins list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_age : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__cors) -> ()

let yojson_of_spec__static_site__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expose_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_expose_headers
           in
           let bnd = "expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_origins then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__static_site__cors__allow_origins)
               v_allow_origins
           in
           let bnd = "allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_methods
           in
           let bnd = "allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_headers
           in
           let bnd = "allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__cors

[@@@deriving.end]

type spec__static_site = {
  build_command : string prop;
  catchall_document : string prop;
  cors : spec__static_site__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dockerfile_path : string prop;
  env : spec__static_site__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_slug : string prop;
  error_document : string prop;
  git : spec__static_site__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : spec__static_site__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab : spec__static_site__gitlab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  index_document : string prop;
  name : string prop;
  output_dir : string prop;
  routes : spec__static_site__routes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site) -> ()

let yojson_of_spec__static_site =
  (function
   | {
       build_command = v_build_command;
       catchall_document = v_catchall_document;
       cors = v_cors;
       dockerfile_path = v_dockerfile_path;
       env = v_env;
       environment_slug = v_environment_slug;
       error_document = v_error_document;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       index_document = v_index_document;
       name = v_name;
       output_dir = v_output_dir;
       routes = v_routes;
       source_dir = v_source_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_dir in
         ("source_dir", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_routes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__routes)
               v_routes
           in
           let bnd = "routes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output_dir in
         ("output_dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_index_document
         in
         ("index_document", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gitlab then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__gitlab)
               v_gitlab
           in
           let bnd = "gitlab", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__github)
               v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__git) v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_error_document
         in
         ("error_document", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_slug
         in
         ("environment_slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dockerfile_path
         in
         ("dockerfile_path", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site__cors)
               v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_catchall_document
         in
         ("catchall_document", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build_command in
         ("build_command", arg) :: bnds
       in
       `Assoc bnds
    : spec__static_site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site

[@@@deriving.end]

type spec__service__routes = {
  path : string prop;
  preserve_path_prefix : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__routes) -> ()

let yojson_of_spec__service__routes =
  (function
   | { path = v_path; preserve_path_prefix = v_preserve_path_prefix }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_path_prefix
         in
         ("preserve_path_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__routes

[@@@deriving.end]

type spec__service__log_destination__papertrail = {
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__log_destination__papertrail) -> ()

let yojson_of_spec__service__log_destination__papertrail =
  (function
   | { endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__log_destination__papertrail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__log_destination__papertrail

[@@@deriving.end]

type spec__service__log_destination__logtail = {
  token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__log_destination__logtail) -> ()

let yojson_of_spec__service__log_destination__logtail =
  (function
   | { token = v_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__log_destination__logtail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__log_destination__logtail

[@@@deriving.end]

type spec__service__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__log_destination__datadog) -> ()

let yojson_of_spec__service__log_destination__datadog =
  (function
   | { api_key = v_api_key; endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__log_destination__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__log_destination__datadog

[@@@deriving.end]

type spec__service__log_destination = {
  datadog : spec__service__log_destination__datadog list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logtail : spec__service__log_destination__logtail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  papertrail : spec__service__log_destination__papertrail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__log_destination) -> ()

let yojson_of_spec__service__log_destination =
  (function
   | {
       datadog = v_datadog;
       logtail = v_logtail;
       name = v_name;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_papertrail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__service__log_destination__papertrail)
               v_papertrail
           in
           let bnd = "papertrail", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logtail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__service__log_destination__logtail)
               v_logtail
           in
           let bnd = "logtail", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_datadog then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__service__log_destination__datadog)
               v_datadog
           in
           let bnd = "datadog", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__service__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__log_destination

[@@@deriving.end]

type spec__service__image__deploy_on_push = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__image__deploy_on_push) -> ()

let yojson_of_spec__service__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__image__deploy_on_push

[@@@deriving.end]

type spec__service__image = {
  deploy_on_push : spec__service__image__deploy_on_push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry : string prop;
  registry_credentials : string prop;
  registry_type : string prop;
  repository : string prop;
  tag : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__image) -> ()

let yojson_of_spec__service__image =
  (function
   | {
       deploy_on_push = v_deploy_on_push;
       registry = v_registry;
       registry_credentials = v_registry_credentials;
       registry_type = v_registry_type;
       repository = v_repository;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_credentials
         in
         ("registry_credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deploy_on_push then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__service__image__deploy_on_push)
               v_deploy_on_push
           in
           let bnd = "deploy_on_push", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__service__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__image

[@@@deriving.end]

type spec__service__health_check = {
  failure_threshold : float prop;
  http_path : string prop;
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  port : float prop;
  success_threshold : float prop;
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__health_check) -> ()

let yojson_of_spec__service__health_check =
  (function
   | {
       failure_threshold = v_failure_threshold;
       http_path = v_http_path;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       port = v_port;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_path in
         ("http_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__health_check

[@@@deriving.end]

type spec__service__gitlab = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__gitlab) -> ()

let yojson_of_spec__service__gitlab =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__gitlab

[@@@deriving.end]

type spec__service__github = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__github) -> ()

let yojson_of_spec__service__github =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__github

[@@@deriving.end]

type spec__service__git = {
  branch : string prop;
  repo_clone_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__git) -> ()

let yojson_of_spec__service__git =
  (function
   | { branch = v_branch; repo_clone_url = v_repo_clone_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repo_clone_url
         in
         ("repo_clone_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__git

[@@@deriving.end]

type spec__service__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__env) -> ()

let yojson_of_spec__service__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__env

[@@@deriving.end]

type spec__service__cors__allow_origins = {
  exact : string prop;
  prefix : string prop;
  regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__cors__allow_origins) -> ()

let yojson_of_spec__service__cors__allow_origins =
  (function
   | { exact = v_exact; prefix = v_prefix; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__cors__allow_origins

[@@@deriving.end]

type spec__service__cors = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_origins : spec__service__cors__allow_origins list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_age : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__cors) -> ()

let yojson_of_spec__service__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expose_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_expose_headers
           in
           let bnd = "expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_origins then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__service__cors__allow_origins)
               v_allow_origins
           in
           let bnd = "allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_methods
           in
           let bnd = "allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_headers
           in
           let bnd = "allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__cors

[@@@deriving.end]

type spec__service__alert = {
  disabled : bool prop;
  operator : string prop;
  rule : string prop;
  value : float prop;
  window : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__alert) -> ()

let yojson_of_spec__service__alert =
  (function
   | {
       disabled = v_disabled;
       operator = v_operator;
       rule = v_rule;
       value = v_value;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__alert

[@@@deriving.end]

type spec__service = {
  alert : spec__service__alert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  build_command : string prop;
  cors : spec__service__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dockerfile_path : string prop;
  env : spec__service__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_slug : string prop;
  git : spec__service__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : spec__service__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab : spec__service__gitlab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  health_check : spec__service__health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_port : float prop;
  image : spec__service__image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_count : float prop;
  instance_size_slug : string prop;
  internal_ports : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_destination : spec__service__log_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  routes : spec__service__routes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  run_command : string prop;
  source_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service) -> ()

let yojson_of_spec__service =
  (function
   | {
       alert = v_alert;
       build_command = v_build_command;
       cors = v_cors;
       dockerfile_path = v_dockerfile_path;
       env = v_env;
       environment_slug = v_environment_slug;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       health_check = v_health_check;
       http_port = v_http_port;
       image = v_image;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       internal_ports = v_internal_ports;
       log_destination = v_log_destination;
       name = v_name;
       routes = v_routes;
       run_command = v_run_command;
       source_dir = v_source_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_dir in
         ("source_dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_command in
         ("run_command", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_routes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__routes)
               v_routes
           in
           let bnd = "routes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__log_destination)
               v_log_destination
           in
           let bnd = "log_destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_internal_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_internal_ports
           in
           let bnd = "internal_ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_size_slug
         in
         ("instance_size_slug", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__image) v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_http_port in
         ("http_port", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__health_check)
               v_health_check
           in
           let bnd = "health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gitlab then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__gitlab)
               v_gitlab
           in
           let bnd = "gitlab", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__github)
               v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__git) v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_slug
         in
         ("environment_slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dockerfile_path
         in
         ("dockerfile_path", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build_command in
         ("build_command", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service__alert) v_alert
           in
           let bnd = "alert", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service

[@@@deriving.end]

type spec__job__log_destination__papertrail = {
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__log_destination__papertrail) -> ()

let yojson_of_spec__job__log_destination__papertrail =
  (function
   | { endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__log_destination__papertrail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__log_destination__papertrail

[@@@deriving.end]

type spec__job__log_destination__logtail = { token : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__log_destination__logtail) -> ()

let yojson_of_spec__job__log_destination__logtail =
  (function
   | { token = v_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__log_destination__logtail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__log_destination__logtail

[@@@deriving.end]

type spec__job__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__log_destination__datadog) -> ()

let yojson_of_spec__job__log_destination__datadog =
  (function
   | { api_key = v_api_key; endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__log_destination__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__log_destination__datadog

[@@@deriving.end]

type spec__job__log_destination = {
  datadog : spec__job__log_destination__datadog list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logtail : spec__job__log_destination__logtail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  papertrail : spec__job__log_destination__papertrail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__log_destination) -> ()

let yojson_of_spec__job__log_destination =
  (function
   | {
       datadog = v_datadog;
       logtail = v_logtail;
       name = v_name;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_papertrail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__job__log_destination__papertrail)
               v_papertrail
           in
           let bnd = "papertrail", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logtail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__job__log_destination__logtail)
               v_logtail
           in
           let bnd = "logtail", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_datadog then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__job__log_destination__datadog)
               v_datadog
           in
           let bnd = "datadog", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__job__log_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__log_destination

[@@@deriving.end]

type spec__job__image__deploy_on_push = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__image__deploy_on_push) -> ()

let yojson_of_spec__job__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__image__deploy_on_push

[@@@deriving.end]

type spec__job__image = {
  deploy_on_push : spec__job__image__deploy_on_push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  registry : string prop;
  registry_credentials : string prop;
  registry_type : string prop;
  repository : string prop;
  tag : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__image) -> ()

let yojson_of_spec__job__image =
  (function
   | {
       deploy_on_push = v_deploy_on_push;
       registry = v_registry;
       registry_credentials = v_registry_credentials;
       registry_type = v_registry_type;
       repository = v_repository;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_credentials
         in
         ("registry_credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deploy_on_push then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__job__image__deploy_on_push)
               v_deploy_on_push
           in
           let bnd = "deploy_on_push", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__job__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__image

[@@@deriving.end]

type spec__job__gitlab = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__gitlab) -> ()

let yojson_of_spec__job__gitlab =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__gitlab

[@@@deriving.end]

type spec__job__github = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__github) -> ()

let yojson_of_spec__job__github =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__github

[@@@deriving.end]

type spec__job__git = {
  branch : string prop;
  repo_clone_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__git) -> ()

let yojson_of_spec__job__git =
  (function
   | { branch = v_branch; repo_clone_url = v_repo_clone_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repo_clone_url
         in
         ("repo_clone_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__git

[@@@deriving.end]

type spec__job__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__env) -> ()

let yojson_of_spec__job__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__env

[@@@deriving.end]

type spec__job__alert = {
  disabled : bool prop;
  operator : string prop;
  rule : string prop;
  value : float prop;
  window : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__alert) -> ()

let yojson_of_spec__job__alert =
  (function
   | {
       disabled = v_disabled;
       operator = v_operator;
       rule = v_rule;
       value = v_value;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__alert

[@@@deriving.end]

type spec__job = {
  alert : spec__job__alert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  build_command : string prop;
  dockerfile_path : string prop;
  env : spec__job__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment_slug : string prop;
  git : spec__job__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : spec__job__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab : spec__job__gitlab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : spec__job__image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_count : float prop;
  instance_size_slug : string prop;
  kind : string prop;
  log_destination : spec__job__log_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  run_command : string prop;
  source_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job) -> ()

let yojson_of_spec__job =
  (function
   | {
       alert = v_alert;
       build_command = v_build_command;
       dockerfile_path = v_dockerfile_path;
       env = v_env;
       environment_slug = v_environment_slug;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       image = v_image;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       kind = v_kind;
       log_destination = v_log_destination;
       name = v_name;
       run_command = v_run_command;
       source_dir = v_source_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_dir in
         ("source_dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_command in
         ("run_command", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__log_destination)
               v_log_destination
           in
           let bnd = "log_destination", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_size_slug
         in
         ("instance_size_slug", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__image) v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gitlab then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__gitlab) v_gitlab
           in
           let bnd = "gitlab", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__github) v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__git) v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_slug
         in
         ("environment_slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dockerfile_path
         in
         ("dockerfile_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build_command in
         ("build_command", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__job__alert) v_alert
           in
           let bnd = "alert", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job

[@@@deriving.end]

type spec__ingress__rule__redirect = {
  authority : string prop;
  port : float prop;
  redirect_code : float prop;
  scheme : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__redirect) -> ()

let yojson_of_spec__ingress__rule__redirect =
  (function
   | {
       authority = v_authority;
       port = v_port;
       redirect_code = v_redirect_code;
       scheme = v_scheme;
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
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_redirect_code in
         ("redirect_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_authority in
         ("authority", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__redirect

[@@@deriving.end]

type spec__ingress__rule__match__path = { prefix : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__match__path) -> ()

let yojson_of_spec__ingress__rule__match__path =
  (function
   | { prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__match__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__match__path

[@@@deriving.end]

type spec__ingress__rule__match = {
  path : spec__ingress__rule__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__match) -> ()

let yojson_of_spec__ingress__rule__match =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__ingress__rule__match__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__match

[@@@deriving.end]

type spec__ingress__rule__cors__allow_origins = {
  exact : string prop;
  prefix : string prop;
  regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__cors__allow_origins) -> ()

let yojson_of_spec__ingress__rule__cors__allow_origins =
  (function
   | { exact = v_exact; prefix = v_prefix; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__cors__allow_origins

[@@@deriving.end]

type spec__ingress__rule__cors = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_origins : spec__ingress__rule__cors__allow_origins list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_age : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__cors) -> ()

let yojson_of_spec__ingress__rule__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expose_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_expose_headers
           in
           let bnd = "expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_origins then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__ingress__rule__cors__allow_origins)
               v_allow_origins
           in
           let bnd = "allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_methods
           in
           let bnd = "allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_headers
           in
           let bnd = "allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__cors

[@@@deriving.end]

type spec__ingress__rule__component = {
  name : string prop;
  preserve_path_prefix : bool prop;
  rewrite : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__component) -> ()

let yojson_of_spec__ingress__rule__component =
  (function
   | {
       name = v_name;
       preserve_path_prefix = v_preserve_path_prefix;
       rewrite = v_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rewrite in
         ("rewrite", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_path_prefix
         in
         ("preserve_path_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__component

[@@@deriving.end]

type spec__ingress__rule = {
  component : spec__ingress__rule__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors : spec__ingress__rule__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__ingress__rule__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
  redirect : spec__ingress__rule__redirect list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule) -> ()

let yojson_of_spec__ingress__rule =
  (function
   | {
       component = v_component;
       cors = v_cors;
       match_ = v_match_;
       redirect = v_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_redirect then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__rule__redirect)
               v_redirect
           in
           let bnd = "redirect", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__rule__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__rule__cors)
               v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__rule__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule

[@@@deriving.end]

type spec__ingress = {
  rule : spec__ingress__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress) -> ()

let yojson_of_spec__ingress =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__rule) v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress

[@@@deriving.end]

type spec__function__routes = {
  path : string prop;
  preserve_path_prefix : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__routes) -> ()

let yojson_of_spec__function__routes =
  (function
   | { path = v_path; preserve_path_prefix = v_preserve_path_prefix }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_preserve_path_prefix
         in
         ("preserve_path_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__routes

[@@@deriving.end]

type spec__function__log_destination__papertrail = {
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__log_destination__papertrail) -> ()

let yojson_of_spec__function__log_destination__papertrail =
  (function
   | { endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__log_destination__papertrail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__log_destination__papertrail

[@@@deriving.end]

type spec__function__log_destination__logtail = {
  token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__log_destination__logtail) -> ()

let yojson_of_spec__function__log_destination__logtail =
  (function
   | { token = v_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__log_destination__logtail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__log_destination__logtail

[@@@deriving.end]

type spec__function__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__log_destination__datadog) -> ()

let yojson_of_spec__function__log_destination__datadog =
  (function
   | { api_key = v_api_key; endpoint = v_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__log_destination__datadog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__log_destination__datadog

[@@@deriving.end]

type spec__function__log_destination = {
  datadog : spec__function__log_destination__datadog list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logtail : spec__function__log_destination__logtail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  papertrail : spec__function__log_destination__papertrail list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__log_destination) -> ()

let yojson_of_spec__function__log_destination =
  (function
   | {
       datadog = v_datadog;
       logtail = v_logtail;
       name = v_name;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_papertrail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__function__log_destination__papertrail)
               v_papertrail
           in
           let bnd = "papertrail", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logtail then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__function__log_destination__logtail)
               v_logtail
           in
           let bnd = "logtail", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_datadog then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__function__log_destination__datadog)
               v_datadog
           in
           let bnd = "datadog", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__function__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__log_destination

[@@@deriving.end]

type spec__function__gitlab = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__gitlab) -> ()

let yojson_of_spec__function__gitlab =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__gitlab

[@@@deriving.end]

type spec__function__github = {
  branch : string prop;
  deploy_on_push : bool prop;
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__github) -> ()

let yojson_of_spec__function__github =
  (function
   | {
       branch = v_branch;
       deploy_on_push = v_deploy_on_push;
       repo = v_repo;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_deploy_on_push in
         ("deploy_on_push", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__github

[@@@deriving.end]

type spec__function__git = {
  branch : string prop;
  repo_clone_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__git) -> ()

let yojson_of_spec__function__git =
  (function
   | { branch = v_branch; repo_clone_url = v_repo_clone_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repo_clone_url
         in
         ("repo_clone_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__git

[@@@deriving.end]

type spec__function__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__env) -> ()

let yojson_of_spec__function__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__env

[@@@deriving.end]

type spec__function__cors__allow_origins = {
  exact : string prop;
  prefix : string prop;
  regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__cors__allow_origins) -> ()

let yojson_of_spec__function__cors__allow_origins =
  (function
   | { exact = v_exact; prefix = v_prefix; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__cors__allow_origins

[@@@deriving.end]

type spec__function__cors = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allow_origins : spec__function__cors__allow_origins list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_age : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__cors) -> ()

let yojson_of_spec__function__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expose_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_expose_headers
           in
           let bnd = "expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_origins then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__function__cors__allow_origins)
               v_allow_origins
           in
           let bnd = "allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_methods
           in
           let bnd = "allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_headers
           in
           let bnd = "allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__cors

[@@@deriving.end]

type spec__function__alert = {
  disabled : bool prop;
  operator : string prop;
  rule : string prop;
  value : float prop;
  window : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__alert) -> ()

let yojson_of_spec__function__alert =
  (function
   | {
       disabled = v_disabled;
       operator = v_operator;
       rule = v_rule;
       value = v_value;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__alert

[@@@deriving.end]

type spec__function = {
  alert : spec__function__alert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors : spec__function__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env : spec__function__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  git : spec__function__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github : spec__function__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab : spec__function__gitlab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_destination : spec__function__log_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  routes : spec__function__routes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function) -> ()

let yojson_of_spec__function =
  (function
   | {
       alert = v_alert;
       cors = v_cors;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       log_destination = v_log_destination;
       name = v_name;
       routes = v_routes;
       source_dir = v_source_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_dir in
         ("source_dir", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_routes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__routes)
               v_routes
           in
           let bnd = "routes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__function__log_destination)
               v_log_destination
           in
           let bnd = "log_destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gitlab then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__gitlab)
               v_gitlab
           in
           let bnd = "gitlab", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__github)
               v_github
           in
           let bnd = "github", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__git) v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__cors) v_cors
           in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function__alert) v_alert
           in
           let bnd = "alert", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function

[@@@deriving.end]

type spec__env = {
  key : string prop;
  scope : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__env) -> ()

let yojson_of_spec__env =
  (function
   | {
       key = v_key;
       scope = v_scope;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__env

[@@@deriving.end]

type spec__egress = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress) -> ()

let yojson_of_spec__egress =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : spec__egress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress

[@@@deriving.end]

type spec__domain = {
  name : string prop;
  type_ : string prop; [@key "type"]
  wildcard : bool prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__domain) -> ()

let yojson_of_spec__domain =
  (function
   | {
       name = v_name;
       type_ = v_type_;
       wildcard = v_wildcard;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_wildcard in
         ("wildcard", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__domain

[@@@deriving.end]

type spec__database = {
  cluster_name : string prop;
  db_name : string prop;
  db_user : string prop;
  engine : string prop;
  name : string prop;
  production : bool prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__database) -> ()

let yojson_of_spec__database =
  (function
   | {
       cluster_name = v_cluster_name;
       db_name = v_db_name;
       db_user = v_db_user;
       engine = v_engine;
       name = v_name;
       production = v_production;
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
         let arg = yojson_of_prop yojson_of_bool v_production in
         ("production", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_user in
         ("db_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_name in
         ("db_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__database

[@@@deriving.end]

type spec__alert = { disabled : bool prop; rule : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__alert) -> ()

let yojson_of_spec__alert =
  (function
   | { disabled = v_disabled; rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       `Assoc bnds
    : spec__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__alert

[@@@deriving.end]

type spec = {
  alert : spec__alert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database : spec__database list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : spec__domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domains : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  egress : spec__egress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env : spec__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  features : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  function_ : spec__function list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "function"]
  ingress : spec__ingress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  job : spec__job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  region : string prop;
  service : spec__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  static_site : spec__static_site list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  worker : spec__worker list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       alert = v_alert;
       database = v_database;
       domain = v_domain;
       domains = v_domains;
       egress = v_egress;
       env = v_env;
       features = v_features;
       function_ = v_function_;
       ingress = v_ingress;
       job = v_job;
       name = v_name;
       region = v_region;
       service = v_service;
       static_site = v_static_site;
       worker = v_worker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_worker then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__worker) v_worker
           in
           let bnd = "worker", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_static_site then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__static_site)
               v_static_site
           in
           let bnd = "static_site", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service) v_service
           in
           let bnd = "service", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_job then bnds
         else
           let arg = (yojson_of_list yojson_of_spec__job) v_job in
           let bnd = "job", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress) v_ingress
           in
           let bnd = "ingress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_function_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__function) v_function_
           in
           let bnd = "function", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_features then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_features
           in
           let bnd = "features", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg = (yojson_of_list yojson_of_spec__env) v_env in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_egress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress) v_egress
           in
           let bnd = "egress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domains then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_domains
           in
           let bnd = "domains", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__domain) v_domain
           in
           let bnd = "domain", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__database) v_database
           in
           let bnd = "database", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__alert) v_alert
           in
           let bnd = "alert", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type digitalocean_app = {
  app_id : string prop;
  id : string prop option; [@option]
  dedicated_ips : dedicated_ips list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_app) -> ()

let yojson_of_digitalocean_app =
  (function
   | {
       app_id = v_app_id;
       id = v_id;
       dedicated_ips = v_dedicated_ips;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dedicated_ips then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dedicated_ips) v_dedicated_ips
           in
           let bnd = "dedicated_ips", arg in
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_app

[@@@deriving.end]

let dedicated_ips ?id ?ip ?status () : dedicated_ips =
  { id; ip; status }

let digitalocean_app ?id ?(dedicated_ips = []) ~app_id () :
    digitalocean_app =
  { app_id; id; dedicated_ips }

type t = {
  tf_name : string;
  active_deployment_id : string prop;
  app_id : string prop;
  created_at : string prop;
  default_ingress : string prop;
  id : string prop;
  live_url : string prop;
  project_id : string prop;
  spec : spec list prop;
  updated_at : string prop;
  urn : string prop;
}

let make ?id ?(dedicated_ips = []) ~app_id __id =
  let __type = "digitalocean_app" in
  let __attrs =
    ({
       tf_name = __id;
       active_deployment_id =
         Prop.computed __type __id "active_deployment_id";
       app_id = Prop.computed __type __id "app_id";
       created_at = Prop.computed __type __id "created_at";
       default_ingress = Prop.computed __type __id "default_ingress";
       id = Prop.computed __type __id "id";
       live_url = Prop.computed __type __id "live_url";
       project_id = Prop.computed __type __id "project_id";
       spec = Prop.computed __type __id "spec";
       updated_at = Prop.computed __type __id "updated_at";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_app
        (digitalocean_app ?id ~dedicated_ips ~app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(dedicated_ips = []) ~app_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~dedicated_ips ~app_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
