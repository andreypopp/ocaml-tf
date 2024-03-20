(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_instance_serial_port

val google_compute_instance_serial_port :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  instance:string prop ->
  port:float prop ->
  unit ->
  google_compute_instance_serial_port

val yojson_of_google_compute_instance_serial_port :
  google_compute_instance_serial_port -> json

(** RESOURCE REGISTRATION *)

type t = private {
  contents : string prop;
  id : string prop;
  instance : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  instance:string prop ->
  port:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  instance:string prop ->
  port:float prop ->
  string ->
  t Tf_core.resource
