(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instances__named_ports = {
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}

type instances = {
  instance : string prop;  (** instance *)
  named_ports : instances__named_ports list;  (** named_ports *)
  status : string prop;  (** status *)
}

type google_compute_region_instance_group

val google_compute_region_instance_group :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  unit ->
  google_compute_region_instance_group

val yojson_of_google_compute_region_instance_group :
  google_compute_region_instance_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instances : instances list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t Tf_core.resource
