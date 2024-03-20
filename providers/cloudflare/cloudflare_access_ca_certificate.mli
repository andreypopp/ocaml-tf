(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_access_ca_certificate

val cloudflare_access_ca_certificate :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  application_id:string prop ->
  unit ->
  cloudflare_access_ca_certificate

val yojson_of_cloudflare_access_ca_certificate :
  cloudflare_access_ca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  application_id : string prop;
  aud : string prop;
  id : string prop;
  public_key : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
