(** Provides a Data Localization Suite Regional Hostname. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type cloudflare_regional_hostname

val cloudflare_regional_hostname :
  ?id:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  region_key:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_regional_hostname

val yojson_of_cloudflare_regional_hostname :
  cloudflare_regional_hostname -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  region_key : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  region_key:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  region_key:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
