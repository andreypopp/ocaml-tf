(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_web_analytics_site__timeouts
type cloudflare_web_analytics_site

type t = private {
  account_id : string prop;
  auto_install : bool prop;
  host : string prop;
  id : string prop;
  ruleset_id : string prop;
  site_tag : string prop;
  site_token : string prop;
  snippet : string prop;
  zone_tag : string prop;
}

val cloudflare_web_analytics_site :
  ?host:string prop ->
  ?id:string prop ->
  ?zone_tag:string prop ->
  ?timeouts:cloudflare_web_analytics_site__timeouts ->
  account_id:string prop ->
  auto_install:bool prop ->
  string ->
  t
