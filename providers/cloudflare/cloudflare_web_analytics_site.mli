(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type cloudflare_web_analytics_site

val cloudflare_web_analytics_site :
  ?host:string prop ->
  ?id:string prop ->
  ?zone_tag:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  auto_install:bool prop ->
  unit ->
  cloudflare_web_analytics_site

val yojson_of_cloudflare_web_analytics_site :
  cloudflare_web_analytics_site -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?host:string prop ->
  ?id:string prop ->
  ?zone_tag:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  auto_install:bool prop ->
  string ->
  t

val make :
  ?host:string prop ->
  ?id:string prop ->
  ?zone_tag:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  auto_install:bool prop ->
  string ->
  t Tf_core.resource
