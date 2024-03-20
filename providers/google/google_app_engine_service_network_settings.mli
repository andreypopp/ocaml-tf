(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_settings

val network_settings :
  ?ingress_traffic_allowed:string prop -> unit -> network_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_app_engine_service_network_settings

val google_app_engine_service_network_settings :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  network_settings:network_settings list ->
  unit ->
  google_app_engine_service_network_settings

val yojson_of_google_app_engine_service_network_settings :
  google_app_engine_service_network_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  network_settings:network_settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  network_settings:network_settings list ->
  string ->
  t Tf_core.resource
