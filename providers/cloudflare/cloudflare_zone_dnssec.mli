(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_zone_dnssec

val cloudflare_zone_dnssec :
  ?id:string prop ->
  ?modified_on:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_zone_dnssec

val yojson_of_cloudflare_zone_dnssec : cloudflare_zone_dnssec -> json

(** RESOURCE REGISTRATION *)

type t = private {
  algorithm : string prop;
  digest : string prop;
  digest_algorithm : string prop;
  digest_type : string prop;
  ds : string prop;
  flags : float prop;
  id : string prop;
  key_tag : float prop;
  key_type : string prop;
  modified_on : string prop;
  public_key : string prop;
  status : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?modified_on:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?modified_on:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
