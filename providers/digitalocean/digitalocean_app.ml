(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__alert = {
  disabled : bool prop option; [@option]
  rule : string prop;
}
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__alert

[@@@deriving.end]

type spec__database = {
  cluster_name : string prop option; [@option]
  db_name : string prop option; [@option]
  db_user : string prop option; [@option]
  engine : string prop option; [@option]
  name : string prop option; [@option]
  production : bool prop option; [@option]
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_production with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "production", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__database

[@@@deriving.end]

type spec__domain = {
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
  wildcard : bool prop option; [@option]
  zone : string prop option; [@option]
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
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wildcard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wildcard", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__domain

[@@@deriving.end]

type spec__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__env

[@@@deriving.end]

type spec__function__alert = {
  disabled : bool prop option; [@option]
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__function__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__alert

[@@@deriving.end]

type spec__function__cors__allow_origins = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
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
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__function__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__cors__allow_origins

[@@@deriving.end]

type spec__function__cors = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : string prop option; [@option]
  allow_origins : spec__function__cors__allow_origins list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__cors) -> ()

let yojson_of_spec__function__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
       allow_origins = v_allow_origins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__function__cors__allow_origins
             v_allow_origins
         in
         ("allow_origins", arg) :: bnds
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__function__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__cors

[@@@deriving.end]

type spec__function__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__function__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__env

[@@@deriving.end]

type spec__function__git = {
  branch : string prop option; [@option]
  repo_clone_url : string prop option; [@option]
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
         match v_repo_clone_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_clone_url", arg in
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
    : spec__function__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__git

[@@@deriving.end]

type spec__function__github = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__function__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__github

[@@@deriving.end]

type spec__function__gitlab = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__function__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__gitlab

[@@@deriving.end]

type spec__function__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop option; [@option]
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
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

type spec__function__log_destination = {
  name : string prop;
  datadog : spec__function__log_destination__datadog list;
  logtail : spec__function__log_destination__logtail list;
  papertrail : spec__function__log_destination__papertrail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function__log_destination) -> ()

let yojson_of_spec__function__log_destination =
  (function
   | {
       name = v_name;
       datadog = v_datadog;
       logtail = v_logtail;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__function__log_destination__papertrail
             v_papertrail
         in
         ("papertrail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__function__log_destination__logtail
             v_logtail
         in
         ("logtail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__function__log_destination__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__function__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__log_destination

[@@@deriving.end]

type spec__function__routes = {
  path : string prop option; [@option]
  preserve_path_prefix : bool prop option; [@option]
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
         match v_preserve_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_path_prefix", arg in
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
       `Assoc bnds
    : spec__function__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function__routes

[@@@deriving.end]

type spec__function = {
  name : string prop;
  source_dir : string prop option; [@option]
  alert : spec__function__alert list;
  cors : spec__function__cors list;
  env : spec__function__env list;
  git : spec__function__git list;
  github : spec__function__github list;
  gitlab : spec__function__gitlab list;
  log_destination : spec__function__log_destination list;
  routes : spec__function__routes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__function) -> ()

let yojson_of_spec__function =
  (function
   | {
       name = v_name;
       source_dir = v_source_dir;
       alert = v_alert;
       cors = v_cors;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       log_destination = v_log_destination;
       routes = v_routes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__routes v_routes
         in
         ("routes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__log_destination
             v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__gitlab v_gitlab
         in
         ("gitlab", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__github v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__git v_git
         in
         ("git", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function__alert v_alert
         in
         ("alert", arg) :: bnds
       in
       let bnds =
         match v_source_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dir", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__function

[@@@deriving.end]

type spec__ingress__rule__component = {
  name : string prop option; [@option]
  preserve_path_prefix : bool prop option; [@option]
  rewrite : string prop option; [@option]
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
         match v_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_path_prefix", arg in
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
    : spec__ingress__rule__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__component

[@@@deriving.end]

type spec__ingress__rule__cors__allow_origins = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
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
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__cors__allow_origins

[@@@deriving.end]

type spec__ingress__rule__cors = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : string prop option; [@option]
  allow_origins : spec__ingress__rule__cors__allow_origins list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__cors) -> ()

let yojson_of_spec__ingress__rule__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
       allow_origins = v_allow_origins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress__rule__cors__allow_origins
             v_allow_origins
         in
         ("allow_origins", arg) :: bnds
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__cors

[@@@deriving.end]

type spec__ingress__rule__match__path = {
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__rule__match__path) -> ()

let yojson_of_spec__ingress__rule__match__path =
  (function
   | { prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__match__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__match__path

[@@@deriving.end]

type spec__ingress__rule__match = {
  path : spec__ingress__rule__match__path list;
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
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule__match__path
             v_path
         in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__match

[@@@deriving.end]

type spec__ingress__rule__redirect = {
  authority : string prop option; [@option]
  port : float prop option; [@option]
  redirect_code : float prop option; [@option]
  scheme : string prop option; [@option]
  uri : string prop option; [@option]
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
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "redirect_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule__redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule__redirect

[@@@deriving.end]

type spec__ingress__rule = {
  component : spec__ingress__rule__component list;
  cors : spec__ingress__rule__cors list;
  match_ : spec__ingress__rule__match list; [@key "match"]
  redirect : spec__ingress__rule__redirect list;
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
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule__redirect
             v_redirect
         in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule__component
             v_component
         in
         ("component", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__rule

[@@@deriving.end]

type spec__ingress = { rule : spec__ingress__rule list }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress) -> ()

let yojson_of_spec__ingress =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress__rule v_rule
         in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress

[@@@deriving.end]

type spec__job__alert = {
  disabled : bool prop option; [@option]
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__job__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__alert

[@@@deriving.end]

type spec__job__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__job__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__env

[@@@deriving.end]

type spec__job__git = {
  branch : string prop option; [@option]
  repo_clone_url : string prop option; [@option]
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
         match v_repo_clone_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_clone_url", arg in
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
    : spec__job__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__git

[@@@deriving.end]

type spec__job__github = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__job__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__github

[@@@deriving.end]

type spec__job__gitlab = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__job__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__gitlab

[@@@deriving.end]

type spec__job__image__deploy_on_push = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__image__deploy_on_push) -> ()

let yojson_of_spec__job__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__job__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__image__deploy_on_push

[@@@deriving.end]

type spec__job__image = {
  registry : string prop option; [@option]
  registry_type : string prop;
  repository : string prop;
  tag : string prop option; [@option]
  deploy_on_push : spec__job__image__deploy_on_push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__image) -> ()

let yojson_of_spec__job__image =
  (function
   | {
       registry = v_registry;
       registry_type = v_registry_type;
       repository = v_repository;
       tag = v_tag;
       deploy_on_push = v_deploy_on_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__image__deploy_on_push
             v_deploy_on_push
         in
         ("deploy_on_push", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         match v_registry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__job__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__image

[@@@deriving.end]

type spec__job__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop option; [@option]
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
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

type spec__job__log_destination = {
  name : string prop;
  datadog : spec__job__log_destination__datadog list;
  logtail : spec__job__log_destination__logtail list;
  papertrail : spec__job__log_destination__papertrail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job__log_destination) -> ()

let yojson_of_spec__job__log_destination =
  (function
   | {
       name = v_name;
       datadog = v_datadog;
       logtail = v_logtail;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__job__log_destination__papertrail
             v_papertrail
         in
         ("papertrail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__job__log_destination__logtail v_logtail
         in
         ("logtail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__job__log_destination__datadog v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__job__log_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job__log_destination

[@@@deriving.end]

type spec__job = {
  build_command : string prop option; [@option]
  dockerfile_path : string prop option; [@option]
  environment_slug : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_size_slug : string prop option; [@option]
  kind : string prop option; [@option]
  name : string prop;
  run_command : string prop option; [@option]
  source_dir : string prop option; [@option]
  alert : spec__job__alert list;
  env : spec__job__env list;
  git : spec__job__git list;
  github : spec__job__github list;
  gitlab : spec__job__gitlab list;
  image : spec__job__image list;
  log_destination : spec__job__log_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__job) -> ()

let yojson_of_spec__job =
  (function
   | {
       build_command = v_build_command;
       dockerfile_path = v_dockerfile_path;
       environment_slug = v_environment_slug;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       kind = v_kind;
       name = v_name;
       run_command = v_run_command;
       source_dir = v_source_dir;
       alert = v_alert;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       image = v_image;
       log_destination = v_log_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__log_destination
             v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__image v_image
         in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__gitlab v_gitlab
         in
         ("gitlab", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__github v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__job__git v_git in
         ("git", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__job__env v_env in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__job__alert v_alert
         in
         ("alert", arg) :: bnds
       in
       let bnds =
         match v_source_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_command", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_size_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_size_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dockerfile_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__job

[@@@deriving.end]

type spec__service__alert = {
  disabled : bool prop option; [@option]
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__alert

[@@@deriving.end]

type spec__service__cors__allow_origins = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
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
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__cors__allow_origins

[@@@deriving.end]

type spec__service__cors = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : string prop option; [@option]
  allow_origins : spec__service__cors__allow_origins list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__cors) -> ()

let yojson_of_spec__service__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
       allow_origins = v_allow_origins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service__cors__allow_origins
             v_allow_origins
         in
         ("allow_origins", arg) :: bnds
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__cors

[@@@deriving.end]

type spec__service__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__env

[@@@deriving.end]

type spec__service__git = {
  branch : string prop option; [@option]
  repo_clone_url : string prop option; [@option]
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
         match v_repo_clone_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_clone_url", arg in
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
    : spec__service__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__git

[@@@deriving.end]

type spec__service__github = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__service__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__github

[@@@deriving.end]

type spec__service__gitlab = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__service__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__gitlab

[@@@deriving.end]

type spec__service__health_check = {
  failure_threshold : float prop option; [@option]
  http_path : string prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  port : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
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
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__health_check

[@@@deriving.end]

type spec__service__image__deploy_on_push = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__image__deploy_on_push) -> ()

let yojson_of_spec__service__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__image__deploy_on_push

[@@@deriving.end]

type spec__service__image = {
  registry : string prop option; [@option]
  registry_type : string prop;
  repository : string prop;
  tag : string prop option; [@option]
  deploy_on_push : spec__service__image__deploy_on_push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__image) -> ()

let yojson_of_spec__service__image =
  (function
   | {
       registry = v_registry;
       registry_type = v_registry_type;
       repository = v_repository;
       tag = v_tag;
       deploy_on_push = v_deploy_on_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service__image__deploy_on_push
             v_deploy_on_push
         in
         ("deploy_on_push", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         match v_registry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__image

[@@@deriving.end]

type spec__service__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop option; [@option]
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
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

type spec__service__log_destination = {
  name : string prop;
  datadog : spec__service__log_destination__datadog list;
  logtail : spec__service__log_destination__logtail list;
  papertrail : spec__service__log_destination__papertrail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service__log_destination) -> ()

let yojson_of_spec__service__log_destination =
  (function
   | {
       name = v_name;
       datadog = v_datadog;
       logtail = v_logtail;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service__log_destination__papertrail
             v_papertrail
         in
         ("papertrail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service__log_destination__logtail
             v_logtail
         in
         ("logtail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service__log_destination__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__service__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__log_destination

[@@@deriving.end]

type spec__service__routes = {
  path : string prop option; [@option]
  preserve_path_prefix : bool prop option; [@option]
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
         match v_preserve_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_path_prefix", arg in
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
       `Assoc bnds
    : spec__service__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service__routes

[@@@deriving.end]

type spec__service = {
  build_command : string prop option; [@option]
  dockerfile_path : string prop option; [@option]
  environment_slug : string prop option; [@option]
  http_port : float prop option; [@option]
  instance_count : float prop option; [@option]
  instance_size_slug : string prop option; [@option]
  internal_ports : float prop list option; [@option]
  name : string prop;
  run_command : string prop option; [@option]
  source_dir : string prop option; [@option]
  alert : spec__service__alert list;
  cors : spec__service__cors list;
  env : spec__service__env list;
  git : spec__service__git list;
  github : spec__service__github list;
  gitlab : spec__service__gitlab list;
  health_check : spec__service__health_check list;
  image : spec__service__image list;
  log_destination : spec__service__log_destination list;
  routes : spec__service__routes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service) -> ()

let yojson_of_spec__service =
  (function
   | {
       build_command = v_build_command;
       dockerfile_path = v_dockerfile_path;
       environment_slug = v_environment_slug;
       http_port = v_http_port;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       internal_ports = v_internal_ports;
       name = v_name;
       run_command = v_run_command;
       source_dir = v_source_dir;
       alert = v_alert;
       cors = v_cors;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       health_check = v_health_check;
       image = v_image;
       log_destination = v_log_destination;
       routes = v_routes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__routes v_routes
         in
         ("routes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__log_destination
             v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__image v_image
         in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__health_check
             v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__gitlab v_gitlab
         in
         ("gitlab", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__github v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__git v_git
         in
         ("git", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service__alert v_alert
         in
         ("alert", arg) :: bnds
       in
       let bnds =
         match v_source_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_command", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_internal_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "internal_ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_size_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_size_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dockerfile_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service

[@@@deriving.end]

type spec__static_site__cors__allow_origins = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
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
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__static_site__cors__allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__cors__allow_origins

[@@@deriving.end]

type spec__static_site__cors = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : string prop option; [@option]
  allow_origins : spec__static_site__cors__allow_origins list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site__cors) -> ()

let yojson_of_spec__static_site__cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
       allow_origins = v_allow_origins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__static_site__cors__allow_origins
             v_allow_origins
         in
         ("allow_origins", arg) :: bnds
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__static_site__cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__cors

[@@@deriving.end]

type spec__static_site__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__static_site__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__env

[@@@deriving.end]

type spec__static_site__git = {
  branch : string prop option; [@option]
  repo_clone_url : string prop option; [@option]
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
         match v_repo_clone_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_clone_url", arg in
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
    : spec__static_site__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__git

[@@@deriving.end]

type spec__static_site__github = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__static_site__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__github

[@@@deriving.end]

type spec__static_site__gitlab = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__static_site__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__gitlab

[@@@deriving.end]

type spec__static_site__routes = {
  path : string prop option; [@option]
  preserve_path_prefix : bool prop option; [@option]
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
         match v_preserve_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_path_prefix", arg in
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
       `Assoc bnds
    : spec__static_site__routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site__routes

[@@@deriving.end]

type spec__static_site = {
  build_command : string prop option; [@option]
  catchall_document : string prop option; [@option]
  dockerfile_path : string prop option; [@option]
  environment_slug : string prop option; [@option]
  error_document : string prop option; [@option]
  index_document : string prop option; [@option]
  name : string prop;
  output_dir : string prop option; [@option]
  source_dir : string prop option; [@option]
  cors : spec__static_site__cors list;
  env : spec__static_site__env list;
  git : spec__static_site__git list;
  github : spec__static_site__github list;
  gitlab : spec__static_site__gitlab list;
  routes : spec__static_site__routes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__static_site) -> ()

let yojson_of_spec__static_site =
  (function
   | {
       build_command = v_build_command;
       catchall_document = v_catchall_document;
       dockerfile_path = v_dockerfile_path;
       environment_slug = v_environment_slug;
       error_document = v_error_document;
       index_document = v_index_document;
       name = v_name;
       output_dir = v_output_dir;
       source_dir = v_source_dir;
       cors = v_cors;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       routes = v_routes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__routes
             v_routes
         in
         ("routes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__gitlab
             v_gitlab
         in
         ("gitlab", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__github
             v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__git v_git
         in
         ("git", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site__cors v_cors
         in
         ("cors", arg) :: bnds
       in
       let bnds =
         match v_source_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_dir", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_index_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dockerfile_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catchall_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catchall_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__static_site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__static_site

[@@@deriving.end]

type spec__worker__alert = {
  disabled : bool prop option; [@option]
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__alert

[@@@deriving.end]

type spec__worker__env = {
  key : string prop option; [@option]
  scope : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
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
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__env

[@@@deriving.end]

type spec__worker__git = {
  branch : string prop option; [@option]
  repo_clone_url : string prop option; [@option]
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
         match v_repo_clone_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_clone_url", arg in
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
    : spec__worker__git -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__git

[@@@deriving.end]

type spec__worker__github = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__worker__github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__github

[@@@deriving.end]

type spec__worker__gitlab = {
  branch : string prop option; [@option]
  deploy_on_push : bool prop option; [@option]
  repo : string prop option; [@option]
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
         match v_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deploy_on_push", arg in
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
    : spec__worker__gitlab -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__gitlab

[@@@deriving.end]

type spec__worker__image__deploy_on_push = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__image__deploy_on_push) -> ()

let yojson_of_spec__worker__image__deploy_on_push =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__image__deploy_on_push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__image__deploy_on_push

[@@@deriving.end]

type spec__worker__image = {
  registry : string prop option; [@option]
  registry_type : string prop;
  repository : string prop;
  tag : string prop option; [@option]
  deploy_on_push : spec__worker__image__deploy_on_push list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__image) -> ()

let yojson_of_spec__worker__image =
  (function
   | {
       registry = v_registry;
       registry_type = v_registry_type;
       repository = v_repository;
       tag = v_tag;
       deploy_on_push = v_deploy_on_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__worker__image__deploy_on_push
             v_deploy_on_push
         in
         ("deploy_on_push", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_type in
         ("registry_type", arg) :: bnds
       in
       let bnds =
         match v_registry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__worker__image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__image

[@@@deriving.end]

type spec__worker__log_destination__datadog = {
  api_key : string prop;
  endpoint : string prop option; [@option]
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
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

type spec__worker__log_destination = {
  name : string prop;
  datadog : spec__worker__log_destination__datadog list;
  logtail : spec__worker__log_destination__logtail list;
  papertrail : spec__worker__log_destination__papertrail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker__log_destination) -> ()

let yojson_of_spec__worker__log_destination =
  (function
   | {
       name = v_name;
       datadog = v_datadog;
       logtail = v_logtail;
       papertrail = v_papertrail;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__worker__log_destination__papertrail
             v_papertrail
         in
         ("papertrail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__worker__log_destination__logtail
             v_logtail
         in
         ("logtail", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__worker__log_destination__datadog
             v_datadog
         in
         ("datadog", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__worker__log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker__log_destination

[@@@deriving.end]

type spec__worker = {
  build_command : string prop option; [@option]
  dockerfile_path : string prop option; [@option]
  environment_slug : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_size_slug : string prop option; [@option]
  name : string prop;
  run_command : string prop option; [@option]
  source_dir : string prop option; [@option]
  alert : spec__worker__alert list;
  env : spec__worker__env list;
  git : spec__worker__git list;
  github : spec__worker__github list;
  gitlab : spec__worker__gitlab list;
  image : spec__worker__image list;
  log_destination : spec__worker__log_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__worker) -> ()

let yojson_of_spec__worker =
  (function
   | {
       build_command = v_build_command;
       dockerfile_path = v_dockerfile_path;
       environment_slug = v_environment_slug;
       instance_count = v_instance_count;
       instance_size_slug = v_instance_size_slug;
       name = v_name;
       run_command = v_run_command;
       source_dir = v_source_dir;
       alert = v_alert;
       env = v_env;
       git = v_git;
       github = v_github;
       gitlab = v_gitlab;
       image = v_image;
       log_destination = v_log_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__log_destination
             v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__image v_image
         in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__gitlab v_gitlab
         in
         ("gitlab", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__github v_github
         in
         ("github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__git v_git
         in
         ("git", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__worker__alert v_alert
         in
         ("alert", arg) :: bnds
       in
       let bnds =
         match v_source_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_command", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_instance_size_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_size_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dockerfile_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__worker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__worker

[@@@deriving.end]

type spec = {
  domains : string prop list option; [@option]
  features : string prop list option; [@option]
  name : string prop;
  region : string prop option; [@option]
  alert : spec__alert list;
  database : spec__database list;
  domain : spec__domain list;
  env : spec__env list;
  function_ : spec__function list; [@key "function"]
  ingress : spec__ingress list;
  job : spec__job list;
  service : spec__service list;
  static_site : spec__static_site list;
  worker : spec__worker list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       domains = v_domains;
       features = v_features;
       name = v_name;
       region = v_region;
       alert = v_alert;
       database = v_database;
       domain = v_domain;
       env = v_env;
       function_ = v_function_;
       ingress = v_ingress;
       job = v_job;
       service = v_service;
       static_site = v_static_site;
       worker = v_worker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__worker v_worker in
         ("worker", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__static_site v_static_site
         in
         ("static_site", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service v_service
         in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__job v_job in
         ("job", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress v_ingress
         in
         ("ingress", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__function v_function_
         in
         ("function", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__env v_env in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__domain v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__database v_database
         in
         ("database", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__alert v_alert in
         ("alert", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "features", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type digitalocean_app = {
  id : string prop option; [@option]
  project_id : string prop option; [@option]
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_app) -> ()

let yojson_of_digitalocean_app =
  (function
   | {
       id = v_id;
       project_id = v_project_id;
       spec = v_spec;
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
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_app

[@@@deriving.end]

let spec__alert ?disabled ~rule () : spec__alert = { disabled; rule }

let spec__database ?cluster_name ?db_name ?db_user ?engine ?name
    ?production ?version () : spec__database =
  {
    cluster_name;
    db_name;
    db_user;
    engine;
    name;
    production;
    version;
  }

let spec__domain ?type_ ?wildcard ?zone ~name () : spec__domain =
  { name; type_; wildcard; zone }

let spec__env ?key ?scope ?type_ ?value () : spec__env =
  { key; scope; type_; value }

let spec__function__alert ?disabled ~operator ~rule ~value ~window ()
    : spec__function__alert =
  { disabled; operator; rule; value; window }

let spec__function__cors__allow_origins ?exact ?prefix ?regex () :
    spec__function__cors__allow_origins =
  { exact; prefix; regex }

let spec__function__cors ?allow_credentials ?allow_headers
    ?allow_methods ?expose_headers ?max_age ?(allow_origins = []) ()
    : spec__function__cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    expose_headers;
    max_age;
    allow_origins;
  }

let spec__function__env ?key ?scope ?type_ ?value () :
    spec__function__env =
  { key; scope; type_; value }

let spec__function__git ?branch ?repo_clone_url () :
    spec__function__git =
  { branch; repo_clone_url }

let spec__function__github ?branch ?deploy_on_push ?repo () :
    spec__function__github =
  { branch; deploy_on_push; repo }

let spec__function__gitlab ?branch ?deploy_on_push ?repo () :
    spec__function__gitlab =
  { branch; deploy_on_push; repo }

let spec__function__log_destination__datadog ?endpoint ~api_key () :
    spec__function__log_destination__datadog =
  { api_key; endpoint }

let spec__function__log_destination__logtail ~token () :
    spec__function__log_destination__logtail =
  { token }

let spec__function__log_destination__papertrail ~endpoint () :
    spec__function__log_destination__papertrail =
  { endpoint }

let spec__function__log_destination ?(datadog = []) ?(logtail = [])
    ?(papertrail = []) ~name () : spec__function__log_destination =
  { name; datadog; logtail; papertrail }

let spec__function__routes ?path ?preserve_path_prefix () :
    spec__function__routes =
  { path; preserve_path_prefix }

let spec__function ?source_dir ?(alert = []) ?(cors = []) ?(git = [])
    ?(github = []) ?(gitlab = []) ?(log_destination = [])
    ?(routes = []) ~name ~env () : spec__function =
  {
    name;
    source_dir;
    alert;
    cors;
    env;
    git;
    github;
    gitlab;
    log_destination;
    routes;
  }

let spec__ingress__rule__component ?name ?preserve_path_prefix
    ?rewrite () : spec__ingress__rule__component =
  { name; preserve_path_prefix; rewrite }

let spec__ingress__rule__cors__allow_origins ?exact ?prefix ?regex ()
    : spec__ingress__rule__cors__allow_origins =
  { exact; prefix; regex }

let spec__ingress__rule__cors ?allow_credentials ?allow_headers
    ?allow_methods ?expose_headers ?max_age ?(allow_origins = []) ()
    : spec__ingress__rule__cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    expose_headers;
    max_age;
    allow_origins;
  }

let spec__ingress__rule__match__path ?prefix () :
    spec__ingress__rule__match__path =
  { prefix }

let spec__ingress__rule__match ?(path = []) () :
    spec__ingress__rule__match =
  { path }

let spec__ingress__rule__redirect ?authority ?port ?redirect_code
    ?scheme ?uri () : spec__ingress__rule__redirect =
  { authority; port; redirect_code; scheme; uri }

let spec__ingress__rule ?(component = []) ?(cors = []) ?(match_ = [])
    ?(redirect = []) () : spec__ingress__rule =
  { component; cors; match_; redirect }

let spec__ingress ?(rule = []) () : spec__ingress = { rule }

let spec__job__alert ?disabled ~operator ~rule ~value ~window () :
    spec__job__alert =
  { disabled; operator; rule; value; window }

let spec__job__env ?key ?scope ?type_ ?value () : spec__job__env =
  { key; scope; type_; value }

let spec__job__git ?branch ?repo_clone_url () : spec__job__git =
  { branch; repo_clone_url }

let spec__job__github ?branch ?deploy_on_push ?repo () :
    spec__job__github =
  { branch; deploy_on_push; repo }

let spec__job__gitlab ?branch ?deploy_on_push ?repo () :
    spec__job__gitlab =
  { branch; deploy_on_push; repo }

let spec__job__image__deploy_on_push ?enabled () :
    spec__job__image__deploy_on_push =
  { enabled }

let spec__job__image ?registry ?tag ?(deploy_on_push = [])
    ~registry_type ~repository () : spec__job__image =
  { registry; registry_type; repository; tag; deploy_on_push }

let spec__job__log_destination__datadog ?endpoint ~api_key () :
    spec__job__log_destination__datadog =
  { api_key; endpoint }

let spec__job__log_destination__logtail ~token () :
    spec__job__log_destination__logtail =
  { token }

let spec__job__log_destination__papertrail ~endpoint () :
    spec__job__log_destination__papertrail =
  { endpoint }

let spec__job__log_destination ?(datadog = []) ?(logtail = [])
    ?(papertrail = []) ~name () : spec__job__log_destination =
  { name; datadog; logtail; papertrail }

let spec__job ?build_command ?dockerfile_path ?environment_slug
    ?instance_count ?instance_size_slug ?kind ?run_command
    ?source_dir ?(alert = []) ?(git = []) ?(github = [])
    ?(gitlab = []) ?(image = []) ?(log_destination = []) ~name ~env
    () : spec__job =
  {
    build_command;
    dockerfile_path;
    environment_slug;
    instance_count;
    instance_size_slug;
    kind;
    name;
    run_command;
    source_dir;
    alert;
    env;
    git;
    github;
    gitlab;
    image;
    log_destination;
  }

let spec__service__alert ?disabled ~operator ~rule ~value ~window ()
    : spec__service__alert =
  { disabled; operator; rule; value; window }

let spec__service__cors__allow_origins ?exact ?prefix ?regex () :
    spec__service__cors__allow_origins =
  { exact; prefix; regex }

let spec__service__cors ?allow_credentials ?allow_headers
    ?allow_methods ?expose_headers ?max_age ?(allow_origins = []) ()
    : spec__service__cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    expose_headers;
    max_age;
    allow_origins;
  }

let spec__service__env ?key ?scope ?type_ ?value () :
    spec__service__env =
  { key; scope; type_; value }

let spec__service__git ?branch ?repo_clone_url () :
    spec__service__git =
  { branch; repo_clone_url }

let spec__service__github ?branch ?deploy_on_push ?repo () :
    spec__service__github =
  { branch; deploy_on_push; repo }

let spec__service__gitlab ?branch ?deploy_on_push ?repo () :
    spec__service__gitlab =
  { branch; deploy_on_push; repo }

let spec__service__health_check ?failure_threshold ?http_path
    ?initial_delay_seconds ?period_seconds ?port ?success_threshold
    ?timeout_seconds () : spec__service__health_check =
  {
    failure_threshold;
    http_path;
    initial_delay_seconds;
    period_seconds;
    port;
    success_threshold;
    timeout_seconds;
  }

let spec__service__image__deploy_on_push ?enabled () :
    spec__service__image__deploy_on_push =
  { enabled }

let spec__service__image ?registry ?tag ?(deploy_on_push = [])
    ~registry_type ~repository () : spec__service__image =
  { registry; registry_type; repository; tag; deploy_on_push }

let spec__service__log_destination__datadog ?endpoint ~api_key () :
    spec__service__log_destination__datadog =
  { api_key; endpoint }

let spec__service__log_destination__logtail ~token () :
    spec__service__log_destination__logtail =
  { token }

let spec__service__log_destination__papertrail ~endpoint () :
    spec__service__log_destination__papertrail =
  { endpoint }

let spec__service__log_destination ?(datadog = []) ?(logtail = [])
    ?(papertrail = []) ~name () : spec__service__log_destination =
  { name; datadog; logtail; papertrail }

let spec__service__routes ?path ?preserve_path_prefix () :
    spec__service__routes =
  { path; preserve_path_prefix }

let spec__service ?build_command ?dockerfile_path ?environment_slug
    ?http_port ?instance_count ?instance_size_slug ?internal_ports
    ?run_command ?source_dir ?(alert = []) ?(cors = []) ?(git = [])
    ?(github = []) ?(gitlab = []) ?(health_check = []) ?(image = [])
    ?(log_destination = []) ?(routes = []) ~name ~env () :
    spec__service =
  {
    build_command;
    dockerfile_path;
    environment_slug;
    http_port;
    instance_count;
    instance_size_slug;
    internal_ports;
    name;
    run_command;
    source_dir;
    alert;
    cors;
    env;
    git;
    github;
    gitlab;
    health_check;
    image;
    log_destination;
    routes;
  }

let spec__static_site__cors__allow_origins ?exact ?prefix ?regex () :
    spec__static_site__cors__allow_origins =
  { exact; prefix; regex }

let spec__static_site__cors ?allow_credentials ?allow_headers
    ?allow_methods ?expose_headers ?max_age ?(allow_origins = []) ()
    : spec__static_site__cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    expose_headers;
    max_age;
    allow_origins;
  }

let spec__static_site__env ?key ?scope ?type_ ?value () :
    spec__static_site__env =
  { key; scope; type_; value }

let spec__static_site__git ?branch ?repo_clone_url () :
    spec__static_site__git =
  { branch; repo_clone_url }

let spec__static_site__github ?branch ?deploy_on_push ?repo () :
    spec__static_site__github =
  { branch; deploy_on_push; repo }

let spec__static_site__gitlab ?branch ?deploy_on_push ?repo () :
    spec__static_site__gitlab =
  { branch; deploy_on_push; repo }

let spec__static_site__routes ?path ?preserve_path_prefix () :
    spec__static_site__routes =
  { path; preserve_path_prefix }

let spec__static_site ?build_command ?catchall_document
    ?dockerfile_path ?environment_slug ?error_document
    ?index_document ?output_dir ?source_dir ?(cors = []) ?(git = [])
    ?(github = []) ?(gitlab = []) ?(routes = []) ~name ~env () :
    spec__static_site =
  {
    build_command;
    catchall_document;
    dockerfile_path;
    environment_slug;
    error_document;
    index_document;
    name;
    output_dir;
    source_dir;
    cors;
    env;
    git;
    github;
    gitlab;
    routes;
  }

let spec__worker__alert ?disabled ~operator ~rule ~value ~window () :
    spec__worker__alert =
  { disabled; operator; rule; value; window }

let spec__worker__env ?key ?scope ?type_ ?value () :
    spec__worker__env =
  { key; scope; type_; value }

let spec__worker__git ?branch ?repo_clone_url () : spec__worker__git
    =
  { branch; repo_clone_url }

let spec__worker__github ?branch ?deploy_on_push ?repo () :
    spec__worker__github =
  { branch; deploy_on_push; repo }

let spec__worker__gitlab ?branch ?deploy_on_push ?repo () :
    spec__worker__gitlab =
  { branch; deploy_on_push; repo }

let spec__worker__image__deploy_on_push ?enabled () :
    spec__worker__image__deploy_on_push =
  { enabled }

let spec__worker__image ?registry ?tag ?(deploy_on_push = [])
    ~registry_type ~repository () : spec__worker__image =
  { registry; registry_type; repository; tag; deploy_on_push }

let spec__worker__log_destination__datadog ?endpoint ~api_key () :
    spec__worker__log_destination__datadog =
  { api_key; endpoint }

let spec__worker__log_destination__logtail ~token () :
    spec__worker__log_destination__logtail =
  { token }

let spec__worker__log_destination__papertrail ~endpoint () :
    spec__worker__log_destination__papertrail =
  { endpoint }

let spec__worker__log_destination ?(datadog = []) ?(logtail = [])
    ?(papertrail = []) ~name () : spec__worker__log_destination =
  { name; datadog; logtail; papertrail }

let spec__worker ?build_command ?dockerfile_path ?environment_slug
    ?instance_count ?instance_size_slug ?run_command ?source_dir
    ?(alert = []) ?(git = []) ?(github = []) ?(gitlab = [])
    ?(image = []) ?(log_destination = []) ~name ~env () :
    spec__worker =
  {
    build_command;
    dockerfile_path;
    environment_slug;
    instance_count;
    instance_size_slug;
    name;
    run_command;
    source_dir;
    alert;
    env;
    git;
    github;
    gitlab;
    image;
    log_destination;
  }

let spec ?domains ?features ?region ?(database = []) ?(domain = [])
    ?(function_ = []) ?(ingress = []) ?(job = []) ?(service = [])
    ?(static_site = []) ?(worker = []) ~name ~alert ~env () : spec =
  {
    domains;
    features;
    name;
    region;
    alert;
    database;
    domain;
    env;
    function_;
    ingress;
    job;
    service;
    static_site;
    worker;
  }

let timeouts ?create () : timeouts = { create }

let digitalocean_app ?id ?project_id ?(spec = []) ?timeouts () :
    digitalocean_app =
  { id; project_id; spec; timeouts }

type t = {
  active_deployment_id : string prop;
  created_at : string prop;
  default_ingress : string prop;
  id : string prop;
  live_url : string prop;
  project_id : string prop;
  updated_at : string prop;
  urn : string prop;
}

let make ?id ?project_id ?(spec = []) ?timeouts __id =
  let __type = "digitalocean_app" in
  let __attrs =
    ({
       active_deployment_id =
         Prop.computed __type __id "active_deployment_id";
       created_at = Prop.computed __type __id "created_at";
       default_ingress = Prop.computed __type __id "default_ingress";
       id = Prop.computed __type __id "id";
       live_url = Prop.computed __type __id "live_url";
       project_id = Prop.computed __type __id "project_id";
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
        (digitalocean_app ?id ?project_id ~spec ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project_id ?(spec = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project_id ~spec ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
