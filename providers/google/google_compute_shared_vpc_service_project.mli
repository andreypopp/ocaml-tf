(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_shared_vpc_service_project

val google_compute_shared_vpc_service_project :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  host_project:string prop ->
  service_project:string prop ->
  unit ->
  google_compute_shared_vpc_service_project

val yojson_of_google_compute_shared_vpc_service_project :
  google_compute_shared_vpc_service_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  deletion_policy : string prop;
  host_project : string prop;
  id : string prop;
  service_project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  host_project:string prop ->
  service_project:string prop ->
  string ->
  t
