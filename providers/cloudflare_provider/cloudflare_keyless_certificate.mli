(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_keyless_certificate

type t = private {
  bundle_method : string prop;
  certificate : string prop;
  enabled : bool prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  status : string prop;
  zone_id : string prop;
}

val cloudflare_keyless_certificate :
  ?bundle_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?port:float prop ->
  certificate:string prop ->
  host:string prop ->
  zone_id:string prop ->
  string ->
  t
