(** Use this data source to get the
[Origin CA root certificate](https://developers.cloudflare.com/ssl/origin-configuration/origin-ca#4-required-for-some-add-cloudflare-origin-ca-root-certificates)
for a given algorithm.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_origin_ca_root_certificate

val cloudflare_origin_ca_root_certificate :
  ?id:string prop ->
  algorithm:string prop ->
  unit ->
  cloudflare_origin_ca_root_certificate

val yojson_of_cloudflare_origin_ca_root_certificate :
  cloudflare_origin_ca_root_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  cert_pem : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  algorithm:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  algorithm:string prop ->
  string ->
  t Tf_core.resource
