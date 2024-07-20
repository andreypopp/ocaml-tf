(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dedicated_ips

val dedicated_ips :
  ?id:string prop ->
  ?ip:string prop ->
  ?status:string prop ->
  unit ->
  dedicated_ips

type spec__alert

val spec__alert :
  ?disabled:bool prop -> rule:string prop -> unit -> spec__alert

type spec__database

val spec__database :
  ?cluster_name:string prop ->
  ?db_name:string prop ->
  ?db_user:string prop ->
  ?engine:string prop ->
  ?name:string prop ->
  ?production:bool prop ->
  ?version:string prop ->
  unit ->
  spec__database

type spec__domain

val spec__domain :
  ?type_:string prop ->
  ?wildcard:bool prop ->
  ?zone:string prop ->
  name:string prop ->
  unit ->
  spec__domain

type spec__egress

val spec__egress : ?type_:string prop -> unit -> spec__egress

type spec__env

val spec__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__env

type spec__function__alert

val spec__function__alert :
  ?disabled:bool prop ->
  operator:string prop ->
  rule:string prop ->
  value:float prop ->
  window:string prop ->
  unit ->
  spec__function__alert

type spec__function__cors__allow_origins

val spec__function__cors__allow_origins :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  unit ->
  spec__function__cors__allow_origins

type spec__function__cors

val spec__function__cors :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:string prop ->
  ?allow_origins:spec__function__cors__allow_origins list ->
  unit ->
  spec__function__cors

type spec__function__env

val spec__function__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__function__env

type spec__function__git

val spec__function__git :
  ?branch:string prop ->
  ?repo_clone_url:string prop ->
  unit ->
  spec__function__git

type spec__function__github

val spec__function__github :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__function__github

type spec__function__gitlab

val spec__function__gitlab :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__function__gitlab

type spec__function__log_destination__datadog

val spec__function__log_destination__datadog :
  ?endpoint:string prop ->
  api_key:string prop ->
  unit ->
  spec__function__log_destination__datadog

type spec__function__log_destination__logtail

val spec__function__log_destination__logtail :
  token:string prop ->
  unit ->
  spec__function__log_destination__logtail

type spec__function__log_destination__papertrail

val spec__function__log_destination__papertrail :
  endpoint:string prop ->
  unit ->
  spec__function__log_destination__papertrail

type spec__function__log_destination

val spec__function__log_destination :
  ?datadog:spec__function__log_destination__datadog list ->
  ?logtail:spec__function__log_destination__logtail list ->
  ?papertrail:spec__function__log_destination__papertrail list ->
  name:string prop ->
  unit ->
  spec__function__log_destination

type spec__function__routes

val spec__function__routes :
  ?path:string prop ->
  ?preserve_path_prefix:bool prop ->
  unit ->
  spec__function__routes

type spec__function

val spec__function :
  ?source_dir:string prop ->
  ?alert:spec__function__alert list ->
  ?cors:spec__function__cors list ->
  ?git:spec__function__git list ->
  ?github:spec__function__github list ->
  ?gitlab:spec__function__gitlab list ->
  ?log_destination:spec__function__log_destination list ->
  ?routes:spec__function__routes list ->
  name:string prop ->
  env:spec__function__env list ->
  unit ->
  spec__function

type spec__ingress__rule__component

val spec__ingress__rule__component :
  ?name:string prop ->
  ?preserve_path_prefix:bool prop ->
  ?rewrite:string prop ->
  unit ->
  spec__ingress__rule__component

type spec__ingress__rule__cors__allow_origins

val spec__ingress__rule__cors__allow_origins :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  unit ->
  spec__ingress__rule__cors__allow_origins

type spec__ingress__rule__cors

val spec__ingress__rule__cors :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:string prop ->
  ?allow_origins:spec__ingress__rule__cors__allow_origins list ->
  unit ->
  spec__ingress__rule__cors

type spec__ingress__rule__match__path

val spec__ingress__rule__match__path :
  ?prefix:string prop -> unit -> spec__ingress__rule__match__path

type spec__ingress__rule__match

val spec__ingress__rule__match :
  ?path:spec__ingress__rule__match__path list ->
  unit ->
  spec__ingress__rule__match

type spec__ingress__rule__redirect

val spec__ingress__rule__redirect :
  ?authority:string prop ->
  ?port:float prop ->
  ?redirect_code:float prop ->
  ?scheme:string prop ->
  ?uri:string prop ->
  unit ->
  spec__ingress__rule__redirect

type spec__ingress__rule

val spec__ingress__rule :
  ?component:spec__ingress__rule__component list ->
  ?cors:spec__ingress__rule__cors list ->
  ?match_:spec__ingress__rule__match list ->
  ?redirect:spec__ingress__rule__redirect list ->
  unit ->
  spec__ingress__rule

type spec__ingress

val spec__ingress :
  ?rule:spec__ingress__rule list -> unit -> spec__ingress

type spec__job__alert

val spec__job__alert :
  ?disabled:bool prop ->
  operator:string prop ->
  rule:string prop ->
  value:float prop ->
  window:string prop ->
  unit ->
  spec__job__alert

type spec__job__env

val spec__job__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__job__env

type spec__job__git

val spec__job__git :
  ?branch:string prop ->
  ?repo_clone_url:string prop ->
  unit ->
  spec__job__git

type spec__job__github

val spec__job__github :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__job__github

type spec__job__gitlab

val spec__job__gitlab :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__job__gitlab

type spec__job__image__deploy_on_push

val spec__job__image__deploy_on_push :
  ?enabled:bool prop -> unit -> spec__job__image__deploy_on_push

type spec__job__image

val spec__job__image :
  ?registry:string prop ->
  ?registry_credentials:string prop ->
  ?tag:string prop ->
  ?deploy_on_push:spec__job__image__deploy_on_push list ->
  registry_type:string prop ->
  repository:string prop ->
  unit ->
  spec__job__image

type spec__job__log_destination__datadog

val spec__job__log_destination__datadog :
  ?endpoint:string prop ->
  api_key:string prop ->
  unit ->
  spec__job__log_destination__datadog

type spec__job__log_destination__logtail

val spec__job__log_destination__logtail :
  token:string prop -> unit -> spec__job__log_destination__logtail

type spec__job__log_destination__papertrail

val spec__job__log_destination__papertrail :
  endpoint:string prop ->
  unit ->
  spec__job__log_destination__papertrail

type spec__job__log_destination

val spec__job__log_destination :
  ?datadog:spec__job__log_destination__datadog list ->
  ?logtail:spec__job__log_destination__logtail list ->
  ?papertrail:spec__job__log_destination__papertrail list ->
  name:string prop ->
  unit ->
  spec__job__log_destination

type spec__job

val spec__job :
  ?build_command:string prop ->
  ?dockerfile_path:string prop ->
  ?environment_slug:string prop ->
  ?instance_count:float prop ->
  ?instance_size_slug:string prop ->
  ?kind:string prop ->
  ?run_command:string prop ->
  ?source_dir:string prop ->
  ?alert:spec__job__alert list ->
  ?git:spec__job__git list ->
  ?github:spec__job__github list ->
  ?gitlab:spec__job__gitlab list ->
  ?image:spec__job__image list ->
  ?log_destination:spec__job__log_destination list ->
  name:string prop ->
  env:spec__job__env list ->
  unit ->
  spec__job

type spec__service__alert

val spec__service__alert :
  ?disabled:bool prop ->
  operator:string prop ->
  rule:string prop ->
  value:float prop ->
  window:string prop ->
  unit ->
  spec__service__alert

type spec__service__cors__allow_origins

val spec__service__cors__allow_origins :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  unit ->
  spec__service__cors__allow_origins

type spec__service__cors

val spec__service__cors :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:string prop ->
  ?allow_origins:spec__service__cors__allow_origins list ->
  unit ->
  spec__service__cors

type spec__service__env

val spec__service__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__service__env

type spec__service__git

val spec__service__git :
  ?branch:string prop ->
  ?repo_clone_url:string prop ->
  unit ->
  spec__service__git

type spec__service__github

val spec__service__github :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__service__github

type spec__service__gitlab

val spec__service__gitlab :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__service__gitlab

type spec__service__health_check

val spec__service__health_check :
  ?failure_threshold:float prop ->
  ?http_path:string prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?port:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  unit ->
  spec__service__health_check

type spec__service__image__deploy_on_push

val spec__service__image__deploy_on_push :
  ?enabled:bool prop -> unit -> spec__service__image__deploy_on_push

type spec__service__image

val spec__service__image :
  ?registry:string prop ->
  ?registry_credentials:string prop ->
  ?tag:string prop ->
  ?deploy_on_push:spec__service__image__deploy_on_push list ->
  registry_type:string prop ->
  repository:string prop ->
  unit ->
  spec__service__image

type spec__service__log_destination__datadog

val spec__service__log_destination__datadog :
  ?endpoint:string prop ->
  api_key:string prop ->
  unit ->
  spec__service__log_destination__datadog

type spec__service__log_destination__logtail

val spec__service__log_destination__logtail :
  token:string prop ->
  unit ->
  spec__service__log_destination__logtail

type spec__service__log_destination__papertrail

val spec__service__log_destination__papertrail :
  endpoint:string prop ->
  unit ->
  spec__service__log_destination__papertrail

type spec__service__log_destination

val spec__service__log_destination :
  ?datadog:spec__service__log_destination__datadog list ->
  ?logtail:spec__service__log_destination__logtail list ->
  ?papertrail:spec__service__log_destination__papertrail list ->
  name:string prop ->
  unit ->
  spec__service__log_destination

type spec__service__routes

val spec__service__routes :
  ?path:string prop ->
  ?preserve_path_prefix:bool prop ->
  unit ->
  spec__service__routes

type spec__service

val spec__service :
  ?build_command:string prop ->
  ?dockerfile_path:string prop ->
  ?environment_slug:string prop ->
  ?http_port:float prop ->
  ?instance_count:float prop ->
  ?instance_size_slug:string prop ->
  ?internal_ports:float prop list ->
  ?run_command:string prop ->
  ?source_dir:string prop ->
  ?alert:spec__service__alert list ->
  ?cors:spec__service__cors list ->
  ?git:spec__service__git list ->
  ?github:spec__service__github list ->
  ?gitlab:spec__service__gitlab list ->
  ?health_check:spec__service__health_check list ->
  ?image:spec__service__image list ->
  ?log_destination:spec__service__log_destination list ->
  ?routes:spec__service__routes list ->
  name:string prop ->
  env:spec__service__env list ->
  unit ->
  spec__service

type spec__static_site__cors__allow_origins

val spec__static_site__cors__allow_origins :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  unit ->
  spec__static_site__cors__allow_origins

type spec__static_site__cors

val spec__static_site__cors :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:string prop ->
  ?allow_origins:spec__static_site__cors__allow_origins list ->
  unit ->
  spec__static_site__cors

type spec__static_site__env

val spec__static_site__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__static_site__env

type spec__static_site__git

val spec__static_site__git :
  ?branch:string prop ->
  ?repo_clone_url:string prop ->
  unit ->
  spec__static_site__git

type spec__static_site__github

val spec__static_site__github :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__static_site__github

type spec__static_site__gitlab

val spec__static_site__gitlab :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__static_site__gitlab

type spec__static_site__routes

val spec__static_site__routes :
  ?path:string prop ->
  ?preserve_path_prefix:bool prop ->
  unit ->
  spec__static_site__routes

type spec__static_site

val spec__static_site :
  ?build_command:string prop ->
  ?catchall_document:string prop ->
  ?dockerfile_path:string prop ->
  ?environment_slug:string prop ->
  ?error_document:string prop ->
  ?index_document:string prop ->
  ?output_dir:string prop ->
  ?source_dir:string prop ->
  ?cors:spec__static_site__cors list ->
  ?git:spec__static_site__git list ->
  ?github:spec__static_site__github list ->
  ?gitlab:spec__static_site__gitlab list ->
  ?routes:spec__static_site__routes list ->
  name:string prop ->
  env:spec__static_site__env list ->
  unit ->
  spec__static_site

type spec__worker__alert

val spec__worker__alert :
  ?disabled:bool prop ->
  operator:string prop ->
  rule:string prop ->
  value:float prop ->
  window:string prop ->
  unit ->
  spec__worker__alert

type spec__worker__env

val spec__worker__env :
  ?key:string prop ->
  ?scope:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  spec__worker__env

type spec__worker__git

val spec__worker__git :
  ?branch:string prop ->
  ?repo_clone_url:string prop ->
  unit ->
  spec__worker__git

type spec__worker__github

val spec__worker__github :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__worker__github

type spec__worker__gitlab

val spec__worker__gitlab :
  ?branch:string prop ->
  ?deploy_on_push:bool prop ->
  ?repo:string prop ->
  unit ->
  spec__worker__gitlab

type spec__worker__image__deploy_on_push

val spec__worker__image__deploy_on_push :
  ?enabled:bool prop -> unit -> spec__worker__image__deploy_on_push

type spec__worker__image

val spec__worker__image :
  ?registry:string prop ->
  ?registry_credentials:string prop ->
  ?tag:string prop ->
  ?deploy_on_push:spec__worker__image__deploy_on_push list ->
  registry_type:string prop ->
  repository:string prop ->
  unit ->
  spec__worker__image

type spec__worker__log_destination__datadog

val spec__worker__log_destination__datadog :
  ?endpoint:string prop ->
  api_key:string prop ->
  unit ->
  spec__worker__log_destination__datadog

type spec__worker__log_destination__logtail

val spec__worker__log_destination__logtail :
  token:string prop -> unit -> spec__worker__log_destination__logtail

type spec__worker__log_destination__papertrail

val spec__worker__log_destination__papertrail :
  endpoint:string prop ->
  unit ->
  spec__worker__log_destination__papertrail

type spec__worker__log_destination

val spec__worker__log_destination :
  ?datadog:spec__worker__log_destination__datadog list ->
  ?logtail:spec__worker__log_destination__logtail list ->
  ?papertrail:spec__worker__log_destination__papertrail list ->
  name:string prop ->
  unit ->
  spec__worker__log_destination

type spec__worker

val spec__worker :
  ?build_command:string prop ->
  ?dockerfile_path:string prop ->
  ?environment_slug:string prop ->
  ?instance_count:float prop ->
  ?instance_size_slug:string prop ->
  ?run_command:string prop ->
  ?source_dir:string prop ->
  ?alert:spec__worker__alert list ->
  ?git:spec__worker__git list ->
  ?github:spec__worker__github list ->
  ?gitlab:spec__worker__gitlab list ->
  ?image:spec__worker__image list ->
  ?log_destination:spec__worker__log_destination list ->
  name:string prop ->
  env:spec__worker__env list ->
  unit ->
  spec__worker

type spec

val spec :
  ?domains:string prop list ->
  ?features:string prop list ->
  ?region:string prop ->
  ?database:spec__database list ->
  ?domain:spec__domain list ->
  ?egress:spec__egress list ->
  ?function_:spec__function list ->
  ?ingress:spec__ingress list ->
  ?job:spec__job list ->
  ?service:spec__service list ->
  ?static_site:spec__static_site list ->
  ?worker:spec__worker list ->
  name:string prop ->
  alert:spec__alert list ->
  env:spec__env list ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type digitalocean_app

val digitalocean_app :
  ?id:string prop ->
  ?project_id:string prop ->
  ?dedicated_ips:dedicated_ips list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  unit ->
  digitalocean_app

val yojson_of_digitalocean_app : digitalocean_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_deployment_id : string prop;
  created_at : string prop;
  default_ingress : string prop;
  id : string prop;
  live_url : string prop;
  project_id : string prop;
  updated_at : string prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project_id:string prop ->
  ?dedicated_ips:dedicated_ips list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project_id:string prop ->
  ?dedicated_ips:dedicated_ips list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
