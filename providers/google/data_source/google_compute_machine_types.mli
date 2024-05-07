(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type machine_types__deprecated = {
  replacement : string prop;  (** replacement *)
  state : string prop;  (** state *)
}

type machine_types__accelerators = {
  guest_accelerator_count : float prop;
      (** guest_accelerator_count *)
  guest_accelerator_type : string prop;  (** guest_accelerator_type *)
}

type machine_types = {
  accelerators : machine_types__accelerators list;
      (** accelerators *)
  deprecated : machine_types__deprecated list;  (** deprecated *)
  description : string prop;  (** description *)
  guest_cpus : float prop;  (** guest_cpus *)
  is_shared_cpus : bool prop;  (** is_shared_cpus *)
  maximum_persistent_disks : float prop;
      (** maximum_persistent_disks *)
  maximum_persistent_disks_size_gb : float prop;
      (** maximum_persistent_disks_size_gb *)
  memory_mb : float prop;  (** memory_mb *)
  name : string prop;  (** name *)
  self_link : string prop;  (** self_link *)
}

type google_compute_machine_types

val google_compute_machine_types :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  unit ->
  google_compute_machine_types

val yojson_of_google_compute_machine_types :
  google_compute_machine_types -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  machine_types : machine_types list prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
