(** Provides a Cloudflare per-hostname TLS setting resource, specifically for ciphers suites. Used to set ciphers suites for hostnames under the specified zone.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_hostname_tls_setting_ciphers

val cloudflare_hostname_tls_setting_ciphers :
  ?id:string prop ->
  ?ports:float prop list ->
  hostname:string prop ->
  value:string prop list ->
  zone_id:string prop ->
  unit ->
  cloudflare_hostname_tls_setting_ciphers

val yojson_of_cloudflare_hostname_tls_setting_ciphers :
  cloudflare_hostname_tls_setting_ciphers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  ports : float list prop;
  updated_at : string prop;
  value : string list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ports:float prop list ->
  hostname:string prop ->
  value:string prop list ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ports:float prop list ->
  hostname:string prop ->
  value:string prop list ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
