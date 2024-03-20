(** The [Cloudflare Managed Headers](https://developers.cloudflare.com/rules/transform/managed-transforms/)
allows you to add or remove some predefined headers to one's
requests or origin responses.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_request_headers

val managed_request_headers :
  enabled:bool prop ->
  id:string prop ->
  unit ->
  managed_request_headers

type managed_response_headers

val managed_response_headers :
  enabled:bool prop ->
  id:string prop ->
  unit ->
  managed_response_headers

type cloudflare_managed_headers

val cloudflare_managed_headers :
  ?id:string prop ->
  zone_id:string prop ->
  managed_request_headers:managed_request_headers list ->
  managed_response_headers:managed_response_headers list ->
  unit ->
  cloudflare_managed_headers

val yojson_of_cloudflare_managed_headers :
  cloudflare_managed_headers -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; zone_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  zone_id:string prop ->
  managed_request_headers:managed_request_headers list ->
  managed_response_headers:managed_response_headers list ->
  string ->
  t

val make :
  ?id:string prop ->
  zone_id:string prop ->
  managed_request_headers:managed_request_headers list ->
  managed_response_headers:managed_response_headers list ->
  string ->
  t Tf_core.resource
