(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type named_port

val named_port :
  name:string prop -> port:float prop -> unit -> named_port

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_instance_group

val google_compute_instance_group :
  ?description:string prop ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?network:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?named_port:named_port list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_instance_group

val yojson_of_google_compute_instance_group :
  google_compute_instance_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?network:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?named_port:named_port list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?network:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?named_port:named_port list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
