(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_instance_group_named_port

val google_compute_instance_group_named_port :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  group:string prop ->
  name:string prop ->
  port:float prop ->
  unit ->
  google_compute_instance_group_named_port

val yojson_of_google_compute_instance_group_named_port :
  google_compute_instance_group_named_port -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  group:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  group:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t Tf_core.resource
