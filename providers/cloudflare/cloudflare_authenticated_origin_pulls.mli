(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_authenticated_origin_pulls

val cloudflare_authenticated_origin_pulls :
  ?authenticated_origin_pulls_certificate:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_authenticated_origin_pulls

val yojson_of_cloudflare_authenticated_origin_pulls :
  cloudflare_authenticated_origin_pulls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authenticated_origin_pulls_certificate : string prop;
  enabled : bool prop;
  hostname : string prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authenticated_origin_pulls_certificate:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
