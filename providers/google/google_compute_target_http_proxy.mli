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

type google_compute_target_http_proxy

val google_compute_target_http_proxy :
  ?description:string prop ->
  ?http_keep_alive_timeout_sec:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  url_map:string prop ->
  unit ->
  google_compute_target_http_proxy

val yojson_of_google_compute_target_http_proxy :
  google_compute_target_http_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  http_keep_alive_timeout_sec : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_id : float prop;
  self_link : string prop;
  url_map : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?http_keep_alive_timeout_sec:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?http_keep_alive_timeout_sec:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  t Tf_core.resource
