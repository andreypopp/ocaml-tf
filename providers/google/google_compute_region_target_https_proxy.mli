(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_region_target_https_proxy

val google_compute_region_target_https_proxy :
  ?certificate_manager_certificates:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  url_map:string prop ->
  unit ->
  google_compute_region_target_https_proxy

val yojson_of_google_compute_region_target_https_proxy :
  google_compute_region_target_https_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_manager_certificates : string list prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
  url_map : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_manager_certificates:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  t
