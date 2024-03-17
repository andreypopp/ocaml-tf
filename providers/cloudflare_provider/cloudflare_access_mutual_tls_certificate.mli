(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_mutual_tls_certificate

type t = private {
  account_id : string prop;
  associated_hostnames : string list prop;
  certificate : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

val cloudflare_access_mutual_tls_certificate :
  ?account_id:string prop ->
  ?associated_hostnames:string prop list ->
  ?certificate:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t
