(** Provides a Cloudflare Access Mutual TLS Certificate resource.
Mutual TLS authentication ensures that the traffic is secure and
trusted in both directions between a client and server and can be
 used with Access to only allows requests from devices with a
 corresponding client certificate.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_access_mutual_tls_certificate

val cloudflare_access_mutual_tls_certificate :
  ?account_id:string prop ->
  ?associated_hostnames:string prop list ->
  ?certificate:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_access_mutual_tls_certificate

val yojson_of_cloudflare_access_mutual_tls_certificate :
  cloudflare_access_mutual_tls_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  associated_hostnames : string list prop;
  certificate : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?associated_hostnames:string prop list ->
  ?certificate:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?associated_hostnames:string prop list ->
  ?certificate:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
