(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_logpull_retention

type t = private {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val cloudflare_logpull_retention :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
