(** Provides a Cloudflare per-hostname TLS setting resource. Used to set TLS settings for hostnames under the specified zone.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?id:string prop ->
  hostname:string prop ->
  setting:string prop ->
  value:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
