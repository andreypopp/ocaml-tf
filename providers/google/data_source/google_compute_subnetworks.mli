(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subnetworks = {
  description : string prop;  (** description *)
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  name : string prop;  (** name *)
  network : string prop;  (** network *)
  network_self_link : string prop;  (** network_self_link *)
  private_ip_google_access : bool prop;
      (** private_ip_google_access *)
  self_link : string prop;  (** self_link *)
}

type google_compute_subnetworks

val google_compute_subnetworks :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_compute_subnetworks

val yojson_of_google_compute_subnetworks :
  google_compute_subnetworks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
  subnetworks : subnetworks list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
