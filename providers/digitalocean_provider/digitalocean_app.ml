(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_app__spec__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  rule : string prop;  (** rule *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__alert *)

type digitalocean_app__spec__database = {
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
(** digitalocean_app__spec__database *)

type digitalocean_app__spec__domain = {
  name : string prop;  (** The hostname for the domain. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the domain. *)
  wildcard : bool prop option; [@option]
      (** Indicates whether the domain includes all sub-domains, in addition to the given domain. *)
  zone : string prop option; [@option]
      (** If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__domain *)

type digitalocean_app__spec__env = {
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
(** digitalocean_app__spec__env *)

type digitalocean_app__spec__function__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type digitalocean_app__spec__function__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type digitalocean_app__spec__function__cors = {
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
  allow_origins :
    digitalocean_app__spec__function__cors__allow_origins list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function__cors *)

type digitalocean_app__spec__function__env = {
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
(** digitalocean_app__spec__function__env *)

type digitalocean_app__spec__function__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function__git *)

type digitalocean_app__spec__function__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function__github *)

type digitalocean_app__spec__function__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function__gitlab *)

type digitalocean_app__spec__function__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type digitalocean_app__spec__function__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type digitalocean_app__spec__function__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type digitalocean_app__spec__function__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog :
    digitalocean_app__spec__function__log_destination__datadog list;
  logtail :
    digitalocean_app__spec__function__log_destination__logtail list;
  papertrail :
    digitalocean_app__spec__function__log_destination__papertrail
    list;
}
[@@deriving yojson_of]
(** Logs *)

type digitalocean_app__spec__function__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function__routes *)

type digitalocean_app__spec__function = {
  name : string prop;  (** The name of the component *)
  source_dir : string prop option; [@option]
      (** An optional path to the working directory to use for the build. *)
  alert : digitalocean_app__spec__function__alert list;
  cors : digitalocean_app__spec__function__cors list;
  env : digitalocean_app__spec__function__env list;
  git : digitalocean_app__spec__function__git list;
  github : digitalocean_app__spec__function__github list;
  gitlab : digitalocean_app__spec__function__gitlab list;
  log_destination :
    digitalocean_app__spec__function__log_destination list;
  routes : digitalocean_app__spec__function__routes list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__function *)

type digitalocean_app__spec__ingress__rule__component = {
  name : string prop option; [@option]  (** name *)
  preserve_path_prefix : bool prop option; [@option]
      (** preserve_path_prefix *)
  rewrite : string prop option; [@option]  (** rewrite *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule__component *)

type digitalocean_app__spec__ingress__rule__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type digitalocean_app__spec__ingress__rule__cors = {
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
  allow_origins :
    digitalocean_app__spec__ingress__rule__cors__allow_origins list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule__cors *)

type digitalocean_app__spec__ingress__rule__match__path = {
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule__match__path *)

type digitalocean_app__spec__ingress__rule__match = {
  path : digitalocean_app__spec__ingress__rule__match__path list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule__match *)

type digitalocean_app__spec__ingress__rule__redirect = {
  authority : string prop option; [@option]  (** authority *)
  port : float prop option; [@option]  (** port *)
  redirect_code : float prop option; [@option]  (** redirect_code *)
  scheme : string prop option; [@option]  (** scheme *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule__redirect *)

type digitalocean_app__spec__ingress__rule = {
  component : digitalocean_app__spec__ingress__rule__component list;
  cors : digitalocean_app__spec__ingress__rule__cors list;
  match_ : digitalocean_app__spec__ingress__rule__match list;
  redirect : digitalocean_app__spec__ingress__rule__redirect list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress__rule *)

type digitalocean_app__spec__ingress = {
  rule : digitalocean_app__spec__ingress__rule list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__ingress *)

type digitalocean_app__spec__job__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type digitalocean_app__spec__job__env = {
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
(** digitalocean_app__spec__job__env *)

type digitalocean_app__spec__job__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__job__git *)

type digitalocean_app__spec__job__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__job__github *)

type digitalocean_app__spec__job__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__job__gitlab *)

type digitalocean_app__spec__job__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type digitalocean_app__spec__job__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push :
    digitalocean_app__spec__job__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__job__image *)

type digitalocean_app__spec__job__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type digitalocean_app__spec__job__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type digitalocean_app__spec__job__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type digitalocean_app__spec__job__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog :
    digitalocean_app__spec__job__log_destination__datadog list;
  logtail :
    digitalocean_app__spec__job__log_destination__logtail list;
  papertrail :
    digitalocean_app__spec__job__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type digitalocean_app__spec__job = {
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
  alert : digitalocean_app__spec__job__alert list;
  env : digitalocean_app__spec__job__env list;
  git : digitalocean_app__spec__job__git list;
  github : digitalocean_app__spec__job__github list;
  gitlab : digitalocean_app__spec__job__gitlab list;
  image : digitalocean_app__spec__job__image list;
  log_destination : digitalocean_app__spec__job__log_destination list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__job *)

type digitalocean_app__spec__service__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type digitalocean_app__spec__service__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type digitalocean_app__spec__service__cors = {
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
  allow_origins :
    digitalocean_app__spec__service__cors__allow_origins list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__cors *)

type digitalocean_app__spec__service__env = {
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
(** digitalocean_app__spec__service__env *)

type digitalocean_app__spec__service__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__git *)

type digitalocean_app__spec__service__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__github *)

type digitalocean_app__spec__service__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__gitlab *)

type digitalocean_app__spec__service__health_check = {
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
(** digitalocean_app__spec__service__health_check *)

type digitalocean_app__spec__service__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type digitalocean_app__spec__service__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push :
    digitalocean_app__spec__service__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__image *)

type digitalocean_app__spec__service__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type digitalocean_app__spec__service__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type digitalocean_app__spec__service__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type digitalocean_app__spec__service__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog :
    digitalocean_app__spec__service__log_destination__datadog list;
  logtail :
    digitalocean_app__spec__service__log_destination__logtail list;
  papertrail :
    digitalocean_app__spec__service__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type digitalocean_app__spec__service__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service__routes *)

type digitalocean_app__spec__service = {
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
  alert : digitalocean_app__spec__service__alert list;
  cors : digitalocean_app__spec__service__cors list;
  env : digitalocean_app__spec__service__env list;
  git : digitalocean_app__spec__service__git list;
  github : digitalocean_app__spec__service__github list;
  gitlab : digitalocean_app__spec__service__gitlab list;
  health_check : digitalocean_app__spec__service__health_check list;
  image : digitalocean_app__spec__service__image list;
  log_destination :
    digitalocean_app__spec__service__log_destination list;
  routes : digitalocean_app__spec__service__routes list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__service *)

type digitalocean_app__spec__static_site__cors__allow_origins = {
  exact : string prop option; [@option]  (** Exact string match. *)
  prefix : string prop option; [@option]  (** Prefix-based match.  *)
  regex : string prop option; [@option]
      (** RE2 style regex-based match. *)
}
[@@deriving yojson_of]
(** The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header. *)

type digitalocean_app__spec__static_site__cors = {
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
  allow_origins :
    digitalocean_app__spec__static_site__cors__allow_origins list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site__cors *)

type digitalocean_app__spec__static_site__env = {
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
(** digitalocean_app__spec__static_site__env *)

type digitalocean_app__spec__static_site__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site__git *)

type digitalocean_app__spec__static_site__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site__github *)

type digitalocean_app__spec__static_site__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site__gitlab *)

type digitalocean_app__spec__static_site__routes = {
  path : string prop option; [@option]
      (** Path specifies an route by HTTP path prefix. Paths must start with / and must be unique within the app. *)
  preserve_path_prefix : bool prop option; [@option]
      (**  An optional flag to preserve the path that is forwarded to the backend service. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site__routes *)

type digitalocean_app__spec__static_site = {
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
  cors : digitalocean_app__spec__static_site__cors list;
  env : digitalocean_app__spec__static_site__env list;
  git : digitalocean_app__spec__static_site__git list;
  github : digitalocean_app__spec__static_site__github list;
  gitlab : digitalocean_app__spec__static_site__gitlab list;
  routes : digitalocean_app__spec__static_site__routes list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__static_site *)

type digitalocean_app__spec__worker__alert = {
  disabled : bool prop option; [@option]  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}
[@@deriving yojson_of]
(** Alert policies for the app component *)

type digitalocean_app__spec__worker__env = {
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
(** digitalocean_app__spec__worker__env *)

type digitalocean_app__spec__worker__git = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  repo_clone_url : string prop option; [@option]
      (** The clone URL of the repo. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__worker__git *)

type digitalocean_app__spec__worker__github = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__worker__github *)

type digitalocean_app__spec__worker__gitlab = {
  branch : string prop option; [@option]
      (** The name of the branch to use. *)
  deploy_on_push : bool prop option; [@option]
      (** Whether to automatically deploy new commits made to the repo *)
  repo : string prop option; [@option]
      (** The name of the repo in the format `owner/repo`. *)
}
[@@deriving yojson_of]
(** digitalocean_app__spec__worker__gitlab *)

type digitalocean_app__spec__worker__image__deploy_on_push = {
  enabled : bool prop option; [@option]
      (** Whether to automatically deploy images pushed to DOCR. *)
}
[@@deriving yojson_of]
(** Configures automatically deploying images pushed to DOCR. *)

type digitalocean_app__spec__worker__image = {
  registry : string prop option; [@option]
      (** The registry name. Must be left empty for the DOCR registry type. *)
  registry_type : string prop;  (** The registry type. *)
  repository : string prop;  (** The repository name. *)
  tag : string prop option; [@option]
      (** The repository tag. Defaults to latest if not provided. *)
  deploy_on_push :
    digitalocean_app__spec__worker__image__deploy_on_push list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__worker__image *)

type digitalocean_app__spec__worker__log_destination__datadog = {
  api_key : string prop;  (** Datadog API key. *)
  endpoint : string prop option; [@option]
      (** Datadog HTTP log intake endpoint. *)
}
[@@deriving yojson_of]
(** Datadog configuration. *)

type digitalocean_app__spec__worker__log_destination__logtail = {
  token : string prop;  (** Logtail token. *)
}
[@@deriving yojson_of]
(** Logtail configuration. *)

type digitalocean_app__spec__worker__log_destination__papertrail = {
  endpoint : string prop;  (** Papertrail syslog endpoint. *)
}
[@@deriving yojson_of]
(** Papertrail configuration. *)

type digitalocean_app__spec__worker__log_destination = {
  name : string prop;  (** Name of the log destination *)
  datadog :
    digitalocean_app__spec__worker__log_destination__datadog list;
  logtail :
    digitalocean_app__spec__worker__log_destination__logtail list;
  papertrail :
    digitalocean_app__spec__worker__log_destination__papertrail list;
}
[@@deriving yojson_of]
(** Logs *)

type digitalocean_app__spec__worker = {
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
  alert : digitalocean_app__spec__worker__alert list;
  env : digitalocean_app__spec__worker__env list;
  git : digitalocean_app__spec__worker__git list;
  github : digitalocean_app__spec__worker__github list;
  gitlab : digitalocean_app__spec__worker__gitlab list;
  image : digitalocean_app__spec__worker__image list;
  log_destination :
    digitalocean_app__spec__worker__log_destination list;
}
[@@deriving yojson_of]
(** digitalocean_app__spec__worker *)

type digitalocean_app__spec = {
  domains : string prop list option; [@option]  (** domains *)
  features : string prop list option; [@option]
      (** List of features which is applied to the app *)
  name : string prop;
      (** The name of the app. Must be unique across all apps in the same account. *)
  region : string prop option; [@option]
      (** The slug for the DigitalOcean data center region hosting the app *)
  alert : digitalocean_app__spec__alert list;
  database : digitalocean_app__spec__database list;
  domain : digitalocean_app__spec__domain list;
  env : digitalocean_app__spec__env list;
  function_ : digitalocean_app__spec__function list;
  ingress : digitalocean_app__spec__ingress list;
  job : digitalocean_app__spec__job list;
  service : digitalocean_app__spec__service list;
  static_site : digitalocean_app__spec__static_site list;
  worker : digitalocean_app__spec__worker list;
}
[@@deriving yojson_of]
(** A DigitalOcean App Platform Spec *)

type digitalocean_app__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_app__timeouts *)

type digitalocean_app = {
  id : string prop option; [@option]  (** id *)
  project_id : string prop option; [@option]  (** project_id *)
  spec : digitalocean_app__spec list;
  timeouts : digitalocean_app__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_app *)

let digitalocean_app ?id ?project_id ?timeouts ~spec __resource_id =
  let __resource_type = "digitalocean_app" in
  let __resource = { id; project_id; spec; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_app __resource);
  ()
