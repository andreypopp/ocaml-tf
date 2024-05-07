(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_address

val google_compute_address :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_compute_address

val yojson_of_google_compute_address : google_compute_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  address_type : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  self_link : string prop;
  status : string prop;
  subnetwork : string prop;
  users : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
