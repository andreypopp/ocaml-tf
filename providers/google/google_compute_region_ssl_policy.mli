(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_region_ssl_policy

val google_compute_region_ssl_policy :
  ?custom_features:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?profile:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  unit ->
  google_compute_region_ssl_policy

val yojson_of_google_compute_region_ssl_policy :
  google_compute_region_ssl_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  custom_features : string list prop;
  description : string prop;
  enabled_features : string list prop;
  fingerprint : string prop;
  id : string prop;
  min_tls_version : string prop;
  name : string prop;
  profile : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_features:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?profile:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?custom_features:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?profile:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
