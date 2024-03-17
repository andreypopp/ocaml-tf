(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_custom_hostname_fallback_origin

type t = private {
  id : string prop;
  origin : string prop;
  status : string prop;
  zone_id : string prop;
}

val cloudflare_custom_hostname_fallback_origin :
  ?id:string prop ->
  origin:string prop ->
  zone_id:string prop ->
  string ->
  t
