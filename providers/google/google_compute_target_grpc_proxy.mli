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

type google_compute_target_grpc_proxy

val google_compute_target_grpc_proxy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?url_map:string prop ->
  ?validate_for_proxyless:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_target_grpc_proxy

val yojson_of_google_compute_target_grpc_proxy :
  google_compute_target_grpc_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  self_link_with_id : string prop;
  url_map : string prop;
  validate_for_proxyless : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?url_map:string prop ->
  ?validate_for_proxyless:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?url_map:string prop ->
  ?validate_for_proxyless:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
