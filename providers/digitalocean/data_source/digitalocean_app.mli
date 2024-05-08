(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__worker__log_destination__papertrail = {
  endpoint : string prop;  (** endpoint *)
}

type spec__worker__log_destination__logtail = {
  token : string prop;  (** token *)
}

type spec__worker__log_destination__datadog = {
  api_key : string prop;  (** api_key *)
  endpoint : string prop;  (** endpoint *)
}

type spec__worker__log_destination = {
  datadog : spec__worker__log_destination__datadog list;
      [@default []] [@yojson_drop_default ( = )]
      (** datadog *)
  logtail : spec__worker__log_destination__logtail list;
      [@default []] [@yojson_drop_default ( = )]
      (** logtail *)
  name : string prop;  (** name *)
  papertrail : spec__worker__log_destination__papertrail list;
      [@default []] [@yojson_drop_default ( = )]
      (** papertrail *)
}

type spec__worker__image__deploy_on_push = {
  enabled : bool prop;  (** enabled *)
}

type spec__worker__image = {
  deploy_on_push : spec__worker__image__deploy_on_push list;
      [@default []] [@yojson_drop_default ( = )]
      (** deploy_on_push *)
  registry : string prop;  (** registry *)
  registry_type : string prop;  (** registry_type *)
  repository : string prop;  (** repository *)
  tag : string prop;  (** tag *)
}

type spec__worker__gitlab = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__worker__github = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__worker__git = {
  branch : string prop;  (** branch *)
  repo_clone_url : string prop;  (** repo_clone_url *)
}

type spec__worker__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__worker__alert = {
  disabled : bool prop;  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}

type spec__worker = {
  alert : spec__worker__alert list;
      [@default []] [@yojson_drop_default ( = )]
      (** alert *)
  build_command : string prop;  (** build_command *)
  dockerfile_path : string prop;  (** dockerfile_path *)
  env : spec__worker__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  environment_slug : string prop;  (** environment_slug *)
  git : spec__worker__git list;
      [@default []] [@yojson_drop_default ( = )]
      (** git *)
  github : spec__worker__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  gitlab : spec__worker__gitlab list;
      [@default []] [@yojson_drop_default ( = )]
      (** gitlab *)
  image : spec__worker__image list;
      [@default []] [@yojson_drop_default ( = )]
      (** image *)
  instance_count : float prop;  (** instance_count *)
  instance_size_slug : string prop;  (** instance_size_slug *)
  log_destination : spec__worker__log_destination list;
      [@default []] [@yojson_drop_default ( = )]
      (** log_destination *)
  name : string prop;  (** name *)
  run_command : string prop;  (** run_command *)
  source_dir : string prop;  (** source_dir *)
}

type spec__static_site__routes = {
  path : string prop;  (** path *)
  preserve_path_prefix : bool prop;  (** preserve_path_prefix *)
}

type spec__static_site__gitlab = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__static_site__github = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__static_site__git = {
  branch : string prop;  (** branch *)
  repo_clone_url : string prop;  (** repo_clone_url *)
}

type spec__static_site__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__static_site__cors__allow_origins = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  regex : string prop;  (** regex *)
}

type spec__static_site__cors = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_methods *)
  allow_origins : spec__static_site__cors__allow_origins list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expose_headers *)
  max_age : string prop;  (** max_age *)
}

type spec__static_site = {
  build_command : string prop;  (** build_command *)
  catchall_document : string prop;  (** catchall_document *)
  cors : spec__static_site__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  dockerfile_path : string prop;  (** dockerfile_path *)
  env : spec__static_site__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  environment_slug : string prop;  (** environment_slug *)
  error_document : string prop;  (** error_document *)
  git : spec__static_site__git list;
      [@default []] [@yojson_drop_default ( = )]
      (** git *)
  github : spec__static_site__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  gitlab : spec__static_site__gitlab list;
      [@default []] [@yojson_drop_default ( = )]
      (** gitlab *)
  index_document : string prop;  (** index_document *)
  name : string prop;  (** name *)
  output_dir : string prop;  (** output_dir *)
  routes : spec__static_site__routes list;
      [@default []] [@yojson_drop_default ( = )]
      (** routes *)
  source_dir : string prop;  (** source_dir *)
}

type spec__service__routes = {
  path : string prop;  (** path *)
  preserve_path_prefix : bool prop;  (** preserve_path_prefix *)
}

type spec__service__log_destination__papertrail = {
  endpoint : string prop;  (** endpoint *)
}

type spec__service__log_destination__logtail = {
  token : string prop;  (** token *)
}

type spec__service__log_destination__datadog = {
  api_key : string prop;  (** api_key *)
  endpoint : string prop;  (** endpoint *)
}

type spec__service__log_destination = {
  datadog : spec__service__log_destination__datadog list;
      [@default []] [@yojson_drop_default ( = )]
      (** datadog *)
  logtail : spec__service__log_destination__logtail list;
      [@default []] [@yojson_drop_default ( = )]
      (** logtail *)
  name : string prop;  (** name *)
  papertrail : spec__service__log_destination__papertrail list;
      [@default []] [@yojson_drop_default ( = )]
      (** papertrail *)
}

type spec__service__image__deploy_on_push = {
  enabled : bool prop;  (** enabled *)
}

type spec__service__image = {
  deploy_on_push : spec__service__image__deploy_on_push list;
      [@default []] [@yojson_drop_default ( = )]
      (** deploy_on_push *)
  registry : string prop;  (** registry *)
  registry_type : string prop;  (** registry_type *)
  repository : string prop;  (** repository *)
  tag : string prop;  (** tag *)
}

type spec__service__health_check = {
  failure_threshold : float prop;  (** failure_threshold *)
  http_path : string prop;  (** http_path *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  port : float prop;  (** port *)
  success_threshold : float prop;  (** success_threshold *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__service__gitlab = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__service__github = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__service__git = {
  branch : string prop;  (** branch *)
  repo_clone_url : string prop;  (** repo_clone_url *)
}

type spec__service__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__service__cors__allow_origins = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  regex : string prop;  (** regex *)
}

type spec__service__cors = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_methods *)
  allow_origins : spec__service__cors__allow_origins list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expose_headers *)
  max_age : string prop;  (** max_age *)
}

type spec__service__alert = {
  disabled : bool prop;  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}

type spec__service = {
  alert : spec__service__alert list;
      [@default []] [@yojson_drop_default ( = )]
      (** alert *)
  build_command : string prop;  (** build_command *)
  cors : spec__service__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  dockerfile_path : string prop;  (** dockerfile_path *)
  env : spec__service__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  environment_slug : string prop;  (** environment_slug *)
  git : spec__service__git list;
      [@default []] [@yojson_drop_default ( = )]
      (** git *)
  github : spec__service__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  gitlab : spec__service__gitlab list;
      [@default []] [@yojson_drop_default ( = )]
      (** gitlab *)
  health_check : spec__service__health_check list;
      [@default []] [@yojson_drop_default ( = )]
      (** health_check *)
  http_port : float prop;  (** http_port *)
  image : spec__service__image list;
      [@default []] [@yojson_drop_default ( = )]
      (** image *)
  instance_count : float prop;  (** instance_count *)
  instance_size_slug : string prop;  (** instance_size_slug *)
  internal_ports : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** internal_ports *)
  log_destination : spec__service__log_destination list;
      [@default []] [@yojson_drop_default ( = )]
      (** log_destination *)
  name : string prop;  (** name *)
  routes : spec__service__routes list;
      [@default []] [@yojson_drop_default ( = )]
      (** routes *)
  run_command : string prop;  (** run_command *)
  source_dir : string prop;  (** source_dir *)
}

type spec__job__log_destination__papertrail = {
  endpoint : string prop;  (** endpoint *)
}

type spec__job__log_destination__logtail = {
  token : string prop;  (** token *)
}

type spec__job__log_destination__datadog = {
  api_key : string prop;  (** api_key *)
  endpoint : string prop;  (** endpoint *)
}

type spec__job__log_destination = {
  datadog : spec__job__log_destination__datadog list;
      [@default []] [@yojson_drop_default ( = )]
      (** datadog *)
  logtail : spec__job__log_destination__logtail list;
      [@default []] [@yojson_drop_default ( = )]
      (** logtail *)
  name : string prop;  (** name *)
  papertrail : spec__job__log_destination__papertrail list;
      [@default []] [@yojson_drop_default ( = )]
      (** papertrail *)
}

type spec__job__image__deploy_on_push = {
  enabled : bool prop;  (** enabled *)
}

type spec__job__image = {
  deploy_on_push : spec__job__image__deploy_on_push list;
      [@default []] [@yojson_drop_default ( = )]
      (** deploy_on_push *)
  registry : string prop;  (** registry *)
  registry_type : string prop;  (** registry_type *)
  repository : string prop;  (** repository *)
  tag : string prop;  (** tag *)
}

type spec__job__gitlab = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__job__github = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__job__git = {
  branch : string prop;  (** branch *)
  repo_clone_url : string prop;  (** repo_clone_url *)
}

type spec__job__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__job__alert = {
  disabled : bool prop;  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}

type spec__job = {
  alert : spec__job__alert list;
      [@default []] [@yojson_drop_default ( = )]
      (** alert *)
  build_command : string prop;  (** build_command *)
  dockerfile_path : string prop;  (** dockerfile_path *)
  env : spec__job__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  environment_slug : string prop;  (** environment_slug *)
  git : spec__job__git list;
      [@default []] [@yojson_drop_default ( = )]
      (** git *)
  github : spec__job__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  gitlab : spec__job__gitlab list;
      [@default []] [@yojson_drop_default ( = )]
      (** gitlab *)
  image : spec__job__image list;
      [@default []] [@yojson_drop_default ( = )]
      (** image *)
  instance_count : float prop;  (** instance_count *)
  instance_size_slug : string prop;  (** instance_size_slug *)
  kind : string prop;  (** kind *)
  log_destination : spec__job__log_destination list;
      [@default []] [@yojson_drop_default ( = )]
      (** log_destination *)
  name : string prop;  (** name *)
  run_command : string prop;  (** run_command *)
  source_dir : string prop;  (** source_dir *)
}

type spec__ingress__rule__redirect = {
  authority : string prop;  (** authority *)
  port : float prop;  (** port *)
  redirect_code : float prop;  (** redirect_code *)
  scheme : string prop;  (** scheme *)
  uri : string prop;  (** uri *)
}

type spec__ingress__rule__match__path = {
  prefix : string prop;  (** prefix *)
}

type spec__ingress__rule__match = {
  path : spec__ingress__rule__match__path list;
      [@default []] [@yojson_drop_default ( = )]
      (** path *)
}

type spec__ingress__rule__cors__allow_origins = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  regex : string prop;  (** regex *)
}

type spec__ingress__rule__cors = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_methods *)
  allow_origins : spec__ingress__rule__cors__allow_origins list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expose_headers *)
  max_age : string prop;  (** max_age *)
}

type spec__ingress__rule__component = {
  name : string prop;  (** name *)
  preserve_path_prefix : bool prop;  (** preserve_path_prefix *)
  rewrite : string prop;  (** rewrite *)
}

type spec__ingress__rule = {
  component : spec__ingress__rule__component list;
      [@default []] [@yojson_drop_default ( = )]
      (** component *)
  cors : spec__ingress__rule__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  match_ : spec__ingress__rule__match list;
      [@default []] [@yojson_drop_default ( = )] [@key "match"]
      (** match *)
  redirect : spec__ingress__rule__redirect list;
      [@default []] [@yojson_drop_default ( = )]
      (** redirect *)
}

type spec__ingress = {
  rule : spec__ingress__rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** rule *)
}

type spec__function__routes = {
  path : string prop;  (** path *)
  preserve_path_prefix : bool prop;  (** preserve_path_prefix *)
}

type spec__function__log_destination__papertrail = {
  endpoint : string prop;  (** endpoint *)
}

type spec__function__log_destination__logtail = {
  token : string prop;  (** token *)
}

type spec__function__log_destination__datadog = {
  api_key : string prop;  (** api_key *)
  endpoint : string prop;  (** endpoint *)
}

type spec__function__log_destination = {
  datadog : spec__function__log_destination__datadog list;
      [@default []] [@yojson_drop_default ( = )]
      (** datadog *)
  logtail : spec__function__log_destination__logtail list;
      [@default []] [@yojson_drop_default ( = )]
      (** logtail *)
  name : string prop;  (** name *)
  papertrail : spec__function__log_destination__papertrail list;
      [@default []] [@yojson_drop_default ( = )]
      (** papertrail *)
}

type spec__function__gitlab = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__function__github = {
  branch : string prop;  (** branch *)
  deploy_on_push : bool prop;  (** deploy_on_push *)
  repo : string prop;  (** repo *)
}

type spec__function__git = {
  branch : string prop;  (** branch *)
  repo_clone_url : string prop;  (** repo_clone_url *)
}

type spec__function__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__function__cors__allow_origins = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  regex : string prop;  (** regex *)
}

type spec__function__cors = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_methods *)
  allow_origins : spec__function__cors__allow_origins list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expose_headers *)
  max_age : string prop;  (** max_age *)
}

type spec__function__alert = {
  disabled : bool prop;  (** disabled *)
  operator : string prop;  (** operator *)
  rule : string prop;  (** rule *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
}

type spec__function = {
  alert : spec__function__alert list;
      [@default []] [@yojson_drop_default ( = )]
      (** alert *)
  cors : spec__function__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  env : spec__function__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  git : spec__function__git list;
      [@default []] [@yojson_drop_default ( = )]
      (** git *)
  github : spec__function__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  gitlab : spec__function__gitlab list;
      [@default []] [@yojson_drop_default ( = )]
      (** gitlab *)
  log_destination : spec__function__log_destination list;
      [@default []] [@yojson_drop_default ( = )]
      (** log_destination *)
  name : string prop;  (** name *)
  routes : spec__function__routes list;
      [@default []] [@yojson_drop_default ( = )]
      (** routes *)
  source_dir : string prop;  (** source_dir *)
}

type spec__env = {
  key : string prop;  (** key *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type spec__domain = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  wildcard : bool prop;  (** wildcard *)
  zone : string prop;  (** zone *)
}

type spec__database = {
  cluster_name : string prop;  (** cluster_name *)
  db_name : string prop;  (** db_name *)
  db_user : string prop;  (** db_user *)
  engine : string prop;  (** engine *)
  name : string prop;  (** name *)
  production : bool prop;  (** production *)
  version : string prop;  (** version *)
}

type spec__alert = {
  disabled : bool prop;  (** disabled *)
  rule : string prop;  (** rule *)
}

type spec = {
  alert : spec__alert list;
      [@default []] [@yojson_drop_default ( = )]
      (** alert *)
  database : spec__database list;
      [@default []] [@yojson_drop_default ( = )]
      (** database *)
  domain : spec__domain list;
      [@default []] [@yojson_drop_default ( = )]
      (** domain *)
  domains : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** domains *)
  env : spec__env list; [@default []] [@yojson_drop_default ( = )]
      (** env *)
  features : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** features *)
  function_ : spec__function list;
      [@default []] [@yojson_drop_default ( = )] [@key "function"]
      (** function *)
  ingress : spec__ingress list;
      [@default []] [@yojson_drop_default ( = )]
      (** ingress *)
  job : spec__job list; [@default []] [@yojson_drop_default ( = )]
      (** job *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  service : spec__service list;
      [@default []] [@yojson_drop_default ( = )]
      (** service *)
  static_site : spec__static_site list;
      [@default []] [@yojson_drop_default ( = )]
      (** static_site *)
  worker : spec__worker list;
      [@default []] [@yojson_drop_default ( = )]
      (** worker *)
}

type digitalocean_app

val digitalocean_app :
  ?id:string prop -> app_id:string prop -> unit -> digitalocean_app

val yojson_of_digitalocean_app : digitalocean_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  string ->
  t Tf_core.resource
