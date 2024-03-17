(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_authenticated_origin_pulls

val cloudflare_authenticated_origin_pulls :
  ?authenticated_origin_pulls_certificate:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  unit
