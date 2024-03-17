(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_pages_project__build_config
type cloudflare_pages_project__deployment_configs__preview__placement

type cloudflare_pages_project__deployment_configs__preview__service_binding

type cloudflare_pages_project__deployment_configs__preview

type cloudflare_pages_project__deployment_configs__production__placement

type cloudflare_pages_project__deployment_configs__production__service_binding

type cloudflare_pages_project__deployment_configs__production
type cloudflare_pages_project__deployment_configs
type cloudflare_pages_project__source__config
type cloudflare_pages_project__source
type cloudflare_pages_project

type t = private {
  account_id : string prop;
  created_on : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  production_branch : string prop;
  subdomain : string prop;
}

val cloudflare_pages_project :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  production_branch:string prop ->
  build_config:cloudflare_pages_project__build_config list ->
  deployment_configs:
    cloudflare_pages_project__deployment_configs list ->
  source:cloudflare_pages_project__source list ->
  string ->
  t
