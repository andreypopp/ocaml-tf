(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type spec__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  rule : string prop;  (** rule *)
}
[@@deriving yojson_of]
(** spec__alert *)

type spec__database = {
  cluster_name : string prop option; [@option]
      (** The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if cluster_name is not set, a new cluster will be provisioned. *)
  db_name : string prop option; [@option]
      (** The name of the MySQL or PostgreSQL database to configure. *)
  db_user : string prop option; [@option]
      (** The name of the MySQL or PostgreSQL user to configure. *)
  engine : string prop option; [@option]
      (** The database engine to use. *)
  name : string prop option; [@option]
      (** The name of the component *)
  production : bool prop option; [@option]
      (** Whether this is a production or dev database. *)
  version : string prop option; [@option]
      (** The version of the database engine. *)
}
[@@deriving yojson_of]
(** spec__database *)

type spec__domain = {
  name : string prop;  (** The hostname for the domain. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the domain. *)
  wildcard : bool prop option; [@option]
      (** Indicates whether the domain includes all sub-domains, in addition to the given domain. *)
  zone : string prop option; [@option]
      (** If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account. *)
}
[@@deriving yojson_of]
(** spec__domain *)

type spec__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__env *)

type spec__function__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type spec__function__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type spec__function__cors = {
  allow_credentials : bool prop option; [@option]
      (** Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header. *)
  expose_headers : string prop list option; [@option]
      (** The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header. *)
  max_age : string prop option; [@option]
      (** An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`. *)
  allow_origins : spec__function__cors__allow_origins list;
}
[@@deriving yojson_of]
(** spec__function__cors *)

type spec__function__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__function__env *)

type spec__function__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** spec__function__git *)

type spec__function__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__function__github *)

type spec__function__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__function__gitlab *)

type spec__function__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type spec__function__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type spec__function__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type spec__function__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog : spec__function__log_destination__datadog list;
  logtail : spec__function__log_destination__logtail list;
  papertrail : spec__function__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type spec__function__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** spec__function__routes *)

type spec__function = {
  name : string prop;  (** The name of the component *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
  alert : spec__function__alert list;
  cors : spec__function__cors list;
  env : spec__function__env list;
  git : spec__function__git list;
  github : spec__function__github list;
  gitlab : spec__function__gitlab list;
  log_destination : spec__function__log_destination list;
  routes : spec__function__routes list;
}
[@@deriving yojson_of]
(** spec__function *)

type spec__ingress__rule__component = {
  name : string prop option; [@option]  (** name *)
  preserve_path_prefix : bool prop option; [@option]
      (** preserve_path_prefix *)
  rewrite : string prop option; [@option]  (** rewrite *)
}
[@@deriving yojson_of]
(** spec__ingress__rule__component *)

type spec__ingress__rule__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type spec__ingress__rule__cors = {
  allow_credentials : bool prop option; [@option]
      (** Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header. *)
  expose_headers : string prop list option; [@option]
      (** The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header. *)
  max_age : string prop option; [@option]
      (** An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`. *)
  allow_origins : spec__ingress__rule__cors__allow_origins list;
}
[@@deriving yojson_of]
(** spec__ingress__rule__cors *)

type spec__ingress__rule__match__path = {
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** spec__ingress__rule__match__path *)

type spec__ingress__rule__match = {
  path : spec__ingress__rule__match__path list;
}
[@@deriving yojson_of]
(** spec__ingress__rule__match *)

type spec__ingress__rule__redirect = {
  authority : string prop option; [@option]  (** authority *)
  port : float prop option; [@option]  (** port *)
  redirect_code : float prop option; [@option]  (** redirect_code *)
  scheme : string prop option; [@option]  (** scheme *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** spec__ingress__rule__redirect *)

type spec__ingress__rule = {
  component : spec__ingress__rule__component list;
  cors : spec__ingress__rule__cors list;
  match_ : spec__ingress__rule__match list;
  redirect : spec__ingress__rule__redirect list;
}
[@@deriving yojson_of]
(** spec__ingress__rule *)

type spec__ingress = { rule : spec__ingress__rule list }
[@@deriving yojson_of]
(** spec__ingress *)

type spec__job__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type spec__job__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__job__env *)

type spec__job__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** spec__job__git *)

type spec__job__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__job__github *)

type spec__job__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__job__gitlab *)

type spec__job__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type spec__job__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push : spec__job__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** spec__job__image *)

type spec__job__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type spec__job__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type spec__job__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type spec__job__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog : spec__job__log_destination__datadog list;
  logtail : spec__job__log_destination__logtail list;
  papertrail : spec__job__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type spec__job = {
  build_command : string prop option; [@option]
      (** An optional build command to run while building this component from source. *)
  dockerfile_path : string prop option; [@option]
      (** The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks. *)
  environment_slug : string prop option; [@option]
      (** An environment slug describing the type of this app. *)
  instance_count : float prop option; [@option]
      (** The amount of instances that this component should be scaled to. *)
  instance_size_slug : string prop option; [@option]
      (** The instance size to use for this component. *)
  kind : string prop option; [@option]
      (** The type of job and when it will be run during the deployment process. *)
  name : string prop;  (** The name of the component *)
  run_command : string prop option; [@option]
      (** An optional run command to override the component's default. *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
  alert : spec__job__alert list;
  env : spec__job__env list;
  git : spec__job__git list;
  github : spec__job__github list;
  gitlab : spec__job__gitlab list;
  image : spec__job__image list;
  log_destination : spec__job__log_destination list;
}
[@@deriving yojson_of]
(** spec__job *)

type spec__service__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type spec__service__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type spec__service__cors = {
  allow_credentials : bool prop option; [@option]
      (** Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header. *)
  expose_headers : string prop list option; [@option]
      (** The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header. *)
  max_age : string prop option; [@option]
      (** An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`. *)
  allow_origins : spec__service__cors__allow_origins list;
}
[@@deriving yojson_of]
(** spec__service__cors *)

type spec__service__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__service__env *)

type spec__service__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** spec__service__git *)

type spec__service__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__service__github *)

type spec__service__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__service__gitlab *)

type spec__service__health_check = {
  failure_threshold : float prop option; [@option]
      (** The number of failed health checks before considered unhealthy. *)
  http_path : string prop option; [@option]
      (** The route path used for the HTTP health check ping. *)
  initial_delay_seconds : float prop option; [@option]
      (** The number of seconds to wait before beginning health checks. *)
  period_seconds : float prop option; [@option]
      (** The number of seconds to wait between health checks. *)
  port : float prop option; [@option]
      (** The port on which the health check will be performed. If not set, the health check will be performed on the component's http_port. *)
  success_threshold : float prop option; [@option]
      (** The number of successful health checks before considered healthy. *)
  timeout_seconds : float prop option; [@option]
      (** The number of seconds after which the check times out. *)
}
[@@deriving yojson_of]
(** spec__service__health_check *)

type spec__service__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type spec__service__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push : spec__service__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** spec__service__image *)

type spec__service__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type spec__service__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type spec__service__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type spec__service__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog : spec__service__log_destination__datadog list;
  logtail : spec__service__log_destination__logtail list;
  papertrail : spec__service__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type spec__service__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** spec__service__routes *)

type spec__service = {
  build_command : string prop option; [@option]
      (** An optional build command to run while building this component from source. *)
  dockerfile_path : string prop option; [@option]
      (** The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks. *)
  environment_slug : string prop option; [@option]
      (** An environment slug describing the type of this app. *)
  http_port : float prop option; [@option]
      (** The internal port on which this service's run command will listen. *)
  instance_count : float prop option; [@option]
      (** The amount of instances that this component should be scaled to. *)
  instance_size_slug : string prop option; [@option]
      (** The instance size to use for this component. *)
  internal_ports : float prop list option; [@option]
      (** internal_ports *)
  name : string prop;  (** The name of the component *)
  run_command : string prop option; [@option]
      (** An optional run command to override the component's default. *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
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
[@@deriving yojson_of]
(** spec__service *)

type spec__static_site__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type spec__static_site__cors = {
  allow_credentials : bool prop option; [@option]
      (** Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header. *)
  expose_headers : string prop list option; [@option]
      (** The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header. *)
  max_age : string prop option; [@option]
      (** An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`. *)
  allow_origins : spec__static_site__cors__allow_origins list;
}
[@@deriving yojson_of]
(** spec__static_site__cors *)

type spec__static_site__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__static_site__env *)

type spec__static_site__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** spec__static_site__git *)

type spec__static_site__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__static_site__github *)

type spec__static_site__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__static_site__gitlab *)

type spec__static_site__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** spec__static_site__routes *)

type spec__static_site = {
  build_command : string prop option; [@option]
      (** An optional build command to run while building this component from source. *)
  catchall_document : string prop option; [@option]
      (** The name of the document to use as the fallback for any requests to documents that are not found when serving this static site. *)
  dockerfile_path : string prop option; [@option]
      (** The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks. *)
  environment_slug : string prop option; [@option]
      (** An environment slug describing the type of this app. *)
  error_document : string prop option; [@option]
      (** The name of the error document to use when serving this static site. *)
  index_document : string prop option; [@option]
      (** The name of the index document to use when serving this static site. *)
  name : string prop;  (** The name of the component *)
  output_dir : string prop option; [@option]
      (** An optional path to where the built assets will be located, relative to the build context. If not set, App Platform will automatically scan for these directory names: `_static`, `dist`, `public`. *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
  cors : spec__static_site__cors list;
  env : spec__static_site__env list;
  git : spec__static_site__git list;
  github : spec__static_site__github list;
  gitlab : spec__static_site__gitlab list;
  routes : spec__static_site__routes list;
}
[@@deriving yojson_of]
(** spec__static_site *)

type spec__worker__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type spec__worker__env = {
  key : string prop option; [@option]
      (** The name of the environment variable. *)
  scope : string prop option; [@option]
      (** The visibility scope of the environment variable. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the environment variable. *)
  value : string prop option; [@option]
      (** The value of the environment variable. *)
}
[@@deriving yojson_of]
(** spec__worker__env *)

type spec__worker__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** spec__worker__git *)

type spec__worker__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__worker__github *)

type spec__worker__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** spec__worker__gitlab *)

type spec__worker__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type spec__worker__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push : spec__worker__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** spec__worker__image *)

type spec__worker__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type spec__worker__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type spec__worker__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type spec__worker__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog : spec__worker__log_destination__datadog list;
  logtail : spec__worker__log_destination__logtail list;
  papertrail : spec__worker__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type spec__worker = {
  build_command : string prop option; [@option]
      (** An optional build command to run while building this component from source. *)
  dockerfile_path : string prop option; [@option]
      (** The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks. *)
  environment_slug : string prop option; [@option]
      (** An environment slug describing the type of this app. *)
  instance_count : float prop option; [@option]
      (** The amount of instances that this component should be scaled to. *)
  instance_size_slug : string prop option; [@option]
      (** The instance size to use for this component. *)
  name : string prop;  (** The name of the component *)
  run_command : string prop option; [@option]
      (** An optional run command to override the component's default. *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
  alert : spec__worker__alert list;
  env : spec__worker__env list;
  git : spec__worker__git list;
  github : spec__worker__github list;
  gitlab : spec__worker__gitlab list;
  image : spec__worker__image list;
  log_destination : spec__worker__log_destination list;
}
[@@deriving yojson_of]
(** spec__worker *)

type spec = {
  domains : string prop list option; [@option]  (** domains *)
  features : string prop list option; [@option]
      (** List of features which is applied to the app *)
  name : string prop;
      (** The name of the app. Must be unique across all apps in the same account. *)
  region : string prop option; [@option]
      (** The slug for the DigitalOcean data center region hosting the app *)
  alert : spec__alert list;
  database : spec__database list;
  domain : spec__domain list;
  env : spec__env list;
  function_ : spec__function list;
  ingress : spec__ingress list;
  job : spec__job list;
  service : spec__service list;
  static_site : spec__static_site list;
  worker : spec__worker list;
}
[@@deriving yojson_of]
(** A DigitalOcean App Platform Spec *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type digitalocean_app = {
  id : string prop option; [@option]  (** id *)
  project_id : string prop option; [@option]  (** project_id *)
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_app *)

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
    ?allow_methods ?expose_headers ?max_age ~allow_origins () :
    spec__function__cors =
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

let spec__function__log_destination ~name ~datadog ~logtail
    ~papertrail () : spec__function__log_destination =
  { name; datadog; logtail; papertrail }

let spec__function__routes ?path ?preserve_path_prefix () :
    spec__function__routes =
  { path; preserve_path_prefix }

let spec__function ?source_dir ~name ~alert ~cors ~env ~git ~github
    ~gitlab ~log_destination ~routes () : spec__function =
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
    ?allow_methods ?expose_headers ?max_age ~allow_origins () :
    spec__ingress__rule__cors =
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

let spec__ingress__rule__match ~path () : spec__ingress__rule__match
    =
  { path }

let spec__ingress__rule__redirect ?authority ?port ?redirect_code
    ?scheme ?uri () : spec__ingress__rule__redirect =
  { authority; port; redirect_code; scheme; uri }

let spec__ingress__rule ~component ~cors ~match_ ~redirect () :
    spec__ingress__rule =
  { component; cors; match_; redirect }

let spec__ingress ~rule () : spec__ingress = { rule }

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

let spec__job__image ?registry ?tag ~registry_type ~repository
    ~deploy_on_push () : spec__job__image =
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

let spec__job__log_destination ~name ~datadog ~logtail ~papertrail ()
    : spec__job__log_destination =
  { name; datadog; logtail; papertrail }

let spec__job ?build_command ?dockerfile_path ?environment_slug
    ?instance_count ?instance_size_slug ?kind ?run_command
    ?source_dir ~name ~alert ~env ~git ~github ~gitlab ~image
    ~log_destination () : spec__job =
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
    ?allow_methods ?expose_headers ?max_age ~allow_origins () :
    spec__service__cors =
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

let spec__service__image ?registry ?tag ~registry_type ~repository
    ~deploy_on_push () : spec__service__image =
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

let spec__service__log_destination ~name ~datadog ~logtail
    ~papertrail () : spec__service__log_destination =
  { name; datadog; logtail; papertrail }

let spec__service__routes ?path ?preserve_path_prefix () :
    spec__service__routes =
  { path; preserve_path_prefix }

let spec__service ?build_command ?dockerfile_path ?environment_slug
    ?http_port ?instance_count ?instance_size_slug ?internal_ports
    ?run_command ?source_dir ~name ~alert ~cors ~env ~git ~github
    ~gitlab ~health_check ~image ~log_destination ~routes () :
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
    ?allow_methods ?expose_headers ?max_age ~allow_origins () :
    spec__static_site__cors =
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
    ?index_document ?output_dir ?source_dir ~name ~cors ~env ~git
    ~github ~gitlab ~routes () : spec__static_site =
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

let spec__worker__image ?registry ?tag ~registry_type ~repository
    ~deploy_on_push () : spec__worker__image =
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

let spec__worker__log_destination ~name ~datadog ~logtail ~papertrail
    () : spec__worker__log_destination =
  { name; datadog; logtail; papertrail }

let spec__worker ?build_command ?dockerfile_path ?environment_slug
    ?instance_count ?instance_size_slug ?run_command ?source_dir
    ~name ~alert ~env ~git ~github ~gitlab ~image ~log_destination ()
    : spec__worker =
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

let spec ?domains ?features ?region ~name ~alert ~database ~domain
    ~env ~function_ ~ingress ~job ~service ~static_site ~worker () :
    spec =
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

let digitalocean_app ?id ?project_id ?timeouts ~spec () :
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

let register ?tf_module ?id ?project_id ?timeouts ~spec __resource_id
    =
  let __resource_type = "digitalocean_app" in
  let __resource =
    digitalocean_app ?id ?project_id ?timeouts ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_app __resource);
  let __resource_attributes =
    ({
       active_deployment_id =
         Prop.computed __resource_type __resource_id
           "active_deployment_id";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       default_ingress =
         Prop.computed __resource_type __resource_id
           "default_ingress";
       id = Prop.computed __resource_type __resource_id "id";
       live_url =
         Prop.computed __resource_type __resource_id "live_url";
       project_id =
         Prop.computed __resource_type __resource_id "project_id";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
