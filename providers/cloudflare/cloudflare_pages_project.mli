(** Provides a resource which manages Cloudflare Pages projects.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type build_config

val build_config :
  ?build_caching:bool prop ->
  ?build_command:string prop ->
  ?destination_dir:string prop ->
  ?root_dir:string prop ->
  ?web_analytics_tag:string prop ->
  ?web_analytics_token:string prop ->
  unit ->
  build_config

type deployment_configs__preview__placement

val deployment_configs__preview__placement :
  ?mode:string prop -> unit -> deployment_configs__preview__placement

type deployment_configs__preview__service_binding

val deployment_configs__preview__service_binding :
  ?environment:string prop ->
  name:string prop ->
  service:string prop ->
  unit ->
  deployment_configs__preview__service_binding

type deployment_configs__preview

val deployment_configs__preview :
  ?always_use_latest_compatibility_date:bool prop ->
  ?compatibility_date:string prop ->
  ?compatibility_flags:string prop list ->
  ?d1_databases:(string * string prop) list ->
  ?durable_object_namespaces:(string * string prop) list ->
  ?environment_variables:(string * string prop) list ->
  ?fail_open:bool prop ->
  ?kv_namespaces:(string * string prop) list ->
  ?r2_buckets:(string * string prop) list ->
  ?secrets:(string * string prop) list ->
  ?usage_model:string prop ->
  ?placement:deployment_configs__preview__placement list ->
  service_binding:deployment_configs__preview__service_binding list ->
  unit ->
  deployment_configs__preview

type deployment_configs__production__placement

val deployment_configs__production__placement :
  ?mode:string prop ->
  unit ->
  deployment_configs__production__placement

type deployment_configs__production__service_binding

val deployment_configs__production__service_binding :
  ?environment:string prop ->
  name:string prop ->
  service:string prop ->
  unit ->
  deployment_configs__production__service_binding

type deployment_configs__production

val deployment_configs__production :
  ?always_use_latest_compatibility_date:bool prop ->
  ?compatibility_date:string prop ->
  ?compatibility_flags:string prop list ->
  ?d1_databases:(string * string prop) list ->
  ?durable_object_namespaces:(string * string prop) list ->
  ?environment_variables:(string * string prop) list ->
  ?fail_open:bool prop ->
  ?kv_namespaces:(string * string prop) list ->
  ?r2_buckets:(string * string prop) list ->
  ?secrets:(string * string prop) list ->
  ?usage_model:string prop ->
  ?placement:deployment_configs__production__placement list ->
  service_binding:
    deployment_configs__production__service_binding list ->
  unit ->
  deployment_configs__production

type deployment_configs

val deployment_configs :
  ?preview:deployment_configs__preview list ->
  ?production:deployment_configs__production list ->
  unit ->
  deployment_configs

type source__config

val source__config :
  ?deployments_enabled:bool prop ->
  ?owner:string prop ->
  ?pr_comments_enabled:bool prop ->
  ?preview_branch_excludes:string prop list ->
  ?preview_branch_includes:string prop list ->
  ?preview_deployment_setting:string prop ->
  ?production_deployment_enabled:bool prop ->
  ?repo_name:string prop ->
  production_branch:string prop ->
  unit ->
  source__config

type source

val source :
  ?type_:string prop -> ?config:source__config list -> unit -> source

type cloudflare_pages_project

val cloudflare_pages_project :
  ?id:string prop ->
  ?build_config:build_config list ->
  ?deployment_configs:deployment_configs list ->
  ?source:source list ->
  account_id:string prop ->
  name:string prop ->
  production_branch:string prop ->
  unit ->
  cloudflare_pages_project

val yojson_of_cloudflare_pages_project :
  cloudflare_pages_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  created_on : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  production_branch : string prop;
  subdomain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?build_config:build_config list ->
  ?deployment_configs:deployment_configs list ->
  ?source:source list ->
  account_id:string prop ->
  name:string prop ->
  production_branch:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?build_config:build_config list ->
  ?deployment_configs:deployment_configs list ->
  ?source:source list ->
  account_id:string prop ->
  name:string prop ->
  production_branch:string prop ->
  string ->
  t Tf_core.resource
