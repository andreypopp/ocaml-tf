(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_keyless_certificate

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
  unit
