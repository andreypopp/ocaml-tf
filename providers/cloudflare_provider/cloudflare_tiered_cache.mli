(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_tiered_cache

type t = private {
  cache_type : string prop;
  id : string prop;
  zone_id : string prop;
}

val cloudflare_tiered_cache :
  ?id:string prop ->
  cache_type:string prop ->
  zone_id:string prop ->
  string ->
  t
