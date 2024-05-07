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

type google_compute_target_ssl_proxy

val google_compute_target_ssl_proxy :
  ?certificate_map:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_header:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  unit ->
  google_compute_target_ssl_proxy

val yojson_of_google_compute_target_ssl_proxy :
  google_compute_target_ssl_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend_service : string prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_header : string prop;
  proxy_id : float prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_map:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_header:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?certificate_map:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_header:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
