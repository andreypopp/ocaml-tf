(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_service_networking_connection

val google_service_networking_connection :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  network:string prop ->
  reserved_peering_ranges:string prop list ->
  service:string prop ->
  unit ->
  google_service_networking_connection

val yojson_of_google_service_networking_connection :
  google_service_networking_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  deletion_policy : string prop;
  id : string prop;
  network : string prop;
  peering : string prop;
  reserved_peering_ranges : string list prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  network:string prop ->
  reserved_peering_ranges:string prop list ->
  service:string prop ->
  string ->
  t
