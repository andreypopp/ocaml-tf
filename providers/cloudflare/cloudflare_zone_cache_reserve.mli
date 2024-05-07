(** Provides a Cloudflare Cache Reserve resource. Cache Reserve can
increase cache lifetimes by automatically storing all cacheable
files in Cloudflare's persistent object storage buckets.

Note: Using Cache Reserve without Tiered Cache is not recommended.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_zone_cache_reserve

val cloudflare_zone_cache_reserve :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_zone_cache_reserve

val yojson_of_cloudflare_zone_cache_reserve :
  cloudflare_zone_cache_reserve -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
