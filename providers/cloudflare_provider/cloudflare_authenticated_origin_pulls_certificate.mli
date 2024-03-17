(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_authenticated_origin_pulls_certificate__timeouts
type cloudflare_authenticated_origin_pulls_certificate

val cloudflare_authenticated_origin_pulls_certificate :
  ?id:string prop ->
  ?timeouts:
    cloudflare_authenticated_origin_pulls_certificate__timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  unit
