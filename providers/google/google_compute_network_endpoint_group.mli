(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_network_endpoint_group

val google_compute_network_endpoint_group :
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_network_endpoint_group

val yojson_of_google_compute_network_endpoint_group :
  google_compute_network_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  subnetwork : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
