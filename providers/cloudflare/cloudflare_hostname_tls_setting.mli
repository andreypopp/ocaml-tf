(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_hostname_tls_setting

val cloudflare_hostname_tls_setting :
  ?id:string prop ->
  hostname:string prop ->
  setting:string prop ->
  value:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_hostname_tls_setting

val yojson_of_cloudflare_hostname_tls_setting :
  cloudflare_hostname_tls_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  setting : string prop;
  updated_at : string prop;
  value : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  hostname:string prop ->
  setting:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t
