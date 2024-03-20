(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_regional_tiered_cache

val cloudflare_regional_tiered_cache :
  ?id:string prop ->
  value:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_regional_tiered_cache

val yojson_of_cloudflare_regional_tiered_cache :
  cloudflare_regional_tiered_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  value : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
