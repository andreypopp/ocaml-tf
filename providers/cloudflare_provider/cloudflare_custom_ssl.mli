(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_custom_ssl__custom_ssl_options
type cloudflare_custom_ssl__custom_ssl_priority
type cloudflare_custom_ssl

val cloudflare_custom_ssl :
  ?id:string prop ->
  zone_id:string prop ->
  custom_ssl_options:cloudflare_custom_ssl__custom_ssl_options list ->
  custom_ssl_priority:cloudflare_custom_ssl__custom_ssl_priority list ->
  string ->
  unit
