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

type google_compute_address

val google_compute_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?ipv6_endpoint_type:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_address

val yojson_of_google_compute_address : google_compute_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_version : string prop;
  ipv6_endpoint_type : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?ipv6_endpoint_type:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?ipv6_endpoint_type:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
