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

type google_pubsub_lite_reservation

val google_pubsub_lite_reservation :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  throughput_capacity:float prop ->
  unit ->
  google_pubsub_lite_reservation

val yojson_of_google_pubsub_lite_reservation :
  google_pubsub_lite_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  throughput_capacity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  throughput_capacity:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  throughput_capacity:float prop ->
  string ->
  t Tf_core.resource
