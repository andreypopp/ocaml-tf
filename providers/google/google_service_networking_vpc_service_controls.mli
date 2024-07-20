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

type google_service_networking_vpc_service_controls

val google_service_networking_vpc_service_controls :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  network:string prop ->
  service:string prop ->
  unit ->
  google_service_networking_vpc_service_controls

val yojson_of_google_service_networking_vpc_service_controls :
  google_service_networking_vpc_service_controls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  network : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  network:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  network:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
