(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_authenticated_origin_pulls_certificate__timeouts
type cloudflare_authenticated_origin_pulls_certificate

val cloudflare_authenticated_origin_pulls_certificate :
  ?timeouts:
    cloudflare_authenticated_origin_pulls_certificate__timeouts ->
  certificate:string ->
  private_key:string ->
  type_:string ->
  zone_id:string ->
  string ->
  unit
