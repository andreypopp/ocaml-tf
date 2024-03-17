(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_regional_tiered_cache

type t = private {
  id : string prop;
  value : string prop;
  zone_id : string prop;
}

val cloudflare_regional_tiered_cache :
  ?id:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t
