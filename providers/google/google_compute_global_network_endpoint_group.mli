(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_global_network_endpoint_group

val google_compute_global_network_endpoint_group :
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_endpoint_type:string prop ->
  unit ->
  google_compute_global_network_endpoint_group

val yojson_of_google_compute_global_network_endpoint_group :
  google_compute_global_network_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_endpoint_type:string prop ->
  string ->
  t
