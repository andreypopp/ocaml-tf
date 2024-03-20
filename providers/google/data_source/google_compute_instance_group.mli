(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type named_port = {
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}

type google_compute_instance_group

val google_compute_instance_group :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  unit ->
  google_compute_instance_group

val yojson_of_google_compute_instance_group :
  google_compute_instance_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  named_port : named_port list prop;
  network : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
