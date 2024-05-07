(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_target_tcp_proxy

val google_compute_region_target_tcp_proxy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?proxy_header:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  unit ->
  google_compute_region_target_tcp_proxy

val yojson_of_google_compute_region_target_tcp_proxy :
  google_compute_region_target_tcp_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend_service : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_header : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?proxy_header:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?proxy_header:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
