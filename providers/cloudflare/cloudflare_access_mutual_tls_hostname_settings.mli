(** Provides a Cloudflare Access Mutual TLS Certificate Settings resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings

val settings :
  ?china_network:bool prop ->
  ?client_certificate_forwarding:bool prop ->
  hostname:string prop ->
  unit ->
  settings

type cloudflare_access_mutual_tls_hostname_settings

val cloudflare_access_mutual_tls_hostname_settings :
  ?account_id:string prop ->
  ?zone_id:string prop ->
  ?settings:settings list ->
  unit ->
  cloudflare_access_mutual_tls_hostname_settings

val yojson_of_cloudflare_access_mutual_tls_hostname_settings :
  cloudflare_access_mutual_tls_hostname_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?zone_id:string prop ->
  ?settings:settings list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?zone_id:string prop ->
  ?settings:settings list ->
  string ->
  t Tf_core.resource
