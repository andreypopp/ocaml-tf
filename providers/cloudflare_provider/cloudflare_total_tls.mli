(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_total_tls

type t = private {
  certificate_authority : string prop;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val cloudflare_total_tls :
  ?certificate_authority:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
