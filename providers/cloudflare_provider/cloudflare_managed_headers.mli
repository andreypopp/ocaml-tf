(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_managed_headers__managed_request_headers
type cloudflare_managed_headers__managed_response_headers
type cloudflare_managed_headers

val cloudflare_managed_headers :
  ?id:string ->
  zone_id:string ->
  managed_request_headers:
    cloudflare_managed_headers__managed_request_headers list ->
  managed_response_headers:
    cloudflare_managed_headers__managed_response_headers list ->
  string ->
  unit
