(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_custom_hostname_fallback_origin

val cloudflare_custom_hostname_fallback_origin :
  ?id:string prop ->
  origin:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_custom_hostname_fallback_origin

val yojson_of_cloudflare_custom_hostname_fallback_origin :
  cloudflare_custom_hostname_fallback_origin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  origin : string prop;
  status : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  origin:string prop ->
  zone_id:string prop ->
  string ->
  t
