(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_managed_headers__managed_request_headers
type cloudflare_managed_headers__managed_response_headers
type cloudflare_managed_headers
type t = private { id : string prop; zone_id : string prop }

val cloudflare_managed_headers :
  ?id:string prop ->
  zone_id:string prop ->
  managed_request_headers:
    cloudflare_managed_headers__managed_request_headers list ->
  managed_response_headers:
    cloudflare_managed_headers__managed_response_headers list ->
  string ->
  t
