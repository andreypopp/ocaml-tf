(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
