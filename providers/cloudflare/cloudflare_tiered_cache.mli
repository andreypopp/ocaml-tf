(** Provides a resource, that manages Cloudflare Tiered Cache settings.
This allows you to adjust topologies for your zone.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_tiered_cache

val cloudflare_tiered_cache :
  ?id:string prop ->
  cache_type:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_tiered_cache

val yojson_of_cloudflare_tiered_cache :
  cloudflare_tiered_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cache_type : string prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cache_type:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cache_type:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
