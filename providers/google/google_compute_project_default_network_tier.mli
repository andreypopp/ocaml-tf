(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type google_compute_project_default_network_tier

val google_compute_project_default_network_tier :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  network_tier:string prop ->
  unit ->
  google_compute_project_default_network_tier

val yojson_of_google_compute_project_default_network_tier :
  google_compute_project_default_network_tier -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  network_tier : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  network_tier:string prop ->
  string ->
  t
