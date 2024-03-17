(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_cache_reserve

type t = private {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val cloudflare_zone_cache_reserve :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
