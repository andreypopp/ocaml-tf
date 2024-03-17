(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_web_analytics_site__timeouts
type cloudflare_web_analytics_site

val cloudflare_web_analytics_site :
  ?host:string prop ->
  ?id:string prop ->
  ?zone_tag:string prop ->
  ?timeouts:cloudflare_web_analytics_site__timeouts ->
  account_id:string prop ->
  auto_install:bool prop ->
  string ->
  unit
